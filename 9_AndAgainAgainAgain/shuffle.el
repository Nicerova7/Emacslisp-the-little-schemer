;; shuffle

;; remember functions (a-pair? in align.el file)


(defun shuffle (pora)
  (cond ((atom pora) pora)
	((a-pair? (first pora))
	 (shuffle (revpair pora)))
	(t (build (first pora)
		  (shuffle (second pora))))))

(shuffle '(a (b c))) ; (a (b c))
(shuffle '(a b))     ; (a b)
(shuffle '((a b) (c d))) ; The function shuffle isn't total
