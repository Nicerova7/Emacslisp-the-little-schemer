;; Occur star

;; Count the word 'a in the S-expresion

;; Remember add1 function

(defun occur* (a lat)
  (cond ((null lat) 0)
	((atom (car lat)) (cond ((eq a (car lat)) (add1 (occur* a (cdr lat))))
				(t (occur* a (cdr lat)))))
	(t (+ (occur* a (car lat)) (occur* a (cdr lat))))))


(occur* 'a '(a ((a b c) a b) a a)) ; 5

