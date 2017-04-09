;; InsertL-f

(eval
 '(defun insertL-f (test?)
    (function
     (lambda (new old l)
       (cond ((null l) '())
	     ((funcall test? (car l) old) (cons new (cons old (cdr l))))
	     (t (cons (car l)
		      (funcall (insertL-f test?) new old (cdr l))))))))
 t)


(funcall (insertL-f 'eq) 'a 'z '(a b c z)) ; (a b c a z)

