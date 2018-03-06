# Theory-of-Algorithms
> by - [Weichen Wang](https://w326004741.github.io/)


### Question:
5.Write a function hamming-weight in Racket that takes a list l as input and returns the number of non-zero elements in it. For example:
```Racket
> (hamming-weight (list 1 0 1 0 1 1 1 0))
    5
```

### Solution Idea:
```
1. Filtered out elements of the list whose element is non-zero. (using positive? or exact-positive-integer? - Racket Docs)
2. Calculate the number of the elements after filtered. (using apply - Racket Docs) 
```

### Solution Code:
#### Step 1
```Racket
; check the l is not empty list
(define (hamming-weight l)
    (if (null? l)
    null
```
#### Step 2
```Racket
; Filtered out elements of the list whose element is non-zero.
(filter(positive? l))
or
(filter(exact-positive-integer? l))
```

#### Step 3
```Racket
(define (hamming-weight1 l)
    (if (null? l)
    null  
    ; using apply calculate the number of the elements after filtered. 
    (apply + (filter positive? l))))
```

### About apply:
#### Examples:
```Racket
> (apply + '(1 2 3))
6
> (apply + 1 2 '(3))
6
> (apply + '())
0
```

### About positive:
#### Procedure
```Racket
(positive? x) → boolean?    
  x : real?

Return (> x 0).
```

#### Examples:
```Racket
> (positive? 10)
#t
> (positive? -10)
#f
> (positive? 0.0)
#f
```

### About filter:
#### Examples:
```Racket
> (filter positive? '(1 -2 3 4 -5))
'(1 3 4)
```

### Question Output:
```Racket
> (hamming-weight (list 1 0 1 0 1 1 1 0))
    5
> (hamming-weight1 (list 1 1 1 1 1 1 1 1))
    8
```



## References:

- [Racket docs - positive? & exact-positive-integer?](http://docs.racket-lang.org/reference/number-types.html?q=positive%3F#%28def._%28%28quote._~23~25kernel%29._positive~3f%29%29)

- [Racket docs - filter](https://docs.racket-lang.org/reference/pairs.html#%28def._%28%28lib._racket%2Fprivate%2Flist..rkt%29._filter%29%29)

- [sum items in list racket - apply](https://stackoverflow.com/questions/41512010/sum-items-in-list-racket)
