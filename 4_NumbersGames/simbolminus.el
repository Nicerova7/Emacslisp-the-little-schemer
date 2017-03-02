;; Simbolminus function

;; Remember we consider only nonnegative numbers here.

(defun simbolminus
    (lambda (a b)
      (cond ((= b 0) a)
	    (t (sub1 (simbolminus a (sub1 b)))))))


(simbolminus 14 7)  ; 7
(simbolminus 12 5)  ; 7
(simbolminus 2  6)  ; -4 ... but we consider in this practice only nonnegative numbers.
