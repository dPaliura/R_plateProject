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


##
#
DEFAULT_LANGUAGE = "EN"


#
# Helpfull text constants 
NL = '\n'
NL2 = '\n\n'
TEMPERATURE_SYMB = "°C"

# English locale
#
#
EN_NOT_AVAILABLE_TEMPERATURE = "Temperatures can't be less than absolute zero (-273 degrees by Celsium)\n"
EN_INCORRECT_NROW_LEN = "Number of horizontal lines (nrow) must be single number (got multiple or NULL)\n"
EN_INCORRECT_NCOL_LEN = "Number of vertical lines (ncol) must be single number (got multiple or NULL)\n"
EN_INCORRECT_DX_LEN = "Distance between vertical lines (dx) must be single number (got multiple or NULL)\n"
EN_INCORRECT_DY_LEN = "Distance between horizontal lines (dy) must be single number (got multiple or NULL)\n"
EN_SOME_PARAM_NOT_FINITE = "All data must be finite numbers or vectors (NA, NaN, Inf, -Inf are unsuitable)\n"
EN_NCOL_OR_NROW_TO_LOW = "Both of numbers of horizontal and vertical lines must be not less than 3\n"
EN_TO_BIG_MATRIX = "Number of nodes in web to big to be easely calculated\n"
EN_BOTH_DX_DY_IS_ZERO = "It is unacceptable to has zero distance between vertical and horizontal lines in couple\n"
EN_NROW_NOT_MULTIPLE_TO_LEFT_T = "Number of horizontal lines must be multiple to length of left-side temperatures vector\n"
EN_NCOL_NOT_MULTIPLE_TO_UP_T = "Number of vertical lines must be multiple to length of upper-side temperatures vector\n"
EN_NROW_NOT_MULTIPLE_TO_RIGHT_T = "Number of horizontal lines must be multiple to length of right-side temperatures vector\n"
EN_NCOL_NOT_MULTIPLE_TO_DOWN_T = "Number of vertical lines must be multiple to length of down-side temperatures vector\n"
EN_INCORRECT_ACCURACY = "Accuracy expected to be single number\n"
EN_NOT_POSITIVE_ACCURACY = "Accuracy must be positive number\n"
EN_ACCURACY_CHANGED_TO_LESS = "Accuracy given pointless small: less than 10^-5, so it increased to 10^-5\n"
EN_ACCURACY_CHANGED_TO_BIGGER = "Accuracy given more than 10, wich is typically to big for this method, so it cut to 10\n"
EN_CHANGE_DATA_PLEASE = "Incorrect data given. Change it for suitable.\n"
EN_CANT_REACH_NEEDED_ACCURACY = "Unfortunetly needed accuracy can not be reached.\n"
#
EN_INTRO = "KURSACH"
EN_DATA = "DATA:\n\n"
EN_TEMPERATURE_LEFT = "Temperature at left side t_l ="
EN_TEMPERATURE_UP = "Temperature at up side t_l ="
EN_TEMPERATURE_RIGHT = "Temperature at right side t_l ="
EN_TEMPERATURE_DOWN = "Temperature at down side t_l ="
EN_HORIZONTAL_LINES_NUM = "Number of horizontal lines in web nh ="
EN_VERTICAL_LINES_NUM = "Number of vertical lines in web nV ="
EN_HORIZONTAL_DIST = "Distance between horizontal lines dy ="
EN_VERTICAL_DIST = "Distance between vertical lines dx ="
EN_ACCURACY_CALC = "Accuracy of calculations"
EN_CALCULATING = "Calculating...\n"
EN_INIT_APPROXIMATION = "Initial approximation for method of simple iterations:\n"
EN_RESULT_CALCULATED = "Result calculated:\n"

