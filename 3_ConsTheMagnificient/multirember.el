;; Multirember function

;; Rember in every sublist

(defun multirember (a lat)
      (cond ((null lat) '())
	    ((eq? (car lat) a) (multirember a (cdr lat)))
	    (t (cons (car lat) (multirember a (cdr lat))))))


(multirember 'a '(a b c a e))  ; ( b c e)

