# Theory-of-Algorithms
> by - [Weichen Wang](https://w326004741.github.io/)




## Question:
3. Write, from scratch, two functions in Racket. The first is called lcycle. It takes a list as input and returns the list cyclically shifted one place to the left. The second is called rcycle, and it shifts the list cyclically shifted one place to the right. For example:
```Racket
> (lcycle (list 1 2 3 4 5))
   '(2 3 4 5 1)
> (rcycle (list 1 2 3 4 5))
   '(5 1 2 3 4)
```


## Solution Idea:
```
1. The first is called lcycle. It takes a list as input and returns the list cyclically shifted one place to the left.    
2. The second is called rcycle, and it shifts the list cyclically shifted one place to the right.
```
## Solution Code:
#### Step 1
```Racket
(define (rev l)
    (if (null? l)
    null
    (append (rev (cdr l)) (list (car l)) 
    ))
```

#### Step 2
```Racket
(define (lcycle l)
    (append (cdr l) (list(car l)))
)
```

#### Step 3
```Racket
(define (rcycle l)
   ;(rev (append (cdr l) (list (car l))))
   (append (list(car (rev l))) (rev (cdr (rev l))))
)
```




## About reverse:
Returns a list that has the same elements as lst, but in reverse order.

#### Examples:
```Racket
> (reverse (list 1 2 3 4))
'(4 3 2 1)
```

## Question Output:
```Racket
> (lcycle (list 1 2 3 4 5))
    '(2 3 4 5 1)
> (rcycle (list 1 2 3 4 5))
    '(5 1 2 3 4)
```




## References: 

- [Reversing a list - Racket docs](https://docs.racket-lang.org/reference/pairs.html?q=reversing#%28def._%28%28lib._racket%2Fprivate%2Flist..rkt%29._reverse%29%29)

- [reversing a list - problem sheet ex](https://github.com/w326004741/Racket-Ex/blob/master/9.reversel.rkt)

