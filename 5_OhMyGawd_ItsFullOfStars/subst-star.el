;; Substitution star

(defun subst* (new old lat)
  (cond ((null lat) '())
	((atom (car lat)) (cond ((eq old (car lat)) (cons new
							  (subst* new old (cdr lat))))
				(t (cons (car lat)
					 (subst* new old (cdr lat))))))
	(t (cons (subst* new old (car lat))
		 (subst* new old (cdr lat))))))


(subst* 'a 'b '(a (b b c) (d b))) ; (a (a a c) (d a))

