;; Multisubst function

(defun multisubst (new old lat)
      (cond ((null lat) '())
	    ((eq? (car lat) old) (cons new
				       (multisubst new old (cdr lat))))
	    (t (cons (car lat)
		     (multisubst new old (cdr lat))))))

(multisubst 'a 'b '(b b b))  ; (a a a)



	     
