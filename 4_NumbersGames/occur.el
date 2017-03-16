;; Counts the number of times an atom a appears in a lat

;; Remember add1 function

(defun occur (a lat)
  (cond ((null lat) 0)
	(t (cond ((eq a (car lat)) (add1 (occur a (cdr lat))))
		 (t (occur a (cdr lat)))))))


(occur 'a '(a b a c a d)) ; 3

