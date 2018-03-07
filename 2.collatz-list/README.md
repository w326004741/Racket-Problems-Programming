# Theory-of-Algorithms
> by - [Weichen Wang](https://w326004741.github.io/)

## Question:
2. Write, from scratch, a function in Racket that takes a positive integer n0 as input and returns a list by recursively applying the following operation, starting with the input number.
![image](https://github.com/w326004741/Theory-of-Algorithms-CA/blob/master/image/collatz%20conjecture.jpg)  
End the recursion when (or if) the number becomes 1. Call the function collatz-list. So, collatz-list should return a list whose first element is n0, the second element is n1, and so on. For example:
```Racket
> (collatz-list 5)
    '(5 16 8 4 2 1)
> (collatz-list 9)
    '(9 28 14 7 22 11 34 17 52 26 13 40 20 10 5 16 8 4 2 1)
> (collatz-list 2)
    '(2 1)
```

## Solution Idea:
```
1. take a `positive integer` n0 as input and returns a list by recursively applying the following operation,
2. so ni+1 = 3ni + 1 (if ni is odd), otherwise ni+1 = ni / 2
3. End the recursion when(or if) the number becomes 1
4. Call the function collatz-list
5. So collatz-list should return a list whose first element is n0
6. the second element is n1, and so on
```

## Solution Code:
```Racket
(define (collatz-list n)
  (cond
    ((= n 1) '(1)) ;true->end
    ((= (modulo n 2) 1) ; if n is odd, then -> n modulo 2 always = 1, so -> ni+1 = 3ni + 1
     (cons n (collatz-list (+ (* 3 n) 1))))
    ((= (modulo n 2) 0)     ; if n is even , then -> n modulo 2 alway = 0, so -> ni+1 = ni /2
     (cons n (collatz-list (/ n 2))))))

; or another way

; ni+1 = 3ni + 1 (if ni is odd), otherwise ni+1 = ni / 2
 (define (collatz-list n)
   (cond
     ((= n 1) '(1)) ;true->end
     ((odd? n) ; if n is odd, then -> ni+1 = 3ni + 1 
      (cons n (collatz-list (+ (* 3 n) 1))))
     (else     ; otherwise -> ni+1 = ni /2
      (cons n (collatz-list (/ n 2))))))
```

## About cond:
Each test- expr is evaluated in order. If it produces #f, the corresponding bodys are ignored, and evaluation proceeds to the next test-expr. As soon as a test-expr produces a true value, its bodys are evaluated to produce the result for the cond form, and no further test-exprs are evaluated.
#### Examples:
```Racket
> (cond)
> (cond
    [else 5])
5
> (cond
   [(positive? -5) (error "doesn't get here")]
   [(zero? -5) (error "doesn't get here, either")]
   [(positive? 5) 'here])
'here
> (cond
   [(member 2 '(1 2 3)) => (lambda (l) (map - l))])
'(-2 -3)
> (cond
   [(member 2 '(1 2 3))])
'(2 3)
```

## Question Output:
```Racket
> (collatz-list 5)
    '(5 16 8 4 2 1)
> (collatz-list 9)
    '(9 28 14 7 22 11 34 17 52 26 13 40 20 10 5 16 8 4 2 1)
> (collatz-list 2)
    '(2 1)
> (collatz-list 27)
    '(27 82 41 124 62 31 94 47 142 71 214 107 322 161 484 242 121 364 182 91 274 137 412 206 103 310 155 466 233 700 350 175 526 263 790 395 1186 593 1780 890 445 1336 668 334 167 502 251 754 377 1132 566 283 850 425 1276 638 319 958 479 1438 719 2158 1079 3238 1619 4858 2429 7288 3644 1822 911 2734 1367 4102 2051 6154 3077 9232 4616 2308 1154 577 1732 866 433 1300 650 325 976 488 244 122 61 184 92 46 23 70 35 106 53 160 80 40 20 10 5 16 8 4 2 1)
> (collatz-list 6)
    '(6 3 10 5 16 8 4 2 1)
```


##### *some comment by myself*
```
考拉兹猜想（英语：Collatz conjecture），又称为奇偶归一猜想、3n＋1猜想、冰雹猜想、角谷猜想、哈塞猜想、乌拉姆猜想或叙拉古猜想，是指对于每一个正整数，如果它是奇数，则对它乘3再加1，如果它是偶数，则对它除以2，如此循环，最终都能够得到1。

if n = 27, takes 111 steps (41 steps through odd numbers, in large font), climbing to 9232 before descending to 1.

(collatz-list 27) == (╯°□°）╯︵ ┻━┻  below:
'(27, 82, 41, 124, 62, 31, 94, 47, 142, 71, 214, 107, 322, 161, 484, 242, 121, 364, 182, 91, 274, 137, 412, 206, 103, 310, 155, 466, 233, 700, 350, 175, 526, 263, 790, 395, 1186, 593, 1780, 890, 445, 1336, 668, 334, 167, 502, 251, 754, 377, 1132, 566, 283, 850, 425, 1276, 638, 319, 958, 479, 1438, 719, 2158, 1079, 3238, 1619, 4858, 2429, 7288, 3644, 1822, 911, 2734, 1367, 4102, 2051, 6154, 3077, 9232, 4616, 2308, 1154, 577, 1732, 866, 433, 1300, 650, 325, 976, 488, 244, 122, 61, 184, 92, 46, 23, 70, 35, 106, 53, 160, 80, 40, 20, 10, 5, 16, 8, 4, 2, 1)
```



## References:
- [Racket docs - cond](https://docs.racket-lang.org/reference/if.html?q=cond#%28form._%28%28lib._racket%2Fprivate%2Fletstx-scheme..rkt%29._cond%29%29)

- [Collatz Conjecture Wikipedia](https://docs.racket-lang.org/guide/conditionals.html)                                        

- [Collatz Conjecture Wikipedia Chinese / 考拉兹猜想](https://zh.wikipedia.org/wiki/%E8%80%83%E6%8B%89%E5%85%B9%E7%8C%9C%E6%83%B3)

