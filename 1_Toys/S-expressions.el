;; All lists and atom are S-expression

(defun S-expression? (x)
  (or (atom? x) (list? x))


(S-expression? '(() () ())) ;t
(S-expression? 'a) ;t
  
