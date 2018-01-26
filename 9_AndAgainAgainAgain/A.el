;; Ackerman function

(defun A (n m)
  (cond ((zerop n) (add1 m))
	((zerop m) (A (sub1 n) 1))
	(t (A (sub1 n)
	      (A n (sub1 m))))))

(A 1 0) ; 2
(A 1 1) ; 3
(A 2 2) ; 7
