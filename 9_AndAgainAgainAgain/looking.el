;; looking

(defun looking (a lat)
  (keep-looking a (pick 1 lat) lat))


(defun keep-looking (a sorn lat)
  (cond ((numberp sorn) (keep-looking a (pick sorn lat) lat))
	(t (eq sorn a))))

