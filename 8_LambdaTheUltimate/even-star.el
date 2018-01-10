;; It is even ?

(defun even? (n)
  (= (* (/ n 2) 2) n))

;; 4 t 
;; 5 nil  (note : wrong in 5.0)

(defun even-star (l)
  (cond ((null l) '())
	((atom (car l))
	 (cond ((even? (car l)) (cons (car l)
				      (even-star (cdr l))))
	       (t (even-star (cdr l)))))
	(t (cons (even-star (car l))
		 (even-star (cdr l))))))

