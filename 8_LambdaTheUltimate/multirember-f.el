;; Multirember-f function

;; No problem

(eval
 '(defun multirember-f (test?)
    (function
     (lambda (a lat)
       (cond ((null lat) '())
	     ((funcall test? a (car lat))
	      (funcall (multirember-f test?) a (cdr lat)))
	     (t (cons (car lat)
		      (funcall (multirember-f test?) a (cdr lat))))))))
 t)

    
(funcall (multirember-f 'eq) 'a '(a b c a b c a b c)) ; (b c b c b c)


