# The little schemer
### in emacs lisp
_"Thinking about computing is one of the most exciting things the human mind can do"_.

The Little Schemer is worthy successor and will prove equally popular as texbooks for Scheme courses as well as companion texts for any complete introductory course in Computer Science.


## About

Here is the [emacs lisp style guide](https://github.com/bbatsov/emacs-lisp-style-guide)

```lisp
;; good
(format "%s %d"
	    something
	    something-else)

;; bad
(format "%s %d"
something
something-else)
```

## The five Rules

We must take into account each of these laws to be clear what each function
returns, that we can resume or reuse of each output of a function and how to
redefine new functions.

### The Law of Car

> The primitive _car_ is defined only for non-empty lists.

Violating the law we will not find any answer.

### The Law of Cdr

> The primitive _cdr_ is defined only for non-empty lists. The cdr of any
> non-empty lists is __always__ another list.

So _taking into account the first law_ we can combine cdr with car.
```lisp
(car (cdr () ))

(cdr (car () ))
```

### The Law of Cons

> The primitive _cons_ takes two arguments.
> The second argument to _cons_ must be a list.
> The result is a list.

We can concatenate.

```lisp
(cons () (cons () ()) )
```

### The Law of Null?

> The primitive null? (null in emacs lisp) is defined only for lists.

For other cases we will define a function.

### The Law of Eq?

> The primitive _eq?_ takes two arguments.
> Each must be a non-numeric atom.

For other cases we will define a function.

Find book [here](https://www.amazon.com/Little-Schemer-Daniel-P-Friedman/dp/0262560992)

![My_little_Schemer](https://github.com/Nicerova7/Emacslisp-my-little-schemer/blob/master/img/mylittle.jpg)

## Reviews

"I learned more about LISP from this book than I have from any of the other LISP books I've read over the years... While other books will tell you the mechanis of LISP, they can leave you largely ninformed on the style of problem-solving for which LISP is optimized"
   	   	      --**Gregg Williams _, byte_**.
