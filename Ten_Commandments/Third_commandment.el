;; when building a list, describe the first typical element, and then cons it onto the natural recursion

(else (cons (car (car l)) (firsts (cdr l)) ))
