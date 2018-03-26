# Theory-of-Algorithms
> by - [Weichen Wang](https://w326004741.github.io/)



## Question:
10. Write a function lstq in Racket that takes as arguments two lists l and m of equal
length and containing numbers. It should return d, the distance given by the sum of
the square residuals between the numbers in the lists:          

![image](https://github.com/w326004741/Theory-of-Algorithms-CA/blob/master/image/3201522019842_.pic.jpg)

This means take the ith element of m from the i th element of l and square the result for all i. Then add all of those to get d. For example:
```Racket
> (lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8))
54.61
```

## Solution Idea:
```
What need to do:
1. square algorithm
2. sum(sigma) algorithm
3. (li-mi)²  Square Difference algorithm
4. d = sum(sigma) (li-mi)²
```

## Solution Code:
#### Step 1
```Racket
; square algorithm
(define (square x)(* x x))
```

#### Step 2
```Racket
; sum(sigma) algorithm
(define (sumlist x)
    (if (null? x)
    0
    (+ (car x)(sumlist (cdr x)))
    ))
```

#### Step 3
```Racket
; (li-mi)²  Square Difference algorithm
(define (diff-square l m)
    (apply - (map (lambda (l m) (square (- m l) )) l m)))
```

#### Step 4
```Racket
; d = sum(sigma) (li-mi)²
(define (lstq l m)
    (if (null? l)
    0
    (sumlist (list (square (- (car l)(car m))) (lstq (cdr l)(cdr m) ) ) )
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
> (lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8))
    54.61
```




## References:
- [sigma - Chinese Wiki](https://zh.wikipedia.org/wiki/%E6%B1%82%E5%92%8C%E7%AC%A6%E5%8F%B7)
- [Summation - Wiki](https://en.wikipedia.org/wiki/Summation)
- [How to do square in racket](https://stackoverflow.com/questions/22560573/how-to-do-square-in-racket)