;; Insert L function

;; Similar to insertR

(defun insertL (new old lat)
      (cond ((eq? old (car lat)) (cons new lat))
	    (t (cons (car lat)
		     (insertR (new
			       old
			       (cdr lat)))))))

