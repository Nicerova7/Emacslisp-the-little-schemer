;; eq?-c function

;; First all , need the function eq?-c

(eval
 '(defun eq?-c (a)
    (function
     (lambda (x)
       (eq x a))))
 t)

;; Then , a example .

;; We use setq to define a function that can  be funcalled

(setq eq?-watermelon (eq?-c 'watermelon))

;; Calling the function

(funcall eq?-watermelon 'apple)      ; nil
(funcall eq?-watermelon 'pineapple)  ; nil
(funcall eq?-watermelon 'watermelon) ; t

