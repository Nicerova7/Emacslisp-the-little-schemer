;; Ember function
;; See some functions in chapter 1_Toys.

(defun member? (a lat)
      (cond ((null lat) nil)
	    (t (or (eq? (car lat) a)
		   (member? a (cdr lat))))))


(member? 'a '(a b c))  ; t
(member? 'c '(a b d))  ; nil


;; Also we can work with 'every pattern'....

; ...(and (listp x) (every (atom?) x))
	     
