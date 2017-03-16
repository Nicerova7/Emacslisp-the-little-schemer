;; Exponen

;; 2^4 = 16

;; Remember the previous functions

(defun simbolexp (a b)
  (cond ((zerop b) 1)
	((simbolprod a (simbolexp a (sub1 b))))))

(simbolexp 2 4) ; 16
