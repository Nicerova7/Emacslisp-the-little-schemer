;; list of atoms

(defun lat?
    (lambda (l)
      (cond
       ((null (... l)) ...)
       (t ...))))

;; number
(defun number?
    (lambda (l)
      (cond
       ((zerop (... n)) ...)
       (t ...))))

;; S-expressions
(defun s-expression?
    (lambda (l)
      (cond
       ((null (... l)) ...)
       ((atom (... l)) ...)
       (t ...))))
