;; Fun function

;; Remember chapter 3 and set function in this chapter

(defun fun (x)
  (set? (firsts (x))))

(fun '((a b) (a d) (c d))) ;nil
(fun '((a b) (c d) (d e))) ;t
