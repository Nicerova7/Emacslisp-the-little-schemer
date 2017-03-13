;; Subst function

;; Review the last codes and its conditions.

(defun subst (new old lat)
      (cond ((null lat) '())
	    ((eq? (car lat) old) (cons new (cdr lat)))
	    (t (cons (car lat)
		     (subst new old (cdr lat))))))


(subst 'a 'b '(a b c))
; (a a c)

(subst 'topping 'fudge '(ice cream with fudge for dessert)
; (ice cream with topping for dessert)       
	     
