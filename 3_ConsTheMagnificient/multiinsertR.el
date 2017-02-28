;; MultiinsertR function

;; insertR in each atom of the list

(defun multiinsertR
    (lambda (new old lat)
      (cond ((null lat) '())
	    ((eq? (car lat) old) (cons (car lat)
				       (cons new
					     (multiinsertR new
					                   old
						           (cdr lat)))))
	    (t (cons (car lat)
		     (multiinsertR new old (cdr lat)))))))


(multiinsertR 'a 'b '(b c b e))  ; (b a c b a e)

