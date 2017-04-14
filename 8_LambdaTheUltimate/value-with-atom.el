;; Value function...

;; Using atom-to-function function

(defun value (nexp)
(cond ((atom nexp) nexp)
      (t (funcall (atom-to-function (operator nexp))
                   (value (1-st-sub-exp nexp))
                   (value (2-nd-sub-exp nexp))))))

(value '(+ 7 14))   ; 21
(value '(expt 2 3)) ; 8

