;; value function

;; remember several functions in chapter six

(defun value (nexp)
(cond ((atom nexp) nexp)
      ((eq (operator nexp) '+)
        (+ (value (1-st-sub-exp nexp))
           (value (2-nd-sub-exp nexp))))
      ((eq (operator nexp) '*)
        (* (value (1-st-sub-exp nexp))
           (value (2-nd-sub-exp nexp))))
      (t (expt (value (1-st-sub-exp nexp))
               (value (2-nd-sub-exp nexp))))))


(value '(+ 4 5)) ; 9
(value '(* 2 7)) ; 14
