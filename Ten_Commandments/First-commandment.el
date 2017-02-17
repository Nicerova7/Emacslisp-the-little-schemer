;; list of atoms

(defun lat?
    (lambda (l)
      (cond
       ((null? (... l)) ...)
       (else ...))))

;; number
(defun number?
    (lambda (l)
      (cond
       ((zero? (... n)) ...)
       (else ...))))

;; S-expressions
(defun s-expression?
    (lambda (l)
      (cond
       ((null? (... l)) ...)
       ((atom? (... l)) ...)
       (else ...))))
