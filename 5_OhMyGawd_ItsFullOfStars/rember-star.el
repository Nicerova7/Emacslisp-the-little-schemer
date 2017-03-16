;; Rember star

;; Remember the atom? function (Chapter 1)
;; or maybe use atom.

(defun rember* (a lat)
  (cond ((null lat) '())
	((atom (car lat)) (cond ((eq a (car lat)) (rember* a (cdr lat)))
		        	(t (cons (car lat)
			         	 (rember* a (cdr lat))))))
	(t (cons (rember* a (car lat))
		 (rember* a (cdr lat))))))


(rember* 'a '((a b c) (a c d) a b c)) ; ((b c) (c d) b c)