# Russian locale
#
#
RU_NOT_AVAILABLE_TEMPERATURE = "Температура не может быть меньше абсолютного нуля (-273 градусов по Цельсию)\n"
RU_INCORRECT_NROW_LEN = "Количество горизонтальных линий (nrow) не должно быть множественным значением\n(получено множественное значение или NULL).\n"
RU_INCORRECT_NCOL_LEN = "Количество вертикальных линий (ncol) не должно быть множественным значением\n(получено множественное значение или NULL).\n"
RU_INCORRECT_DX_LEN = "Расстояние между вертикальными линиями сетки (dx) не должно быть множественным значением\n(получено множественное значение или NULL).\n"
RU_INCORRECT_DY_LEN = "Расстояние между горизонтальными линиями сетки (dy) не должно быть множественным значением\n(получено множественное значение или NULL).\n"
RU_SOME_PARAM_NOT_FINITE = "Все данные должны быть конечными числами\n(температуры на сторонах пластины могут быть векторами)\nЗначения NA, NaN, Inf, -Inf не подходят.\n"
RU_NCOL_OR_NROW_TO_LOW = "Количество горизонтальных и вертикальных линий должно быть не меньше 3.\n"
RU_TO_BIG_MATRIX = "Количество узлов сетки слишком большое для рассчетов.\n"
RU_BOTH_DX_DY_IS_ZERO = "Недопустимо, чтобы расстояние между горизонтальными и вертикальными линиями сетки были одновременно равны 0.\n"
RU_NROW_NOT_MULTIPLE_TO_LEFT_T = "Количество горизонтальных линий сетки должно быть кратным\nдлине вектора температур на левой стороне пластины.\n"
RU_NCOL_NOT_MULTIPLE_TO_UP_T = "Количество вертикальных линий сетки должно быть кратным\nдлине вектора температур на верхней стороне пластины.\n"
RU_NROW_NOT_MULTIPLE_TO_RIGHT_T = "Количество горизонтальных линий сетки должно быть кратным\nдлине вектора температур на правой стороне пластины.\n"
RU_NCOL_NOT_MULTIPLE_TO_DOWN_T = "Количество вертикальных линий сетки должно быть кратным\nдлине вектора температур на нижней стороне пластины.\n"
RU_INCORRECT_ACCURACY = "Значение точности должно быть числом (получено кратное значение или NULL).\n"
RU_NOT_POSITIVE_ACCURACY = "Значение точности должно быть позитивным числом.\n"
RU_ACCURACY_CHANGED_TO_LESS = "Значение точности задано необычайно малым: меньше 10^-5, поэтому оно было увеличено до 10^-5.\n"
RU_ACCURACY_CHANGED_TO_BIGGER = "Значение точности больше 10, что есть довольно большое значение, поэтому оно было урезано до 10.\n"
RU_CHANGE_DATA_PLEASE = "Введены некорректные данные. Исправьте их для совместимости.\n"
RU_CANT_REACH_NEEDED_ACCURACY = "К сожалению, не удалось достигнуть заданной точности.\n"
#
RU_INTRO = "КУРСАЧ ЁМАНА"
RU_DATA = "Данные:\n\n"
RU_TEMPERATURE_LEFT = "Температура на левой стороне t_l ="
RU_TEMPERATURE_UP = "Температура на верхней стороне t_u ="
RU_TEMPERATURE_RIGHT = "Температура на правой стороне t_r ="
RU_TEMPERATURE_DOWN = "Температура на нижней стороне t_d ="
RU_HORIZONTAL_LINES_NUM = "Количество горизонтальный линий сети nh ="
RU_VERTICAL_LINES_NUM = "Количество вертикальных линий сети nV ="
RU_HORIZONTAL_DIST = "Расстояние между горизонтальными линиями сети dy ="
RU_VERTICAL_DIST = "Расстояние между вертикальными линиями сети dx ="
RU_ACCURACY_CALC = "Точность вычислений"
RU_CALCULATING = "Считаем...\n"
RU_INIT_APPROXIMATION = "Начальное приближение метода простых итераций:\n"
RU_RESULT_CALCULATED = "Результат вычислений:\n"

