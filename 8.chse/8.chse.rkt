#lang racket

; 8. Write a function chse in Racket that takes three lists x, y and z of equal length and
; containing only 0’s and 1’s. It should return a list containing the elements of y in
; the positions where x is 1 and the elements of z otherwise. For example:
; > (chse (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
; '(0 1 0 1 0 0 1 1)

; x => (0 0 0 0 1 1 1 1): if some position element value equal to 0 in x list, then return same position element value of z list to a new list.
;                         if some position element value equal to 1 in x list, then return same position element value of z list to a new list,  
;                         then returns a new list of containing all the returned values.                        
; e.g. : (car x) = 0, then return (car z) = 0 to a new list = '(0, , , , , , , )







