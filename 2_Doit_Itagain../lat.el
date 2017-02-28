;; Lat in emacs lisp
;; See some functions in the chapter 1

(defun lat?
    (lambda (l)
      (cond ((null l) t)
	    ((atom (car l)) (lat? (cdr l)))
	    (t nil))))
