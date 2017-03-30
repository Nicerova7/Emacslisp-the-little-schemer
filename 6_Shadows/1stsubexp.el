;; 1-st-sub-exp function

;; we'll take the first sub-exp

(defun 1-st-sub-exp (aexp)
  (car (cdr aexp)))

(1-st-sub-exp '(+ 1 7)) ; 1
