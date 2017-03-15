;; Product with simbolsum file

;; Remember the funcion zero? in emacs lisp is 'zerop'
;; Remember other functions in this code.

(defun simbolprod (a b)
  (cond ((zerop b) 0)
	(t (simbolsum a (simbolprod a (sub1 b))))))


(simbolprod 3 4) ; 12





