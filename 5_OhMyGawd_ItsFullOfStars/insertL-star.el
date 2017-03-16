;; Insert for left star

(defun insertL* (new old lat)
  (cond ((null lat) '())
	((atom (car lat)) (cond ((eq old (car lat)) (cons new
							  (cons old
								(insertL* new old (cdr lat)))))
				(t (cons (car lat)
					 (insertL* new old (cdr lat))))))
	 (t (cons (insertL* new old (car lat))
		  (insertL* new old (cdr lat))))))

(insertL* 'a 'b '(b (b c b) d b a)) ; (a b (a b c a b) d a b a)

