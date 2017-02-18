;; Use help functions to abastract from representations.

;; For example when calling the functions: zerop, null, cdr and cons in :

(defun funct
    (lambda (l)
      (cond ((null (... l)) (...))
	    ((... (cdr l)) (cons (...) (...))))))

	    
	    
