#lang racket 
; 9. Write a function sod2 in Racket that takes three lists x, y and z of equal length and
; containing only 0’s and 1’s. It should return a list containing a 1 where the number of
; 1’s in a given position in x, y and z contains an odd nubmer of 1’s, and 0 otherwise.
; For example:
; > (sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
; '(0 1 1 0 1 0 0 1)

; if x + y + z = odd(The element values in the same position are added.), then return 1 into a new list.
; if x + y + z = even(The element values in the same position are added.), then return 0 into a new list
; if x + y + z = empty, then return null or '().
; x => (0 0 0 0 1 1 1 1)
; y => (0 0 1 1 0 0 1 1)
; z => (0 1 0 1 0 1 0 1)
;----------------------------
; r => (0 1 1 0 1 0 0 1)  ---> result

(define (sod2 x y z)
    (if (null? x) ;check if x is empty list, then return null or '()
    null
    (map (lambda (x y z) ; use map function to check the sum of each element of the same position in 3 lists is odd or even.
        (if (odd? (+ x y z) ) 1 0)) ; if (x+y+z) is odd, then return 1 into a new list, else return 0 into a new lis.
        x y z)
    ))
; Map example:   
; > (map (lambda (number)
;          (+ 1 number))
;        '(1 2 3 4))
; '(2 3 4 5)


(sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
