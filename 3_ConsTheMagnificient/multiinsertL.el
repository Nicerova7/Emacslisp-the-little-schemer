;; MultiinsertL function

(defun multiinsertL (new old lat)
      (cond ((null lat) '())
	    ((eq? (car lat) old) (cons new
				       (cons old
					     (multiinsertL new old (cdr lat)))))
	    (t (cons (car lat)
		     (multiinsertL new old (cdr lat))))))


(multiinsertL 'e 'a '(a b a c))  ; (e a b e a c)




