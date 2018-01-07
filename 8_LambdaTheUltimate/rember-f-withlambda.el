;; Rember-f

(eval
 '(defun rember-f (test?)
    (function
     (lambda (a l)
       (cond ((null l) '())
	     ((funcall test? (car l) a) (cdr l))
	     (t (cons (car l)
		      (funcall (rember-f test?) a (cdr l))))))))
 t)

(funcall (rember-f 'eq) 'hola '(hola como estas)) ; (como estas)

(setq rember-f-eq (rember-f 'eq))                 ; another form
(funcall rember-f-eq 'hola '(hola como estas))    ; (como estas)
