;; Equal dude function

;; Remember eqlist function in this chapter

(defun equal?(a1 a2)
  (cond ((and (atom a1) (atom a2))
	 (eqan a1 a2))
	((or (atom a1) (atom a2)) nil)
	(t (eqlist a1 a2))))

