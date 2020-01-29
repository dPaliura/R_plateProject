##
#
#
#
#		Copyright (C) Paliura Daniel
#		19.12.2019 - 24.12.2019
#		All rights reserved
#
#
#
#
#
#
#
#
#
##


# This function returns initial approximation for simple iteration process.
# Initial approximation has values inside as average of temperatures at sides of plate.
#
# Parameters expected to be:
# @leftT, @rightT -- numeric finite numbers 
#	or vectors with length divisible entirely to number of rows.
#	They are temperatures at left and right sides of plate.
# @upT, @downT -- numeric finite numbers or vectors.
#	with length divisible entirely to number of columns.
#	They are temperatures at up and down sides of plate.
# @nrows -- number of rows in matrix (horizontal lines in web)
#	sides of plate are included. Value between 2 and 10000 inclusive.
# @ncols -- number of columns in matrix (vertical lines in web)
#	sides of plate are included. Value between 2 and 10000 inclusive.
#
# Note: NA is set at angles of plate, according to
# 	solution method.
# CAUTION! Function with unsuitable parameters supposed to has
#	unsuitable return
#
## TESTED
createZeroApprox <- function(leftT, upT, rightT, downT, nrow, ncol){
	average <- mean(c(leftT, upT, rightT, downT))
	zeroApprox <- matrix(average, nrow, ncol)
	zeroApprox[,1] <- leftT
	zeroApprox[1,] <- upT
	zeroApprox[,ncol] <- rightT
	zeroApprox[nrow,] <- downT
	zeroApprox[1,1] <- zeroApprox[1,ncol] <- zeroApprox[nrow,1] <- zeroApprox[nrow,ncol] <- NA
	return(zeroApprox)
}


# Applies one iteration of simple iteration process algorithm with
# substitution already calculated elements of current approximation.
# This algorith built for webs method of numeric solution Dirichlet
# problem in rectangle.
#
# Elements at borders are invariable.
# 
# Parameters expected to be:
# @prevApprox -- matrix of previous solution. Ensure correct if 
#	generated with createZeroApprox, or simpleIteration within correct
# 	parameters given. To check correctness of parameters use checkData.
# @dx -- distance between each neightbourous pair of horizontal lines 
#	of web. Must be finite number.
# @dy -- distance between each neightbourous pair of vertical lines 
#	of web. Must be finite number.
# 	
# Note: allowed to use dx=0 or dy=0 but not both of them equal to 0.
# Note: negative dx and dy are allowed and percieved with absolute
# 	values. 
# CAUTION! Function with unsuitable parameters supposed to has
#	unsuitable return
#
## TESTED
simpleIteration <- function(prevApprox, dx=1, dy=1){
	m <- nrow(prevApprox)
	n <- ncol(prevApprox)
	if (m<3 || n<3) return(prevApprox)
	dx_sq <- dx^2
	dy_sq <- dy^2
	nextApprox <- prevApprox
	for (i in 3:m-1) for (j in 3:n-1){
		T_ij <- dy_sq*(nextApprox[i-1,j]+nextApprox[i+1,j]) + dx_sq*(nextApprox[i,j-1]+nextApprox[i,j+1])
		T_ij <- 0.5*T_ij/(dx_sq+dy_sq)
		nextApprox[i,j] <- T_ij
	}
	return(nextApprox)
}


# Returns accurate (with accuracy given as @accuracy parameter) solution 
# of Diriclet problem with distance between vertical lines equal to @dx
# and distance between horizontals lines equal to @dy for initial solution
# given as @approx0.
# It uses function simpleIteration until needed accuracy reached
# If @approx0 is NA, so NA returned.
# If @approx0 has unsuitable values in inner points, then NA returned.
#
## TESTED
simpleIterationWithAccuracy <- function(approx0, dx=1, dy=1, accuracy=0.01){
	if (length(approx0)==1 && is.na(approx0)) return(NA)
	unboundedApprox0 <- cutBounds(approx0)
	if (TRUE %in% (c(Inf, -Inf, NA, NaN) %in% unboundedApprox0)) return(NA)
	prevApprox <- approx0
	for (i in 1:1e6) {
		nextApprox <- simpleIteration(prevApprox, dx, dy)
		R <- max(abs(cutBounds(prevApprox - nextApprox)))
		if (R*5 < accuracy) return(nextApprox)
		prevApprox <- nextApprox
	}
	return(nextApprox)
}





