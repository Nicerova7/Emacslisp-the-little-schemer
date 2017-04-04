;; Subset file

;; find if in a lat exists all words of other lat

;; Remember member funcion in the Chapter 2

(defun subset (a1 a2)
  (cond ((null a1) t)
	((member? (car a1) a2)
	 (subset (cdr a1) a2))
	(t nil)))

(subset '(a b) '(c d a b))     ; t
(subset '(n a) '(s l e a c n)) ; t
(subset '(z y) '(m n p))       ; nil

