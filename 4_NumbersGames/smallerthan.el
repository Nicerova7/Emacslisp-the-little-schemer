;; Is a smaller than b ( a < b )

;; Remember the sub1 function

(defun smallerthan (a b)
  (cond ((zerop a) t)
	((zerop b) nil)
	(t (smallerthan (sub1 a) (sub1 b)))))

(smallerthan 7 14) ; t
(smallerthan 14 7) ; nil

