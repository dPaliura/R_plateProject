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


LANGUAGE = "EN"


source("View.R", echo=FALSE)
source("Model.R", echo=FALSE)


set_lang(LANGUAGE)


Controller.start <- function(){
	source("Data.R", echo = FALSE)
	t_l <- temperature_left
	t_u <- temperature_up
	t_r <- temperature_right
	t_d <- temperature_down
	
	n_h <- number_of_horizontal_lines_in_web
	n_v <- number_of_vertical_lines_in_web

	d_x <- distance_between_vertical_lines
	d_y <- distance_between_horizontal_lines

	acc <- accuracy
	cat(INTRO)
	cat(NL, NL)
	cat(DATA)
	cat(TEMPERATURE_LEFT, t_l, NL)
	cat(TEMPERATURE_UP, t_u, NL)
	cat(TEMPERATURE_RIGHT, t_r, NL)
	cat(TEMPERATURE_DOWN, t_d, NL)
	cat(NL)
	cat(HORIZONTAL_LINES_NUM, n_h, NL)
	cat(VERTICAL_LINES_NUM, n_v, NL)
	cat(HORIZONTAL_DIST, d_y, NL)
	cat(VERTICAL_DIST, d_x, NL)
	cat(NL)
	cat(ACCURACY_CALC, acc, NL)
	cat(NL)

	if (!checkData(t_l, t_u, t_r, t_d, n_h, n_v, d_x, d_y, output=TRUE)) return()
	

	cat(CALCULATING)
	
	appr0 <- createZeroApprox(t_l, t_u, t_r, t_d, n_h, n_v)
	cat(NL)
	cat(INIT_APPROXIMATION)
	print(appr0)
	
	#print(solveDirichletProblemForRectabglePlate(t_l,t_u,t_r,t_d,n_h,n_v,d_x,d_y))

	cat(NL)
	cat(RESULT_CALCULATED)
	result <- simpleIterationWithAccuracy(appr0, d_x, d_y, acc)
	print(result)
	cat(NL)
	X <- NULL
	for (i in 3:n_v-2) X <- c(X, rep(i, n_h-2))
	Y <- rep(3:n_h-2, n_v-2)
	labels <- paste('(', X, ',', Y, ')', sep='')
	values <- NULL
	for(i in 1:length(X)) values <- c(values, round(result[n_h-Y[i], X[i]+1], 4))
	plot(X, Y, pch=16, col=2, lwd=4, xlim=c(0, n_v-1), ylim=c(0, n_h-1), frame.plot=TRUE, xaxt='n', yaxt='n')
	text(X, Y+0.22, labels=labels)
	text(X, Y-0.25, labels=values, col=4)

	addTemp <- function(val) paste(val, TEMPERATURE_SYMB, sep='')

	text(0.2, (n_h-1)/2, addTemp(t_l))
	text((n_v-1)/2, n_h-1, addTemp(t_u))
	text(n_v-1.2, (n_h-1)/2, addTemp(t_r))
	text((n_v-1)/2, 0, addTemp(t_d))
}