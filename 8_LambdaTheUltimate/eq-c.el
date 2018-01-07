;; eq?-c Function

(eval
 '(defun eq?-c (a)
    (function
     (lambda (x)
       (eq x a))))
 t)

(funcall (eq?-c 'salad) 'salad) ; t

(setq eq?-salad (eq?-c 'salad)) ; another form
(funcall eq?-salad 'salad)      ; t
