;; 2nd-sub-expression function

;; We'll take the second number in a arithmetic operation

(defun 2nd-sub-exp (aexp)
  (car (cdr (cdr aexp))))

(2nd-sub-exp '(+ 1 7)) ; 7
