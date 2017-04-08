;; Rember-f function

(defun rember-f (test? a l)
  (cond ((null l) '())
	((funcall test? (car l) a) (cdr l))
	(t (cons (car l)
		 (rember-f test? a (cdr l))))))

