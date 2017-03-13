;; Rember function

;; Review 1_Toys , there is some information from 'Cons'.

(defun rember (a lat)
       (cond ((null lat) '())
	     ((eq? a (car lat)) (cdr lat))
	     (t (cons (car lat)
		      (rember  a
                               (cdr lat))))))


(rember 'a '(a b c))    ; (b c)
(rember 'a '(a a b c))  ; (a b c) , This is important to keep in mind

  
     
