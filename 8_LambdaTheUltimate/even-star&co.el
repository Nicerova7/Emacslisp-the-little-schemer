;; evens-only*&co

(defun even-star&co (l col)
  (cond ((null l) (funcall col '() 1 0))
	((atom (car l))
	 (cond ((even? (car l)) (even-star&co (cdr l)
					      (lambda (newl p s)
						(funcall col (cons (car l)
								   newl)
							     (* (car l) p)
							     s))))
	       (t (even-star&co (cdr l)
				(lambda (newl p s)
				  (funcall col newl
					   p
					   (+ (car l) s)))))))
	(t (even-star&co (car l))
	                 (...))))


