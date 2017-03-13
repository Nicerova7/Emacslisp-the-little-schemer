;; insertR function

;; We know that lat has at least one element

(defun insertR (new old lat)
      (cond ((eq? old (car lat)) (cons old (cons new (cdr lat))))
	    (t (cons (car lat)
		     (insertR (new
			       old
			       (cdr lat)))))))


(insertR 'e 'd '(a b c d f))  ; (a b c d e f)
(insertR 'b 'a '(a c d e))    ; (a b c d e)

				
