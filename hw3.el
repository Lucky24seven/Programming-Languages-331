; William Lawecki
; Programming Languages C311
; February 1, 2025
; Homework 3

; is-const function

(defun is-const (list) element
 (let ((is-const t)) ; variable set to true
 (dolist (element list is-const) ; iterating list
 (if (not (equal element (car list))) ; comparing to first element of list
 (setq is-const nil))) ; setting to false if not equal
 is-const))
is-const
 ; return statment

; element-i function

(defun element-i (list index)
 (if (or (< index 0) nil ; checking for empty list
 (dotimes (i index list) ; loops to the index
 (if (nil list)) nil ; returns nil if list is empty
 (pop list) car list))))
element-i
 ; returns first element of list

; is-sorted function

(defun is-sorted (list)
 (let ((previous nil)) ; nothing before the first element
 (dolist (current list t) ; iterating list
 (if (and previous (not (<= previous current))) ; checking equality
 nil)
 (setq previous current)) ; updating previous with current element
 t))
is-sorted
 ; sorted list in ascending order returning t

; reverse function

(defun reverse (list)
 (if (nil list) nil ; base case if the list is empty.
 (append (reverse (cdr list)) (list (car list)))))
reverse
 ; reversing recursively


; testing functions

; is-const
(is-const '())
t

(is-const '(a))
t

(is-const '(1 2 3))
nil

(is-const '(5 5 5 5))
t

; element-i

(element-i '(1 2) 4)
; need to debug


; is-sorted

(is-sorted '())
t

(is-sorted '(10))
t

(is-sorted '(5 5 5))
t

(is-sorted '(4 3 2 1))
t ; should return nil

(is-sorted '(2 5 9 12 14))
t

; reverse

(reverse '())
; debug empty list

(reverse '(2))
; debug

(reverse '(1 2 3))
; debug
