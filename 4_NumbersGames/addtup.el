;; Plus all numbers in a tup

;; Remember use simbolsum.el file

(defun addtup (tup)
  (cond ((null tup) 0)
	(t (simbolsum (car tup) (addtup (cdr tup))))))


(addtup '(1 2 3 4))  ; 10

	  
