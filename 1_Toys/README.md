## Fundamental Functions

> In this case : __Car__ , __cdr__ and __cons__.

### Car

The __car__ of a list is, very simply, the first item in the non-empty list.

```lisp

(car '(a b c))  ; a

```

__Car__ doesn't remove the first item from the list, it only reports waht it is.


### Cdr

The __cdr__ of a list is the rest of the list, that is, the cdr function returns
the part of the list that follows the first item.

```lisp

(cdr '(a b c))  ; ( b c )

```

Like __car__ , __cdr__, doesn't remove any elements from the list, it just
returns a report of what the second and subsequent elements are.

**__Remember The second rule__**.

### Cons

The __cons__ is used to constructs lists. It takes two argumentos ,the second
argument must be a list.

```lisp

(cons 'a '(b c))  ; (a b c)

```


### References

http://www.gnu.org/software/emacs/manual/html_node/eintr/car-_006-cdr.html#car-_0026-cdr

http://www.gnu.org/software/emacs/manual/html_node/eintr/cons.html#cons