;; Is a greater than b  ( a > b)?

;; Remember sub1 function

(defun greaterthan (a b)
  (cond ((zerop a) nil)
	((zerop b) t)
	(t (greaterthan (sub1 a) (sub1 b)))))

(greaterthan 7 14) ; nil
(greaterthan 14 7) ; t

