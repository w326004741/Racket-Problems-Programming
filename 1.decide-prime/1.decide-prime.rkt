#lang racket

; Prime number: is a natural number greater than 1, except 1 and the number itself,
;               can not be divisible by other natural number. 
;               A natural number greater than 1 that is not prime is called a `composite number`
; 质数又称素数。一个大于1的自然数，除了1和它自身外，不能被其他自然数整除的数叫做质数；否则称为合数。
; 判断素数的要求：1. 大于1的自然数。 2. 只能被1和本身整除。 这两个必要条件需要2个函数去实现。
; 所以在函数decide-prime中，我们的首要条件是满足 n 必须大于等于2，So 设置第一个判定条件: 如果n<2，则输出false。
; 在函数prime-filter中，继续实现第二个必要条件。添加一个参数m＝2,如果n等于m=2,则为true,如果满足则进行下一步，判断 n 能否整除 m
; 如果两者都满足，并且n < 2,则n 为素数。如果不满足m=n,则尝试m+1的数字，是否等于n,并且是否能被n整除.
(define (prime-filter n m)
    (if (= n m)         ; if n is prime, first of all should be m = n. 
    #t
    (if (= (modulo n m) 0) ; prime can not be divisible by other natural number,so have not remainder
    #f
    (prime-filter n (+ m 1))))) ; try next number of m (m+1), whether can be divided by n

(define m 2) ; n must >=2
(define (decide-prime n)
    (if (< n 2)       ; 1 is not prime and does not consifer negative integers and 0
                      ; so if n <= 1, then n is not prime(false).
    #f
    (prime-filter n m))) ; else

(decide-prime 4) ; #f
(decide-prime 5) ; #t
(decide-prime 100) ; #f
(decide-prime 127) ; #t
(decide-prime 997) ; #t
(

; Reference: https://stackoverflow.com/questions/13791047/scheme-prime-numbers
; Wikipedia: https://en.wikipedia.org/wiki/Prime_number
; Chinese Wikipedia: https://zh.wikipedia.org/wiki/%E7%B4%A0%E6%95%B0

; The first 168 prime numbers(all the prime number less than 1000)
; (2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 
; 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 211, 223, 
; 227, 229, 233, 239, 241, 251, 257, 263, 269, 271, 277, 281, 283, 293, 307, 311, 313, 317, 331, 337, 347, 
; 349, 353, 359, 367, 373, 379, 383, 389, 397, 401, 409, 419, 421, 431, 433, 439, 443, 449, 457, 461, 463, 
; 467, 479, 487, 491, 499, 503, 509, 521, 523, 541, 547, 557, 563, 569, 571, 577, 587, 593, 599, 601, 607, 
; 613, 617, 619, 631, 641, 643, 647, 653, 659, 661, 673, 677, 683, 691, 701, 709, 719, 727, 733, 739, 743, 
; 751, 757, 761, 769, 773, 787, 797, 809, 811, 821, 823, 827, 829, 839, 853, 857, 859, 863, 877, 881, 883, 
; 887, 907, 911, 919, 929, 937, 941, 947, 953, 967, 971, 977, 983, 991, 997)