# Ukrainian locale
#
#
UA_NOT_AVAILABLE_TEMPERATURE = "Температура не може бути меншою за абсолютний нуль (-273 градуси по Цельсію)\n"
UA_INCORRECT_NROW_LEN = "Кількість горизонтальних ліній (nrow) має бути числом (отримано множинне значення або Кількість вертикальних ліній сітки має бути кратною довжині вектора\nтемператур на верхній стороні пластини.).\n"
UA_INCORRECT_NCOL_LEN = "Кількість вертикальних ліній (ncol) має бути числом (отримано множинне значення або NULL).\n"
UA_INCORRECT_DX_LEN = "Відстань між вертикальними лініями сітки (dx) має бути числом (отримано множинне значення або NULL).\n"
UA_INCORRECT_DY_LEN = "Відстань між горизонтальними лініями сітки (dy) має бути числом (отримано множинне значення або NULL).\n"
UA_SOME_PARAM_NOT_FINITE = "Всі дані мають бути скінченними числами\n(допустимо, щоб температури на сторонах пластини були векторними значеннями). Значення NA, NaN, Inf, -Inf недопустимі.\n"
UA_NCOL_OR_NROW_TO_LOW = "Кількість горизонтальних і вертикальних ліній сітки має бути (одночасно) не меншою ніж 3.\n"
UA_TO_BIG_MATRIX = "Кількість вузлів сітки занадто велика для обчислень.\n"
UA_BOTH_DX_DY_IS_ZERO = "Відстані між горизонтальними і вертикальними лініями сітки не можуть одночано бути рівними нулю.\n"
UA_NROW_NOT_MULTIPLE_TO_LEFT_T = "Кількість горизонтальних ліній сітки має бути кратною довжині вектора\nтемператур на лівій стороні пластини.\n"
UA_NCOL_NOT_MULTIPLE_TO_UP_T = "Кількість вертикальних ліній сітки має бути кратною довжині вектора\nтемператур на верхній стороні пластини.\n"
UA_NROW_NOT_MULTIPLE_TO_RIGHT_T = "Кількість горизонтальних ліній сітки має бути кратною довжині вектора\nтемператур на правій стороні пластини.\n"
UA_NCOL_NOT_MULTIPLE_TO_DOWN_T = "Кількість вертикальних ліній сітки має бути кратною довжині вектора\nтемператур на нижній стороні пластини.\n"
UA_INCORRECT_ACCURACY = "Точність має бути єдиним числом (не множинні дані та не NULL).\n"
UA_NOT_POSITIVE_ACCURACY = "Точність має бути позитивним числом.\n"
UA_ACCURACY_CHANGED_TO_LESS = "Задана точність надмірно мала: менше ніж 10^-5, тому було взято точність 10^-5.\n"
UA_ACCURACY_CHANGED_TO_BIGGER = "Задана точність більша 10, що не має сенсу для даного методу, тому її було обрізано до 10.\n"
UA_CHANGE_DATA_PLEASE = "Введені некоректні дані. Виправте їх для валідності.\n"
UA_CANT_REACH_NEEDED_ACCURACY = "Нажаль, не вдалось досягнути необхідної точності.\n"
#
UA_INTRO = "КУРСОВА РОБОТА З ЗЯПЗ"
UA_DATA = "Дані:\n\n"
UA_TEMPERATURE_LEFT = "Температура на лівій стороні t_l ="
UA_TEMPERATURE_UP = "Температура на верхній стороні t_u ="
UA_TEMPERATURE_RIGHT = "Температура на правій стороні t_r ="
UA_TEMPERATURE_DOWN = "Температура на нижній стороні t_d ="
UA_HORIZONTAL_LINES_NUM = "Кількість горизонтальних ліній сітки nh ="
UA_VERTICAL_LINES_NUM = "Кількість вертикальних ліній сітки nV ="
UA_HORIZONTAL_DIST = "Відстань між горизонтальними лініями сітки dy ="
UA_VERTICAL_DIST = "Відстань між вертикальними лініями сітки dx ="
UA_ACCURACY_CALC = "Точність розрахунків"
UA_CALCULATING = "Проводяться розрахунки...\n"
UA_INIT_APPROXIMATION = "Початкове наближення для метода простих ітерацій:\n"
UA_RESULT_CALCULATED = "Результат розрахунків:\n"

