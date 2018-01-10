;; Multirember&co with multiinserLR

;; remember chapter 6 (add1)

(defun multiinsertLR&co (new oldL oldR lat col)
  (cond ((null lat) (funcall col '() 0 0))
	((eq (car lat) oldL) (multiinsertLR&co new
					        oldL
					        oldR
					        (cdr lat)
					        (lambda (newlat L R)
						 (funcall col (cons (new
         							    (cons oldL
							                  newlat))
							      (add1 L)
							      R))))))
	
	((eq (car lat) oldR) (multiinsertLR&co new
					        oldL
					        oldR
					        (cdr lat)
					        (lambda (newlat L R)
						 (funcall col (cons (oldR
         							    (cons new
							                  newlat))
							      L
							      (add1 R)))))))
	(t (multiinserLR&co new
			    oldL
			    oldR
			    lat
			    (lambda (newlat L R)
			      (funcall col (cons (car lat) newlat) L R))))))


