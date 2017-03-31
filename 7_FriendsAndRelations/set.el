;; set function

;; No atom appears more than once.

;; Remember the member? function in chapter 2

(defun set? (lat)
  (cond ((null lat) t)
	((member? (car lat) (cdr lat)) nil)
	(t (set? (cdr lat)))))
