;; Align

(defun a-pair? (a)
  (cond ((null a) nil)
	((atom a) nil)
	((null (cdr a) nil)) ; case (a)
	((null (cdr (cdr x))) t) ; nice case ((...) (...))
	(t nil)) ; other cases

(defun align (pora)
  (cond ((atom pora) pora)
	((a-pair? (first pora))
	 (align (shift pora)))
	(t (build (first pora)
		  (align (second pora))))))

