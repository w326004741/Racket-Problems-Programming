#lang racket


;6. Write a function hamming-distance in Racket that takes two lists and returns the number of positions in which they differ.
; For example:
; > (hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0))
;   5

; 1. check if l1,l2 list is empty 
; 2. equal? l1 and l2 (#t or #f), if l1 = l2,then jump the next position to be new l1 and new l2(use (cdr l1)(cdr l2))
; 3. got a procedure (hamming-distance (cdr l1)(cdr l2))
; 4. reverse the each time when (car l1) not equal to (car l2).

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

; (define (hamming-distance1 l1 l2)
;     (if (null? l1)
;     0
;     (if (equal? (car l1) (car l2))
;     (map (hamming-distance (cdr l1)(cdr l2))
;     (+ (car l1) (car l2) (hamming-distance (cdr l1)(cdr l2)))))))


(hamming-distance (list 1 0 1 0 1 1 1 0)(list 1 1 1 1 0 0 0 0))
(hamming-distance (list 1 1 1 1)(list 0 0 0 0))
