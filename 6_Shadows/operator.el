;; Operator function

;; This function shows the sub-expression's operator

(defun operator (aexp)
  (car aexp))

(operator '(+ 1 7)) ; +
