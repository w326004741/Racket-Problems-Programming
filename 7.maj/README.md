# Theory-of-Algorithms
> by - [Weichen Wang](https://w326004741.github.io/)


## What is Maj Function:
For this question, have 3 equal length lists(x, y, z) and containing only 0's and 1's. Compare each elements in each same position in each list, then output a list containing the majority of element for each position in each list.

## Examples
```
x => (0 0 0 0 1 1 1 1)
y => (0 0 1 1 0 0 1 1)
z => (0 1 0 1 0 1 0 1)
----------------------------
r => (0 0 0 1 0 1 1 1)  ---> result
```

***

## Question:
7. Write a function maj in Racket that takes three lists x, y and z of equal length and
containing only 0’s and 1’s. It should return a list containing a 1 where two or more
of x, y and z contain 1’s, and 0 otherwise. For example:
```Racket
> (maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
'(0 0 0 1 0 1 1 1)
```

## Solution Idea:
```
1. For this question, we have 3 equal length lists(x, y, z) and containing only 0's and 1's.
2. We need compare each elements in each same position in each list. (x <-> y) & (x <-> z)
3. And output a list containing the majority of element for each position in each list.
```
## Solution Code:
#### Step 1
```Racket
; compare elements of x and y
(define (maj x y z)
    (if (null? x)
    '()
    (if (= (car x)(car y)) 
    ; Cons: Returns a newly allocated pair whose first element is a and second element is d.
    (cons (car x) (maj (cdr x)(cdr y)(cdr z)))
```

#### Step 2
```Racket
(define (maj x y z)
    (if (null? x)
    '()
    (if (= (car x)(car y)) 
    ; Cons: Returns a newly allocated pair whose first element is a and second element is d.
    (cons (car x) (maj (cdr x)(cdr y)(cdr z)))
    ; if (car x) ≠ (car y),then compare element of x and z
    (if (= (car x) (car z))
    (cons (car x) (maj (cdr x)(cdr y)(cdr z)))
    (cons (car z) (maj (cdr x)(cdr y)(cdr z)))
    )
    )))
```

## Question Output:
```Racket
> (maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
    '(0 0 0 1 0 1 1 1)
```

## References:
- [Cons - Wiki](https://en.wikipedia.org/wiki/Cons)
- [Cons - Racket](https://docs.racket-lang.org/reference/pairs.html?q=cons#%28def._%28%28quote._~23~25kernel%29._cons%29%29)