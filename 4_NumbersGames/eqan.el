;; Eqan function

;; Remember the first chapter (eq? function)

(defun eqan(a1 a2)
  (cond ((and (numberp a1) (numberp a2))
	 (= a1 a2))
	((or (numberp a1) (numberp a2))
	 nil)
	(t (eq a1 a2))))

(eqan 7 14)  ;nil
(eqan 7 7)   ;t
(eqan 14 14) ;t
