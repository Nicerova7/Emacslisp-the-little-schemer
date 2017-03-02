;; Simbol sum function

;; Remember in emacs lisp the 'zero?' function is 'zerop' function.

(defun simbolsum
    (lambda (a b)
      (cond ((= b 0) a)
	    (t (add1 (simbolsum a (sub1 b)))))))


(simbolsum 2 4)  ; 6
(simbolsum 7 7)  ; 15
