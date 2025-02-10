; William Lawecki
; February 9, 2025
; Programming Languages C311
; Homework 4

; is-prime
; Note: For this function we are using a limit that is the square root of our input.
; This is because if a number is divisible by something greater than it's own root
; that divisor can be factored into values smaller than the input's square.

(defun is-prime (n)
  (let ((response t) (limit (sqrt n))) ; Initilize response to true and the limit
  (cond ((< n 2) nil) ;If the number is less than 2 it's not prime 
	((= n 2) t) ; 2 is prime
	(t (dotimes (i limit response) ; Checking up to our limit
	     (if (= (% n (+ i 2)) 0) ; Remainder division of integer n
	     (setq response nil)))) ; If divisible by i + 2, it is not prime
	response))) ; Return statement
is-prime

; prev-to-last

(defun prev-to-last (list)
  (let ((previous nil) (current list)) ; initilizing positions in list
    (if (or (not list) (not (cdr list))) nil) ; List is empty or has < 2 elements
	(while (cdr current) ; Continue as long as there is more than 1 element
	  (setq previous (car current)) ; Updating list
	  (pop current)) ; Using pop function to move the position of current
     previous)) ; Return statement
prev-to-last

; print-list

(defun print-list (list)
  (dolist (element list) ; Iterating over each element in the list
    (princ element) ; Printing the element
    (princ " "))) ; Adding a space between each element in list
print-list



; testing functions

(is-prime 0)
nil

(is-prime 1)
nil

(is-prime 2)
t 

(is-prime 17)
t

(is-prime 24)
nil


(prev-to-last '())
nil

(prev-to-last '(a))
nil

(prev-to-last '(12 83))
12

(prev-to-last '(a b c d e))
d


(print-list '(1 2 3 4 5))
1 2 3 4 5 nil

(print-list '(a b c d e))
a b c d e nil

(print-list '(testing))
testing nil

(print-list '())
nil

(print-list '("hello" "world"))
hello world nil
