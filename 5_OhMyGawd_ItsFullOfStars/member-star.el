;; Member star

(defun member* (a lat)
  (cond ((null lat) nil)
	((atom (car lat)) (or (eq a (car lat))
			      (member* a (cdr lat))))
	(t (or (member* a (car lat))
	       (member* a (cdr lat))))))


(member* 'a '(b (b c d) ((b c a) b d))) ; t
(member* 'a '(b (b c d) ((b c n) b d))) ; nil