# Returns wether given parameters are suitable for previous functions.
# Parameters given as default are suitable and do not affect to checking
# all given parameters.
# Cheked parameters has same names as in functions where it required to
# be checked.
#
# Note: it's aright to check parameters before using them and check all
#	of parameters to be used.
#
## TESTED
checkData <- function(leftT=0, upT=0, rightT=0, downT=0, nrow=3, ncol=3, dx=1, dy=1, output=FALSE){
	isInteger <- function(number) return(round(number) == number)
	alert <- ifelse(test = output,
					yes = function(message, ...){cat(message, ...)},
					no = function(message, ...){})

	if (length(nrow)!=1) {
		alert(INCORRECT_NROW_LEN); 
		return(FALSE)}
	if (length(ncol)!=1) {
		alert(INCORRECT_NCOL_LEN); 
		return(FALSE)}
	if (length(dx)!=1) {
		alert(INCORRECT_DX_LEN); 
		return(FALSE)}
	if (length(dy)!=1) {
		alert(INCORRECT_DY_LEN); 
		return(FALSE)}
	if (FALSE %in% is.finite(c(leftT, upT, rightT, downT, nrow, ncol, dx, dy))){
		alert(SOME_PARAM_NOT_FINITE); 
		return(FALSE)}
	if (TRUE %in% (-273 > c(leftT, upT, rightT, downT))){
		alert(NOT_AVAILABLE_TEMPERATURE)
		return(FALSE)
	}
	if (nrow<3 || ncol<3) {
		alert(NCOL_OR_NROW_TO_LOW); 
		return(FALSE)}
	if (nrow*ncol > 1e7) {
		alert(TO_BIG_MATRIX); 
		return(FALSE)}
	if (dx==0 && dy==0) {
		alert(BOTH_DX_DY_IS_ZERO); 
		return(FALSE)}
	if (!isInteger(nrow/length(leftT))) {
		alert(NROW_NOT_MULTIPLE_TO_LEFT_T); 
		return(FALSE)}
	if (!isInteger(ncol/length(upT))) {
		alert(NCOL_NOT_MULTIPLE_TO_UP_T); 
		return(FALSE)}
	if (!isInteger(nrow/length(rightT))) {
		alert(NROW_NOT_MULTIPLE_TO_RIGHT_T); 
		return(FALSE)}
	if (!isInteger(ncol/length(downT))) {
		alert(NCOL_NOT_MULTIPLE_TO_DOWN_T); 
		return(FALSE)}

	return(TRUE)
}





