;; When building a value with + , always use 0 for the value of the terminating line, for adding 0 doesn't change the value of an addition.

(defun simbolsum
    (lambda (n m)
      (cond ((zerop m) n)
	    ...
	    ...)))

;; When building a value with x , always use 1 for the value of the terminating line, for multiplying by 1 doesn't change the value of a multiplication.

(defun simbolmult
    (lambda (n m)
      (cond ((one? m) n)
	    (t (+ n (simbolmult n (- m 1)))))))

;; is necessary defined one? function.


;; When building a value with cons, always consider () for the value of the terminating line.

(defun func (l)
  (cond ((null (...l)) ...)
	...
	))
      



  
