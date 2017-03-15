;; Sum two tups

;; Remember the last functions

(defun tup+ (tupa tupb)
  (cond ((and (null tupa) (null tupb)) '())
	(t (cons (simbolsum (car tupa) (car tupb))
		 (tup+ (cdr tupa) (cdr tupb))))))

(tup+ '(1 2 3) '(1 2 3)) ; (2 4 6)
