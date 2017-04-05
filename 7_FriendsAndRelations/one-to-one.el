;; One-to-one function

;; First use revrel in fun , then use fun?

;; Now this is equal to fullfun.

(defun one-to-one? (fun)
  (fun? (revrel fun)))
