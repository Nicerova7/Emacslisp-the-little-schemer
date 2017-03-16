;; Remove n-pos

;; Remember previous functions

(defun rempick (n lat)
  (cond ((zerop (sub1 n)) (cdr lat))
	(t (cons (car lat) (rempick (sub1 n) (cdr lat))))))


(rempick 3 '(a b c))     ; (a b)
(rempick 1 '(a b c d e)) ; (b c d e)

