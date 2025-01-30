; William Lawecki
; Programming Languages C311
; Jan 27, 2005
; Homework 2

; Ex. 1 Variable in Lisp

; Declaration of 3 variables, one of which containing a description:

(defvar students)
students


(defvar professors  "The number of professors teaching C311")
professors


(defvar population)
population


; Assigning numberical values to the three variables.

(setq students 55 professors 2 population 1000)
1000

students
55


professors
2

population
1000

; Invoking the expt function. Taking the value stored in student variable and 
;squaring it Should result in 3025

(expt students 2)
3025

; Experimenting with the random function.

(random students)
28

(random students)
22


(random population)
230

(random professors)
1

; Invoking the abs function.  Will return the absolute value of the variable.

(abs population)
1000

; Setting population to a negative to double check abs works correcly
; Then seeting it back to the original value.

(setq population -1000)
-1000

(abs population)
1000

(setq population 1000)
1000

; Invoking the cos function with evaluates the cosine of a variable 
; which will be given in radians. Will be using student variable.  
; The cosine of 55 radians should yield  result: .0221 rounded to 
; the 4th decimal.

(cos students)
0.022126756261955736


; Double checking with cosine of 0 radians which will result in 1.

(cos 0)
1.0

; Invoking truncate function on a variables. According to documentation,
; it will turn a floating point into an integer. 

truncate

(truncate students)
55


; Turing students into a float then running truncate again to 
; verify then returning back to the original value.

(setq students 55.0)
55.0


(truncate students)
55


(setq students 55)
55

; Invoking the help on the truncate function.

truncate

; truncate is a built-in function in `C source code'.
; (truncate ARG &optional DIVISOR)
; Truncate a floating point number to an int.
; Rounds ARG toward zero.
; With optional DIVISOR, truncate ARG/DIVISOR.


; Ex. 2 Function Definition

; A function with a single parameter called "prod-list" that returns
; the product of the elements of a list.

(defun prod-list (list)
 "Returns the product of the elements of a list"
 (if (not list)
 0 ; Empty List.
 (if (not (cdr  list)) (car list) (* (car list) (prod-list (cdr list))))))
prod-list


; A function called "is-in-list" that takes two parameter, the first 
; being a list and the second a value and returns true (t) if the 
; value is in the list and false (nil) if not.

(defun is-in-list (list value) "Returns true (t) if the value is in the list, and
false (nil) if not"
 (cond ((not list) nil)
((equal (car list) value) t)
(t (is-in-list (cdr list) value))))
is-in-list


; A function called "median" taking 3 arguments and computing the median
; of them.

(defun median (value1 value2 value3) "Returns the median of three numbers."
(cond
((and (<= value1 value2) (<= value2 value3)) value2) ; 1 < 2 < 3
((and (<= value1 value3) (<= value3 value2)) value3) ; 1 < 3 < 2
((and (>= value3 value1) (<= value1 value3)) value1) ; 3 < 1 < 3
((and (<= value2 value3) (<= value3 value1)) value3) ; 2 < 3 < 1
((and (<= value3 value1) (<= value1 value3)) value1) ; 3 < 1 < 3
(t b)))
median ; catch all for anything weird like all values equal


; Testing the functions:

(prod-list '(2 3 4))
;24

(prod-list '(2))
;2

(prod-list '())
;0

(prod-list '(1 2 0))
;0


(is-in-list '(1 2 3) 3)
;t

(is-in-list '(1 2 3) 4)
;nil


(median 5 2 4)
;4

(median 7 3 7)
;7

(median 7 7 7)
;7

(median 3 2 4)
;3

(median 1 2 3)
;2
