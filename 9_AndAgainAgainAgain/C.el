;; C

(defun one? (n)
	 (cond ((= 1 n) t)
	       (t nil)))

(defun C (n)
  (cond ((one? n) 1)
	(t (cond ((even? n) (C (/ n 2)))
		 (t (C (add1 (* 3 n))))))))


(A 4 3) ; For all practical purposes, there is no answer.
