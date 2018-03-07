# Theory-of-Algorithms
> by - [Weichen Wang](https://w326004741.github.io/)


## Question:
4.Write a function sublsum in Racket that takes a list (of integers) as input and re- turns a list of sublists of it that sum to zero. For this problem, you can use the combinations built-in function. Note the order of the sublists and their elements doesn’t matter. For example:
```Racket
> (sublsum (list 1 2 3 4 -5))
   '((2 3 -5) (-5 1 4))
> (sublsum (list 1 2 3 4 5))
   '()
```

## Solution Idea:
```
1. calculate the sum of the element in the list is 0（计算list内元素和为0）
2. using combinations get powersets of list (用combiniations 实现 list的powersets幂集)
3. filtered out the sum of the element of the sub-list is 0 from powersets of the list(从powersets中过滤出子列表内元素和为0的子列表) 
```

## Solution Code:
#### Step 1
```Racket
Step 1
(define (sublsum1 l1)
    (if (null? l1)
    null
    (= (apply + l1) 0) ))
```
#### Step 2 & 3
```Racket
(define (sublsum l)
    ; Step 2 & 3
   (filter sublsum1 (cdr (combinations l))) )
```

## About combinations:

#### Idea:
Return a list of all combinations of elements in the input list (aka the powerset of lst). If size is given, limit results to combinations of size elements.

#### Examples:
```Racket
> (combinations '(1 2 3))
'(() (1) (2) (1 2) (3) (1 3) (2 3) (1 2 3))

> (combinations '(1 2 3) 2)
'((1 2) (1 3) (2 3))
````

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

## Question Output:
```Racket
> (sublsum (list 1 2 3 4 -5))
'((2 3 -5) (1 4 -5))

> (sublsum (list 1 2 3 4 5))
'()

> (sublsum (list 1 2 -3 4 5))
'((1 2 -3))
```
## References:
- [Racket docs - combinations](https://docs.racket-lang.org/reference/pairs.html?q=combinations#%28def._%28%28lib._racket%2Flist..rkt%29._combinations%29%29)

- [sum items in list racket - apply](https://stackoverflow.com/questions/41512010/sum-items-in-list-racket)

- [Racket docs - filter](https://docs.racket-lang.org/reference/pairs.html#%28def._%28%28lib._racket%2Fprivate%2Flist..rkt%29._filter%29%29)
