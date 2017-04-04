;; Eqset function

;; Show if two lats are equals

(defun eqset (a b)
  (and (subset a b)
       (subset b a)))


(eqset '(a b c) '(a b c)) ; t
(eqset '(a c e) '(m n p)) ; nil
