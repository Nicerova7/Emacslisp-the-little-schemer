;; Unlike the book, eq in emacs lisp can be two numeric arguments.

(defun eq? (a b)
  (eq a b))


(eq 'a 'a)  ;t  (true)

(eq 'a 'b)  ;nil (false)

(eq '(a b) '(a b))  ; Remember the The Law of Eq...

(eq 1 1)  ;t
