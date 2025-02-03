; William Lawecki
; Programming Languages C311
; February 1, 2025
; Homework 3

; is-const function

(defun is-const (list)
  (let ((is-const t)) ; variable set to true
    (dolist (element list is-const) ; iterating list
      (if (not (equal element (car list))) ; comparing to first element of list
	  (setq is-const nil))) ; setting to false if not equal
    is-const))
is-const

; element-i function

(defun element-i (list index)
  (cond
   ((null list) nil) ; if this list is empty, return nil
   ((= index 0) (car list)) ; if the element is the first return first element
   (t (element-i (cdr list) (- index 1))))) ; recursively call element-i to desired index
element-i


; is-sorted function

(defun is-sorted (list)
 (let ((sorted t) ; initilzing sorted to be true at start.
       (current (car list))) ; setting current to first element in the list
   (dolist (next (cdr list) sorted) ; Setting next element in list to next and using sorted
     (if (not (<= current next)) ; if current is greather than next...
	 (setq sorted nil)) ; set sorted to nil
     (setq current next)))) ; traversing list
is-sorted


; reverse function

(defun reverse (list)
  (if (not list) nil ; base case if the list is empty.
    (append (reverse (cdr list)) (list (car list))))) ; reversing recursively
reverse


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
nil

(element-i '(a b c d e) 4)
e

(element-i '(3 1 2 6) 0)
3

; is-sorted

(is-sorted '())
t

(is-sorted '(10))
t

(is-sorted '(5 5 5))
t

(is-sorted '(4 3 2 1))
nil

(is-sorted '(2 5 9 12 14))
t

; reverse

(reverse '())
nil

(reverse '(2))
(2)

(reverse '(1 2 3))
(3 2 1)
