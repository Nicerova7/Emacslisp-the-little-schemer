;; Shift function

;; We're needing some functions like...

(defun first (l)
  (car l))

(defun second (l)
  (car (cdr l)))

;; you need a cons like a show here because
;; we're going to use it to create a new list in shift function
(defun build (a b)
  (cons a (cons b '())))

;;In this way a list will be given two values without any problem

(defun shift (pair)
  (build (first (first pair))
	 (build (second (first pair))
		(second pair))))

