;; Firsts function

(defun firsts (l)
      (cond ((null l) '())
	    (t (cons (car (car l)) (firsts (cdr l))))))


(firsts '((a b c) (c d e) (f g h)))  ; (a c f)

