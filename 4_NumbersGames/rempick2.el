;; Rempick 2.0

;; Rempick with one? function

(defun rempick (n lat)
  (cond ((one? n) (cdr lat))
	(t (cons (car lat)
		 (rempick (sub1 n)
			  (cdr lat))))))
