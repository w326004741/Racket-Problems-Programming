# Theory-of-Algorithms
> by - [Weichen Wang](https://w326004741.github.io/)

## What is sod2 function:
takes three lists x, y and z of equal length and containing only 0’s and 1’s. if x + y + z = odd(The element values in the same position are added.), then return 1 into a new list. if x + y + z = even(The element values in the same position are added.), then return 0 into a new list. if x + y + z = empty, then return null or '().

## Question:
9. Write a function sod2 in Racket that takes three lists x, y and z of equal length and containing only 0’s and 1’s. It should return a list containing a 1 where the number of 1’s in a given position in x, y and z contains an odd nubmer of 1’s, and 0 otherwise. For example:
```Racket
> (sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
'(0 1 1 0 1 0 0 1)
```

## Solution Idea:
```
1. if x + y + z = odd(The element values in the same position are added.), then return 1 into a new list.
2. if x + y + z = even(The element values in the same position are added.), then return 0 into a new list
3. if x + y + z = empty, then return null or '().
```
## Solution Code:
```Racket
(define (sod2 x y z)
    (if (null? x) ;check if x is empty list, then return null or '()
    null
    (map (lambda (x y z) ; use map function to check the sum of each element of the same position in 3 lists is odd or even.
        (if (odd? (+ x y z) ) 1 0)) ; if (x+y+z) is odd, then return 1 into a new list, else return 0 into a new lis.
        x y z)
    ))
```

## About map:
#### Idea:
Applies proc to the elements of the lsts from the first elements to the last. The proc argument must accept the same number of arguments as the number of supplied lsts, and all lsts must have the same number of elements. The result is a list containing each result of proc in order.

#### Examples:
```Racket
> (map (lambda (number)
         (+ 1 number))
       '(1 2 3 4))
'(2 3 4 5)

> (map (lambda (number1 number2)
         (+ number1 number2))
       '(1 2 3 4)
       '(10 100 1000 10000))
'(11 102 1003 10004)
```

## Question Output:
```Racket
> (sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
    '(0 1 1 0 1 0 0 1)
```

## References:
- [Map - Racket](https://docs.racket-lang.org/reference/pairs.html?q=map#%28def._%28%28lib._racket%2Fprivate%2Fmap..rkt%29._map%29%29)