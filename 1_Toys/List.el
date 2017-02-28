(defun list? (x)
  (listp x))

(listp '(a b c)) ; t
(listp 'a)       ; nil
