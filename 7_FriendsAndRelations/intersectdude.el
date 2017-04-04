;; Intersect? function

;; Show if exists at least one atom between two lats

(defun intersect? (a b)
  (cond ((null a) nil)
	(t (or (member (car a) b)
	       (intersect? (cdr a) b)))))

