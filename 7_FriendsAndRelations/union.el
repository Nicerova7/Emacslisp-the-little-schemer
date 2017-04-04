;; Union function

(defun union (a b)
  (cond ((null a) b)
	((member? (car a) b)
	 (union (cdr a) b))
	(t (cons (car a)
		 (union (cdr a) b)))))

