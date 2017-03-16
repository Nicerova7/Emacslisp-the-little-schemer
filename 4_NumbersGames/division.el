;; Division

;; Remember previous function

(defun division (a b)
  (cond ((smallerthan a b) 0)
	(t (add1 (division (- a b) b)))))

(division 10 3) ; 3
(division 14 7) ; 2

