;; Intersect function

;; Show intersect between two lats

(defun intersect (a b)
  (cond ((null a) '())
	((member? (car a) b) (cons (car a)
		                   (intersect a b)))
	(t (intersect (cdr a) b))))

