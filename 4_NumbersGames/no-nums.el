;; No-nums in lat

;; mumberp is number?

(defun no-nums (lat)
  (cond ((null lat) '())
	((numberp (car lat)) (no-nums (cdr lat)))
	(t (cons (car lat) (no-nums (cdr lat))))))


(no-nums '(a 1 2 b)) ; (a b)
