;; Ember function
;; See some functions in chapter 1_Toys.

(defun member?
    (lambda (a lat)
      (cond ((null lat) nil)
	    (t (or (eq? (car lat) a)
		   (member? a (cdr lat)))))))

	     
