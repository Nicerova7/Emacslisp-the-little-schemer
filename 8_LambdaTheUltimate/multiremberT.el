;; MultiremberT using eq?-watermelon (see file example.el in this chapter)

(defun multiremberT (test? lat)
  (cond ((null lat) '())
	((funcall test? (car lat)) (multiremberT test? (cdr lat)))
	(t (cons (car lat)
		 (multiremberT test? (cdr lat))))))

(multiremberT eq?-watermelon '(apple watermelon grape watermelon pineapple))
;; (apple grape pineapple)

