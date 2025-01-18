; William Lawecki
; Programming Languages 311
; Lab 1
; 1/18/2025

; Simple Commands to add numbers, add two numbers then multiply the result,
; create a symbolic list, a concatenation of two stings, and using %d

(+ 2 3)
5

(* 2 (+ 3 5))
16

'(monday tuesday wednesday thursday friday saturday sunday)
(monday tuesday wednesday thursday friday saturday sunday)

(message (concat "hi" "lo"))
"hilo"

(message "A day has %d hours" 24)
"A day has 24 hours"

; This is a created expression to compute 35.0*(12/2.7 -4)

(* 35.0 (- (/ 12 2.7) 4))
15.555555555555532

; Here are examples of useful functions and combinations of function calls

(car '(monday tuesday wednesday thursday friday saturday sunday))
monday

(cdr '(monday tuesday wednesday thursday friday saturday sunday))
(tuesday wednesday thursday friday saturday sunday)

; Notice how car returns the first element in the symbolic list and cdr returns
; the rest of the list.  We will use these two commands to return tuesday

(car (cdr '(monday tuesday wednesday thursday friday saturday sunday)))
tuesday

; The following expression will return a debugging error.  The <= operator compares
; two values and this example we input three.  In order to correct the error we need to
; remove an integer from the expression.

(<= 1 2 3)

