;; Subst2 emacs lisp

(defun subst2
    (lambda (new o1 o2 lat)
      (cond ((null lat) '())
	    ((or (eq? (car lat) o1)
		 (eq? (car lat) o2)) (cons new (cdr lat)))	
	    (t (cons (car lat) (subst2 new o1 o2 (cdr lat)))))))


      
	    
