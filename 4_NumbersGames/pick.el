;; Pick word in n position in the lat

;; Remember sub1 function

(defun pick (n lat)
  (cond ((zerop (sub1 n)) (car lat))
	(t (pick (sub1 n) (cdr lat)))))

(pick 4 '(a b c d)) ; d

