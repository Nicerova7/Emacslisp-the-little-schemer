;; The function leftmost finds the leftmost atom in a atom in a non-empty list of S-expressions
;; that does containt the empty list.


(defun leftmost (lat)
  (cond ((null lat) '())
	((atom (car lat)) (car lat))
	(t (leftmost (car lat)))))

(leftmost '((b c d) a b c)) ; b

