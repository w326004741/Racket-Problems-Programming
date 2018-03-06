#lang racket

; 5. Write a function hamming-weight in Racket that takes a list l 
; as input and returns the number of non-zero elements in it.
; > (hamming-weight (list 1 0 1 0 1 1 1 0)) ==> 5

;Solution Idea:
; 1. Filtered out elements of the list whose element is non-zero.
;    (using positive? or exact-positive-integer? - Racket Docs)
; 2. Calculate the number of the elements after filtered.
;    (using apply - Racket Docs) 


(define (hamming-weight l)
    (if (null? l)
    null
    (apply + (filter exact-positive-integer? l))))

; another way
(define (hamming-weight1 l)
    (if (null? l)
    null    
    (apply + (filter positive? l))))


(hamming-weight (list 1 0 1 0 1 1 1 0))
; > 5
(hamming-weight1 (list 1 1 1 1 1 1 1 1))
; > 8



;;; (exact-positive-integer? 1)
;;; (positive? 1)

; References:
; positive? & exact-positive-integer?: http://docs.racket-lang.org/reference/number-types.html?q=positive%3F#%28def._%28%28quote._~23~25kernel%29._positive~3f%29%29

; apply: https://stackoverflow.com/questions/41512010/sum-items-in-list-racket
;        https://docs.racket-lang.org/reference/procedures.html

; filter: https://docs.racket-lang.org/reference/pairs.html#%28def._%28%28lib._racket%2Fprivate%2Flist..rkt%29._filter%29%29
