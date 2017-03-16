;; Only nums in the lat

(defun all-nums (lat)
  (cond ((null lat) '())
	((numberp (car lat)) (cons (car lat) (all-nums (cdr lat))))
	(t (all-nums (cdr lat)))))

(all-nums '(1 2 a b)) ; ( 1 2)

