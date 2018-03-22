#lang racket
; 7. Write a function maj in Racket that takes three lists x, y and z of equal length and
; containing only 0’s and 1’s. It should return a list containing a 1 where two or more
; of x, y and z contain 1’s, and 0 otherwise. For example:
; > (maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
; '(0 0 0 1 0 1 1 1)

; For this question, we have 3 equal length lists(x, y, z) and containing only 0's and 1's.
; And We need compare each elements in each same position in each list.
; And output a list containing the majority of element for each position in each list.
; x => (0 0 0 0 1 1 1 1)
; y => (0 0 1 1 0 0 1 1)
; z => (0 1 0 1 0 1 0 1)
;----------------------------
; r => (0 0 0 1 0 1 1 1)  ---> result







