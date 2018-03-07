# Theory-of-Algorithms
> by - [Weichen Wang](https://w326004741.github.io/)

## What is [Prime Number?](https://en.wikipedia.org/wiki/Prime_number)
A prime number (or a prime) is a natural number greater than 1 that cannot be formed by multiplying two smaller natural numbers. A natural number greater than 1 that is not prime is called a composite number.

***

## Question:
1. Write, from scratch, a function in Racket that uses a brute-force algorithm that takes a single positive integer and return true if the number is a prime and false otherwise. Call the function decide-prime.

## Solution Idea:
```
1. Prime number is a natural number greater than 1. 
2. Except 1 and the number itself, can not be divisible by other natural number. 
3. A natural number greater than 1 that is not prime is called a composite number.
```

## Solution Code:
#### Step 1
```Racket
(define m 2) ; n must >=2
(define (decide-prime n)
    (if (< n 2)       ; 1 is not prime and does not consifer negative integers and 0
                      ; so if n <= 1, then n is not prime(false).
    #f
    (prime-filter n m))) ; else
```

#### Step 2
```Racket
(define (prime-filter n m)
    (if (= n m)         ; if n is prime, first of all should be m = n. 
    #t
    (if (= (modulo n m) 0) ; prime can not be divisible by other natural number,so have not remainder
    #f
    (prime-filter n (+ m 1))))) ; try next number of m (m+1), whether can be divided by n
```

## Question Output:
```Racket
> (decide-prime 4)
    #f
> (decide-prime 5)
    #t
> (decide-prime 100)
    #f
> (decide-prime 127)
    #t
> (decide-prime 997)
    #t
```


## References:

- [Scheme prime numbers](https://stackoverflow.com/questions/13791047/scheme-prime-numbers)

- [Prime Number - Wikipedia](https://en.wikipedia.org/wiki/Prime_number)

- [Prime Number - Chinese Wikipedia](https://zh.wikipedia.org/wiki/%E7%B4%A0%E6%95%B0)