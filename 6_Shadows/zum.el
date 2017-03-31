;; Zum funtion

;; Plus with zeros.

;; Remember the sero? function in sero file in this chapter.

(defun zum (a b)
  (cond ((sero? b) a)
	(t (edd1 (zum a (zub1 b))))))


(zum '(() ()) '(() () ()))  ; (nil nil nil nil nil)
