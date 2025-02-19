; William Lawecki
; Programming Languages 311
; February 16, 2025
; Homework 5

; Euclid's GCD Algorithm

(defun gcd (n m)
  (let ((dividend n) (divisor m) (remainder 1)) ; local variables
    (while (not (= remainder 0))
      (setq remainder (% dividend divisor)) ; calculating remainder with mod
      (setq dividend divisor) ; dividend becomes divisor
      (setq divisor remainder)) ; divisor becomes remainder
    dividend)) ; return statement
gcd


; Lambda replace function

(defun replace (L z y)
  (let ((replace-function (lambda (x) (if (equal x z) y x)))) ; replacing z with y
	(mapcar replace-function L))) ; applying lambda to each list element
replace

; print-list function

(defun print-list (list)
  (mapc (lambda (x) (princ x) (princ " ")) list)) ; printing x followed by a space
print-list

; make- multiples function  Will be using a reverse helper function

(defun make-multiples (n m)
  (let (product) ; initilizing local variables
    (dotimes (i m product)
      (push (* (1+ i) n) product)) ; making a list of sqaures iterated by 1 each time
    (reverse product))) ; using reverse helper function since list is backwards
make-multiples

; reverse helper function

(defun reverse (list)
  (if (not list) nil
    (append (reverse (cdr list)) (list (car list)))))
reverse


; is-multiple function

(defun is-multiple (list)
  (let ((result nil) ; initilizing variables
	(current (car list)))
    (dolist (next (cdr list) result)
      (if (= (% next current) 0) ; if remainder division is zero
	       (setq result t)) ; set result to true
      (setq current next))))
is-multiple

; testing functions

(gcd 12 18)
6

(gcd 33 64)
1

(gcd 100 15)
5

(replace '(3 1 5 6 3 2 3) 3 9)
(9 1 5 6 9 2 9)

(print-list '(1 2 3 4 5))
1 2 3 4 5 (1 2 3 4 5)

(apply 'print-list '((1 2 3 4 5)))
1 2 3 4 5 (1 2 3 4 5)

(funcall 'print-list '(1 2 3 4 5))
1 2 3 4 5 (1 2 3 4 5)

(make-multiples 3 4)
(3 6 9 12)

(is-multiple '(3 6 9 12))
t

(is-multiple '(2 3 5 7))
nil

(is-multiple (make-multiples 3 4))
t

