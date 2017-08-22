

(defun multirember&co (a lat col)
  (cond ((null lat) (funcall col '() '()))
	((eq (car lat) a) (multirember&co a
					  (cdr lat)
					  (lambda (newlat seen)
					    (funcall col newlat
						     (cons (car lat) seen)))))
	(t (multirember&co a
			   (cdr lat)
			   (lambda (newlat seen)
			     (funcall col (cons (car lat) (newlat) (seen))))))))

(defun a-friend (x y)
  (null y))

(defun last-friend (x y)
  (length x))

(multirember&co 'a '(a b c d e) 'a-friend)

(multirember&co 'a '(a b c d a) 'last-friend)
						     
						     
