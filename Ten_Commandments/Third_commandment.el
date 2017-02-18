;; when building a list, describe the first typical element, and then cons it onto the natural recursion

(t (cons (car (car l)) (firsts (cdr l)) ))

;; t is else-cond in emacs lisp
