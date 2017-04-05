;; Revrel function

;; Change position of each sub-expression

(defun revrel (x)
  (cond ((null x) '())
	(t (cons (build (car (cdr (car x)))
                        (car (car x)))
		 (revrel (cdr x))))))


(revrel '((a b) (c d) (e f)))  ;((b a) (d c) (f e))
