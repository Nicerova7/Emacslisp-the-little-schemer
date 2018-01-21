;; weight*

(defun weight* (pora)
  (cond ((atom pora) 1)
	(t (+ (* (weight* (first pora)) 2)
	      (weight* (second pora))))))

(weight* '((a b) (c d))) ; 9

