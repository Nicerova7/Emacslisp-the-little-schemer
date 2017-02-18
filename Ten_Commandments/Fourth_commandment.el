;; Always change at least one argument while recurring.
;; It must be changed to be closer to termination. The changing argument must
;; be tested in the termination condition

;; list of atoms

(defun lat? (l)
  (cond ...
	  (t (lat? (cdr l)))))

;; number

(defun func (x)
  (cond ...
	(t (func (sub1 x)))))

;; S-expressions

(defun func (x)
  (cond ...
	...
	(t (func (car (cdr x))))))

;; else in scheme is t en lisp / emacs lisp