set_lang <- function(lang = DEFAULT_LANGUAGE){
	set_EN <- function(){
		assign("INCORRECT_NROW_LEN", EN_INCORRECT_NROW_LEN, env=env)
		assign("INCORRECT_NCOL_LEN", EN_INCORRECT_NCOL_LEN, env=env)
		assign("INCORRECT_DX_LEN", EN_INCORRECT_DX_LEN, env=env)
		assign("INCORRECT_DY_LEN", EN_INCORRECT_DY_LEN, env=env)
		assign("SOME_PARAM_NOT_FINITE", EN_SOME_PARAM_NOT_FINITE, env=env)
		assign("NCOL_OR_NROW_TO_LOW", EN_NCOL_OR_NROW_TO_LOW, env=env)
		assign("TO_BIG_MATRIX", EN_TO_BIG_MATRIX, env=env)
		assign("BOTH_DX_DY_IS_ZERO", EN_BOTH_DX_DY_IS_ZERO, env=env)
		assign("NROW_NOT_MULTIPLE_TO_LEFT_T", EN_NROW_NOT_MULTIPLE_TO_LEFT_T, env=env)
		assign("NCOL_NOT_MULTIPLE_TO_UP_T", EN_NCOL_NOT_MULTIPLE_TO_UP_T, env=env)
		assign("NROW_NOT_MULTIPLE_TO_RIGHT_T", EN_NROW_NOT_MULTIPLE_TO_RIGHT_T, env=env)
		assign("NCOL_NOT_MULTIPLE_TO_DOWN_T", EN_NCOL_NOT_MULTIPLE_TO_DOWN_T, env=env)
		assign("INCORRECT_ACCURACY", EN_INCORRECT_ACCURACY, env=env)
		assign("NOT_POSITIVE_ACCURACY", EN_NOT_POSITIVE_ACCURACY, env=env)
		assign("ACCURACY_CHANGED_TO_LESS", EN_ACCURACY_CHANGED_TO_LESS, env=env)
		assign("ACCURACY_CHANGED_TO_BIGGER", EN_ACCURACY_CHANGED_TO_BIGGER, env=env)
		assign("CHANGE_DATA_PLEASE", EN_CHANGE_DATA_PLEASE, env=env)
		assign("CANT_REACH_NEEDED_ACCURACY", EN_CANT_REACH_NEEDED_ACCURACY, env=env)
		assign("INTRO", EN_INTRO, env=env)
		assign("DATA", EN_DATA, env=env)
		assign("TEMPERATURE_LEFT", EN_TEMPERATURE_LEFT, env=env)
		assign("TEMPERATURE_UP", EN_TEMPERATURE_UP, env=env)
		assign("TEMPERATURE_RIGHT", EN_TEMPERATURE_RIGHT, env=env)
		assign("TEMPERATURE_DOWN", EN_TEMPERATURE_DOWN, env=env)
		assign("VERTICAL_LINES_NUM", EN_VERTICAL_LINES_NUM, env=env)
		assign("HORIZONTAL_LINES_NUM", EN_HORIZONTAL_LINES_NUM, env=env)
		assign("HORIZONTAL_DIST", EN_HORIZONTAL_DIST, env=env)
		assign("VERTICAL_DIST", EN_VERTICAL_DIST, env=env)
		assign("ACCURACY_CALC", EN_ACCURACY_CALC, env=env)
		assign("CALCULATING", EN_CALCULATING, env=env)
		assign("INIT_APPROXIMATION", EN_INIT_APPROXIMATION, env=env)
		assign("RESULT_CALCULATED", EN_RESULT_CALCULATED, env=env)
		assign("NOT_AVAILABLE_TEMPERATURE", EN_NOT_AVAILABLE_TEMPERATURE, env=env)

		assign("VIEW_LANG", "EN", env=env)
		return(TRUE)
	}
	set_RU <- function(){
		assign("INCORRECT_NROW_LEN", RU_INCORRECT_NROW_LEN, env=env)
		assign("INCORRECT_NCOL_LEN", RU_INCORRECT_NCOL_LEN, env=env)
		assign("INCORRECT_DX_LEN", RU_INCORRECT_DX_LEN, env=env)
		assign("INCORRECT_DY_LEN", RU_INCORRECT_DY_LEN, env=env)
		assign("SOME_PARAM_NOT_FINITE", RU_SOME_PARAM_NOT_FINITE, env=env)
		assign("NCOL_OR_NROW_TO_LOW", RU_NCOL_OR_NROW_TO_LOW, env=env)
		assign("TO_BIG_MATRIX", RU_TO_BIG_MATRIX, env=env)
		assign("BOTH_DX_DY_IS_ZERO", RU_BOTH_DX_DY_IS_ZERO, env=env)
		assign("NROW_NOT_MULTIPLE_TO_LEFT_T", RU_NROW_NOT_MULTIPLE_TO_LEFT_T, env=env)
		assign("NCOL_NOT_MULTIPLE_TO_UP_T", RU_NCOL_NOT_MULTIPLE_TO_UP_T, env=env)
		assign("NROW_NOT_MULTIPLE_TO_RIGHT_T", RU_NROW_NOT_MULTIPLE_TO_RIGHT_T, env=env)
		assign("NCOL_NOT_MULTIPLE_TO_DOWN_T", RU_NCOL_NOT_MULTIPLE_TO_DOWN_T, env=env)
		assign("INCORRECT_ACCURACY", RU_INCORRECT_ACCURACY, env=env)
		assign("NOT_POSITIVE_ACCURACY", RU_NOT_POSITIVE_ACCURACY, env=env)
		assign("ACCURACY_CHANGED_TO_LESS", RU_ACCURACY_CHANGED_TO_LESS, env=env)
		assign("ACCURACY_CHANGED_TO_BIGGER", RU_ACCURACY_CHANGED_TO_BIGGER, env=env)
		assign("CHANGE_DATA_PLEASE", RU_CHANGE_DATA_PLEASE, env=env)
		assign("CANT_REACH_NEEDED_ACCURACY", RU_CANT_REACH_NEEDED_ACCURACY, env=env)
		assign("INTRO", RU_INTRO, env=env)
		assign("DATA", RU_DATA, env=env)
		assign("TEMPERATURE_LEFT", RU_TEMPERATURE_LEFT, env=env)
		assign("TEMPERATURE_UP", RU_TEMPERATURE_UP, env=env)
		assign("TEMPERATURE_RIGHT", RU_TEMPERATURE_RIGHT, env=env)
		assign("TEMPERATURE_DOWN", RU_TEMPERATURE_DOWN, env=env)
		assign("VERTICAL_LINES_NUM", RU_VERTICAL_LINES_NUM, env=env)
		assign("HORIZONTAL_LINES_NUM", RU_HORIZONTAL_LINES_NUM, env=env)
		assign("HORIZONTAL_DIST", RU_HORIZONTAL_DIST, env=env)
		assign("VERTICAL_DIST", RU_VERTICAL_DIST, env=env)
		assign("ACCURACY_CALC", RU_ACCURACY_CALC, env=env)
		assign("CALCULATING", RU_CALCULATING, env=env)
		assign("INIT_APPROXIMATION", RU_INIT_APPROXIMATION, env=env)
		assign("RESULT_CALCULATED", RU_RESULT_CALCULATED, env=env)
		assign("NOT_AVAILABLE_TEMPERATURE", RU_NOT_AVAILABLE_TEMPERATURE, env=env)
		
		assign("VIEW_LANG", "RU", env=env)
		return(TRUE)
	}
	set_UA <- function(){
		assign("INCORRECT_NROW_LEN", UA_INCORRECT_NROW_LEN, env=env)
		assign("INCORRECT_NCOL_LEN", UA_INCORRECT_NCOL_LEN, env=env)
		assign("INCORRECT_DX_LEN", UA_INCORRECT_DX_LEN, env=env)
		assign("INCORRECT_DY_LEN", UA_INCORRECT_DY_LEN, env=env)
		assign("SOME_PARAM_NOT_FINITE", UA_SOME_PARAM_NOT_FINITE, env=env)
		assign("NCOL_OR_NROW_TO_LOW", UA_NCOL_OR_NROW_TO_LOW, env=env)
		assign("TO_BIG_MATRIX", UA_TO_BIG_MATRIX, env=env)
		assign("BOTH_DX_DY_IS_ZERO", UA_BOTH_DX_DY_IS_ZERO, env=env)
		assign("NROW_NOT_MULTIPLE_TO_LEFT_T", UA_NROW_NOT_MULTIPLE_TO_LEFT_T, env=env)
		assign("NCOL_NOT_MULTIPLE_TO_UP_T", UA_NCOL_NOT_MULTIPLE_TO_UP_T, env=env)
		assign("NROW_NOT_MULTIPLE_TO_RIGHT_T", UA_NROW_NOT_MULTIPLE_TO_RIGHT_T, env=env)
		assign("NCOL_NOT_MULTIPLE_TO_DOWN_T", UA_NCOL_NOT_MULTIPLE_TO_DOWN_T, env=env)
		assign("INCORRECT_ACCURACY", UA_INCORRECT_ACCURACY, env=env)
		assign("NOT_POSITIVE_ACCURACY", UA_NOT_POSITIVE_ACCURACY, env=env)
		assign("ACCURACY_CHANGED_TO_LESS", UA_ACCURACY_CHANGED_TO_LESS, env=env)
		assign("ACCURACY_CHANGED_TO_BIGGER", UA_ACCURACY_CHANGED_TO_BIGGER, env=env)
		assign("CHANGE_DATA_PLEASE", UA_CHANGE_DATA_PLEASE, env=env)
		assign("CANT_REACH_NEEDED_ACCURACY", UA_CANT_REACH_NEEDED_ACCURACY, env=env)
		assign("INTRO", UA_INTRO, env=env)
		assign("DATA", UA_DATA, env=env)
		assign("TEMPERATURE_LEFT", UA_TEMPERATURE_LEFT, env=env)
		assign("TEMPERATURE_UP", UA_TEMPERATURE_UP, env=env)
		assign("TEMPERATURE_RIGHT", UA_TEMPERATURE_RIGHT, env=env)
		assign("TEMPERATURE_DOWN", UA_TEMPERATURE_DOWN, env=env)
		assign("VERTICAL_LINES_NUM", UA_VERTICAL_LINES_NUM, env=env)
		assign("HORIZONTAL_LINES_NUM", UA_HORIZONTAL_LINES_NUM, env=env)
		assign("HORIZONTAL_DIST", UA_HORIZONTAL_DIST, env=env)
		assign("VERTICAL_DIST", UA_VERTICAL_DIST, env=env)
		assign("ACCURACY_CALC", UA_ACCURACY_CALC, env=env)
		assign("CALCULATING", UA_CALCULATING, env=env)
		assign("INIT_APPROXIMATION", UA_INIT_APPROXIMATION, env=env)
		assign("RESULT_CALCULATED", UA_RESULT_CALCULATED, env=env)
		assign("NOT_AVAILABLE_TEMPERATURE", UA_NOT_AVAILABLE_TEMPERATURE, env=env)

		assign("VIEW_LANG", "UA", env=env)
		return(TRUE)
	}
	lang_upper <- toupper(lang)
	env <- .GlobalEnv
	
	set <- switch(lang_upper, 
		EN = set_EN(), 
		RU = set_RU(),
		UA = set_UA())
	if (is.null(set)) set_lang(DEFAULT_LANGUAGE)
}

set_lang()