;; Intersectall function

(defun intersectall (l-set)
  (cond ((null (cdr l-set)) (car l-set))
	(t (intersect (car l-set)
		      (intersectall (cdr l-set))))))


((a b c) (a e f) (a n p)) ; a
