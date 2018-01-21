;; length*

(defun length* (pora)
  (cond ((atom pora) 1)
	(t (+ (length* (first pora))
	      (length* (second pora))))))


