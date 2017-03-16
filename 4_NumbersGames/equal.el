;; Is a equal to b  ( a = b)

;; Remember the diferents funcions in this code.

(defun equal (a b)
  (cond ((greaterthan a b) nil)
	((smallerthan a b) nil)
	(t t)))

(equal 3 3) ; t
(equal 7 14) ; nil

