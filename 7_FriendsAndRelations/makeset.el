;; Makeset function

;; If it isn't a set, the makeset function converts it into a set.

;; Remember the multirember function (chapter 3).

(defun makeset (lat)
  (cond ((null lat) '())
	((cons (car lat)
	       (makeset (multirember (car lat)
				     (cdr lat)))))))
