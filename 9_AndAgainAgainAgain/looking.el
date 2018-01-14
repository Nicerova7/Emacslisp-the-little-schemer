;; looking

(defun looking (a lat)
  (keep-looking a (pick 1 lat) lat))


(defun keep-looking (a sorn lat)
  (cond ((numberp sorn) (keep-looking a (pick sorn lat) lat))
	(t (eq sorn a))))

(defun pick (n lat)
	 (cond ((zerop (- n 1)) (car lat))
	       (t (pick (- n 1) (cdr lat)))))