# Returns solved Dirichlet problem with needed accuracy.
# All parameters same-named to be used functions and has appropriate
# requirements to fit suitability.
# If parameters unsuitable it will be returned NA and message with
# description of problem will be displayed
#
# 
# If returned solution it has next structure:
#			list:
#	key				value description
# solution 		matrix of temperature distribution	 
# iters			number of iterations used
# accuracy 		accuracy of solution (useful when can't reach needed)
# duration		duration of all calculations (seconds)
#
# if @output set as FALSE, nothing will be displayed
# Note: accuracy of solution between 1e-10 and 10
# Note: number of nodes of web no bigger then 10 millions
#
#
solveDirichletProblemForRectabglePlate <- function(leftT, upT, rightT, downT, nrow, ncol, dx, dy, accuracy=0.1, output=TRUE){
	startTime <- as.POSIXlt(Sys.time())
	alert <- ifelse(test = output,
					yes = function(message, ...){cat(message, ...)},
					no = function(message, ...){})

	if (!checkData(leftT, upT, rightT, downT, nrow, ncol, dx, dy, output=TRUE)){
		alert(CHANGE_DATA_PLEASE)
		return(NA)}

	# Cheking for suitable @accuracy 
	if (length(accuracy) != 1){
		alert(INCORRECT_ACCURACY)
		return(NA)}
	if (!is.finite(accuracy)){
		alert(INCORRECT_ACCURACY)
		return(NA)}
	if (accuracy <= 0){
		alert(NOT_POSITIVE_ACCURACY)
		return(NA)}
	if (accuracy < 1e-5){
		alert(ACCURACY_CHANGED_TO_LESS)
		accuracy <- 1e-5}
	else {
		if (accuracy > 10){
			alert(ACCURACY_CHANGED_TO_BIGGER)
			accuracy <- 10}}

	R <- NA
	m <- nrow
	n <- ncol
	approx0 <- createZeroApprox(leftT, upT, rightT, downT, m, n)
	rows_indecesToCompare <- 3:m-1
	cols_indecesToCompare <- 3:n-1
	approx <- simpleIterationWithAccuracy(approx0, dx, dy, accuracy*0.1)

	for (time in 1:1e6){
		m_halfStep <- 2*m - 1
		n_halfStep <- 2*n - 1
		rows_halfStep_indecesToCompare <- 2*rows_indecesToCompare - 1
		cols_halfStep_indecesToCompare <- 2*cols_indecesToCompare - 1
		approx0_halfStep <- createZeroApprox(leftT, upT, rightT, downT, m_halfStep, n_halfStep)
		approx_halfStep <- simpleIterationWithAccuracy(approx0_halfStep, dx, dy, accuracy/2^(m+n))

		if (length(approx_halfStep)==1 && is.na(approx_halfStep)){
			alert(CANT_REACH_NEEDED_ACCURACY)
			approx_halfStep <- approx
			rows_halfStep_indecesToCompare <- rows_indecesToCompare
			cols_halfStep_indecesToCompare <- cols_indecesToCompare
			accuracy <- R
			break()}
		
		R <- (1/3)*max(abs(
			approx[rows_indecesToCompare, cols_indecesToCompare]
			- approx_halfStep[rows_halfStep_indecesToCompare, cols_halfStep_indecesToCompare]))
		
		if (R < accuracy) break()
		else{
			m <- m_halfStep
			n <- n_halfStep
			rows_indecesToCompare <- rows_halfStep_indecesToCompare
			cols_indecesToCompare <- cols_halfStep_indecesToCompare
			approx <- approx_halfStep
		}
	}

	rows_indeces <- c(1, rows_halfStep_indecesToCompare, m_halfStep)
	cols_indeces <- c(1, cols_halfStep_indecesToCompare, n_halfStep) 
	solution <- approx_halfStep[rows_indeces, cols_indeces]
	finishTime <- as.POSIXlt(Sys.time())
	duration <- POSIXlt.timeDifference(startTime, finishTime)
	result <- list(solution, time, accuracy, duration)
	names(result) <- c("solution", "iterations", "accuracy", "duration")
	return(result)
}


# Returns wether @number is integer (natural number)
# If @number is vector, vector of booleans returned
#
## TESTED
isInteger <- function(number) {
	res <- NULL
	for (el in number){
		if (is.finite(el)) res <- c(res, round(el) == el)
		else res <- c(res, FALSE)
	}
	return(res)
}


# Returns matrix without it's bounds (first and last rows and columns deleted).
# If @matrix is horizontal or vertical vector, zero-sized matrix returned.
# Similary returned zero-sized matrix if @matrix has 2 rows or 2 columns
#
## TESTED
cutBounds <- function(matrix){
	if (!is.matrix(matrix)) return(NULL)
	m <- nrow(matrix)
	n <- ncol(matrix)
	if(m<=2 || n<=2) return(+matrix(nrow=0,ncol=0))
	return(matrix(matrix[-c(1, m),-c(1,n)], m-2, n-2))
}


# Returns difference as number of seconds between two times in range no more than year.
# @from -- time to be subtracted
# @to -- time from which will be subtracted @from
# 
# Note: this function considers leap years
# Note: @to and @from have to be POSIXlt types
#
## TESTED
POSIXlt.timeDifference <- function(from, to){
	days <- 0
	toY <- to$year
	frY <- from$year
	if (frY < toY) {
		for (Y in frY:(toY-1)){if(isInteger(Y/4)) days <- days+1}
	}
	else if(toY < frY){
		for (Y in toY:(frY-1)){if(isInteger(Y/4)) days <- days-1}
	}
	years <- to$year - from$year
	days <- days + to$yday - from$yday + years*365
	hours <- to$hour - from$hour + days*24
	minutes <- to$min - from$min + hours*60
	seconds <- to$sec - from$sec + minutes*60
	return(seconds)
}