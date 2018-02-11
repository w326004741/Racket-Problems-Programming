#lang racket

; take a positive integer n0 as input and returns a list by recursively applying the following operation,
; so ni+1 = 3ni + 1 (if ni is odd), otherwise ni+1 = ni / 2
; End the recursion when(or if) the number becomes 1
; Call the function collatz-list
; So collatz-list should return a list whose first element is n0
; the second element is n1, and so on

; > (collatz-list 5) ===>  '(5 16 8 4 2 1)
; > (collatz-list 9) ===> '(9 28 14 7 22 11 34 17 52 26 13 40 20 10 5 16 8 4 2 1)
; > (collatz-list 2) ===> '(2 1)

; cond reference: https://docs.racket-lang.org/guide/conditionals.html
; cond :Each test- expr is evaluated in order. If it produces #f, the corresponding bodys are ignored, and evaluation proceeds to the next test-expr. As soon as a test-expr produces a true value, its bodys are evaluated to produce the result for the cond form, and no further test-exprs are evaluated.

; ni+1 = 3ni + 1 (if ni is odd), otherwise ni+1 = ni / 2
; (define (collatz-list n)
;   (cond
;     ((= n 1) '(1)) ;true->end
;     ((odd? n) ; if n is odd, then -> ni+1 = 3ni + 1 
;      (cons n (collatz-list (+ (* 3 n) 1))))
;     (else     ; otherwise -> ni+1 = ni /2
;      (cons n (collatz-list (/ n 2))))))

(define (collatz-list n)
  (cond
    ((= n 1) '(1)) ;true->end
    ((= (modulo n 2) 1) ; if n is odd, then -> n modulo 2 always = 1, so -> ni+1 = 3ni + 1
     (cons n (collatz-list (+ (* 3 n) 1))))
    ((= (modulo n 2) 0)     ; if n is even , then -> n modulo 2 alway = 0, so -> ni+1 = ni /2
     (cons n (collatz-list (/ n 2))))))
     
(collatz-list 5)
(collatz-list 9)
(collatz-list 2)