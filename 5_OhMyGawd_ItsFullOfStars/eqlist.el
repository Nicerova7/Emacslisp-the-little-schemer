;; Eqlist function

;; Compare between two lists

;; Remember the chapter 4 (eqan function)

(defun eqlist? (l1 l2)
  (cond ((and (null l1) (null l2))
	 t)
	((or (null l1) (null l2)) nil)
	((and (atom (car l1)) (atom (car l2)))
	 (and (eqan (car l1) (car l2))
	      (eqlist? (cdr l1) (cdr l2))))
	((or (atom (car l1) (car l2))) nil)
	(t (and (eqlist? (car l1) (car l2))
		(eqlist? (cdr l1) (cdr l2))))))
