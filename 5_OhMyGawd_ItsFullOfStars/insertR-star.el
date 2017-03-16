;; Insert Right star

(defun insertR* (new old lat)
  (cond ((null lat) '())
	((atom (car lat)) (cond ((eq old (car lat))
				 (cons old
				       (cons new
					     (insertR* new old (cdr lat)))))
				(t (cons (car lat)
					 (insertR* new old (cdr lat))))))
	(t (cons (insertR* new old (car lat))
		 (insertR* new old (cdr lat))))))


(insertR* 'a 'b '(a (a b) (b c) b d a)) ; (a (a b a) (b a c) b a d a)

