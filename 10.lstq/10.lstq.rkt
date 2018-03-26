#lang racket
; 10. Write a function lstq in Racket that takes as arguments two lists l and m of equal
; length and containing numbers. It should return d, the distance given by the sum of
; the square residuals between the numbers in the lists:

; This means take the ith element of m from the ith element of l and square the result for all i. Then add all of those to get d. For example:
; > (lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8))
; 54.61

; d = sum(sigma) (li-mi)²

; What need to do:
; 1. square algorithm
; 2. sum(sigma) algorithm
; 3. (li-mi)²  Square Difference algorithm
; 4. d = sum(sigma) (li-mi)²


; square algorithm
(define (square x)(* x x))

; sum(sigma) algorithm
(define (sumlist x)
    (if (null? x)
    0
    (+ (car x)(sumlist (cdr x)))
    ))

; (li-mi)²  Square Difference algorithm
(define (diff-square l m)
    (apply - (map (lambda (l m) (square (- m l) )) l m)))

; d = sum(sigma) (li-mi)²
(define (lstq l m)
    (if (null? l)
    0
    (sumlist (list (square (- (car l)(car m))) (lstq (cdr l)(cdr m) ) ) )
    ))

(lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8))

; sum of square algorithm:
; (define (sum-squares lst)
;   (apply + (map (lambda (x) (* x x)) lst)))

; > (sum-squares '(1 2 3))  ===> 14
;------------------------------------------
; Square Difference algorithm:
; (define (diff-squares lst)
;   (apply - (map (lambda (x) (* x x)) lst)))

; > (diff-squares '(3 2 1))  ===> 4

