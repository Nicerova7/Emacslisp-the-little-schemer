;; insert-g Function

(eval
 '(defun insert-g (seq)
    (function
     (lambda (new old l)
       (cond ((null l) '())
	     ((eq (car l) old) (funcall seq new old (cdr l)))
	     (t (cons (car l)
		      (funcall (insert-g seq) new old (cdr l))))))))
 t)


(funcall (insert-g 'seqL) 'a 'b '(a c b d f b)) ; (a c a b d f b)

(setq insert-g-seqL (insert-g 'seql))           ; another form
(funcall insert-g-seqL 'a 'b '(a c b d f b))    ; (a c a b d f b)
