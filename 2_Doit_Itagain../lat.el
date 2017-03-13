;; Lat in emacs lisp
;; See some functions in the chapter 1

(defun lat? (l)
      (cond ((null l) t)
	    ((atom (car l)) (lat? (cdr l)))
	    (t nil)))



(lat? '(a b c))   ; t

(lat? '((a b) c)) ; nil
