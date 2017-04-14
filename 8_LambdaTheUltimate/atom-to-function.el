;; atom-to-function

(defun atom-to-function (x)
  (cond ((equal x '+) '+)
	((equal x '*) '*)
        (t 'expt)))

;; It's a option 

(funcall (atom-to-function '+) 7 14)  ; 21
(apply (atom-to-function '+) 7 '(14)) ; 21

