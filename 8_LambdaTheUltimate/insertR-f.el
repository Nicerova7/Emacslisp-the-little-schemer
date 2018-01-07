;; InsertR-f

(eval
 '(defun insertR-f (test?)
    (function
     (lambda (new old l)
       (cond ((null l) '())
	     ((funcall test? (car l) old) (cons old (cons new (cdr l))))
	     (t (cons (car l)
		      (funcall (insertR-f test?) new old (cdr l))))))))
 t)


(funcall (insertR-f 'eq) 'a 'n '(a b c n)) ; (a b c n a)

(setq insertR-f-eq (insertR-f 'eq))
(funcall insertR-f-eq 'a 'n '(a b c n))    ; (a b c n a)

