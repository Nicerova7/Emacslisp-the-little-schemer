;; Length of the lat

(defun length (lat)
  (cond ((null lat) 0)
	(t (add1 (length (cdr lat))))))

(length '(a b c)) ;3

