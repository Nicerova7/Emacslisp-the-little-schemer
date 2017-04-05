;; Seconds function

;; Like firsts function

(defun seconds (a)
  (cond ((null a) '())
	(t (cons (car (cdr (car a)))
		 (seconds (cdr a))))))
