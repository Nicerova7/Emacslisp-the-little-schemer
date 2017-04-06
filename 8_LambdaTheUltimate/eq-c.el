;; eq?-c Function


(defun eq?-c (a)
  (function
   (lambda (x)
     (eq x a))))

