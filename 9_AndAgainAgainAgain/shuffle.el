;; shuffle

;; remember functions (a-pair? in align.el file)


(defun shuffle (pora)
  (cond ((atom pora) pora)
	((a-pair? (first pora))
	 (shuffle (revpair pora)))
	(t (build (first pora)
		  (shuffle (second pora))))))

(shuffle '(a (b c))) ; (a (b c))
