;; atom-to-function

(defun atom-to-function (x)
  (cond ((equal x '+) '+)
	((equal x '*) '*)
        (t (funcall 'expt))))

;; It's a option 


