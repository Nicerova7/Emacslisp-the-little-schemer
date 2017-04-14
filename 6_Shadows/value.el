;; Value function

;; Remember the last functions (operator , 1st-sub-exp and 2nd-sub-exp )
;; Remember the function eq? in equaldude file in chapter 5 and chapter 4
;; expon file (simbolexp function)

(defun value (nexp)
  (cond ((atom nexp) nexp)
	((eq? (operator nexp) '+)
	 (+ (value (1st-sub-exp nexp)) (value (2nd-sub-exp nexp))))
	((eq? (operator nexp) 'x)
	 (x (value (1st-sub-exp nexp)) (value (2nd-sub-exp nexp))))
	(t (simbolexp (value (1st-sub-exp nexp))
		      (value (2nd-sub-exp nexp))))))

