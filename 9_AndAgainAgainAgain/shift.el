;; Shift function

;; We're needing some functions like...

(defun first (l)
  (car l))

(defun second (l)
  (car (cdr l)))

(defun build (a b)
  (cons a b))

(defun shift (pair)
  (build (first (first pair))
	 (build (second (first pair))
		(second pair))))

