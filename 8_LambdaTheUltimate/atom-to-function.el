;; atom-to-function

(defun atom-to-function (x)
  (cond ((equal x '+) (funcall '+))
	((equal x '*) (funcall '*))
        (t (funcall 'expt))))

;; It's a option 


