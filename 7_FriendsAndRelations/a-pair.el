;; A-pair Function

;; Show if a S-expression has two sub s-expresions.

(defun a-pair (x)
  (cond ((null x) nil)
	((atom x) nil)
	((null (cdr x)) nil)
	((null (cdr (cdr x))) t)
	(t nil)))

(a-pair 'a)         ;nil
(a-pair '(a (b c))) ; t
