# Theory-of-Algorithms
> by - [Weichen Wang](https://w326004741.github.io/)


## What is [Hamming Distance](https://en.wikipedia.org/wiki/Hamming_distance)
In information theory, the Hamming distance between two strings of equal length is the number of positions at which the corresponding symbols are different. In other words, it measures the minimum number of substitutions required to change one string into the other, or the minimum number of errors that could have transformed one string into the other. In a more general context, the Hamming distance is one of several string metrics for measuring the edit distance between two sequences.

## Examples
#### The Hamming distance between:
- "ka**ro**lin" and "ka**thr**in" is 3.
- "k**a**r**o**lin" and "k**e**r**st**in" is 3.
- 10**1**1**1**01 and 10**0**1**0**01 is 2.
- 2**17**3**8**96 and 2**23**3**7**96 is 3.


***

## Question:
6. Write a function hamming-distance in Racket that takes two lists and returns the number of positions in which they differ. For example:
```Racket
> (hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0))
   5
```


## Solution Idea:
```
1. check if l1,l2 list is empty 
2. equal? l1 and l2 (#t or #f), if l1 = l2,then jump the next position to be new l1 and new l2(use (cdr l1)(cdr l2))
3. got a procedure (hamming-distance (cdr l1)(cdr l2))
4. reverse the each time when (car l1) not equal to (car l2).
```

## Solution Code:
#### Step 1
```Racket
; check if l1 list is empty 
(define (hamming-distance l1 l2)
    (if (null? l1)
    0 ; not null
```

#### Step 2
```Racket
(define (hamming-distance l1 l2)
    (if (null? l1)
    0 ; not null
    ; compare (car l1) & (car l2) equal?
    (if (equal? (car l1) (car l2))
        ; if (car l1) = (car l2), then compare (cdr l1) and (cdr l2)
        (hamming-distance (cdr l1)(cdr l2))
```

#### Step 3
```Racket
(define (hamming-distance l1 l2)
    (if (null? l1)
    0 ; not null
    ; compare (car l1) & (car l2) equal?
    (if (equal? (car l1) (car l2))
        ; if (car l1) = (car l2), then compare (cdr l1) and (cdr l2)
        (hamming-distance (cdr l1)(cdr l2))
        (+ (car l1) (car l2) (hamming-distance (cdr l1) (cdr l2)));reverse the each time when (car l1) not equal to (car l2).
    ))
)
```
## Question Output:
```Racket
> (hamming-distance (list 1 0 1 0 1 1 1 0)(list 1 1 1 1 0 0 0 0))
    5
> (hamming-distance (list 1 1 1 1)(list 0 0 0 0))
    4
```

## References:

- [Hamming distance - Wiki](https://en.wikipedia.org/wiki/Hamming_distance)