;; Eqlistsmall function is a function eqlist simplified

;; Remember the equaldude function in this chapter (5)

(defun eqlistsmall(l1 l2)
  (cond ((and (null l1) (null l2)) t)
	((or (null l1) (null l2)) nil)
	(t (and (equaldude (car l1) (car l2))
		(eqlistsmall (cdr l1) (cdr l2))))))

