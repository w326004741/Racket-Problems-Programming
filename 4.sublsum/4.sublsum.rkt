#lang racket
; 函数sublsum 使用一个（整数）列表作为输入，并返回一个总和为0的子列表。
; 可以使用 combinations。

; Write a function sublsum in Racket that takes a list (of integers) as input and 
; re- turns a list of sublists of it that sum to zero. 
; For this problem, you can use the combinations built-in function. 
; Note the order of the sublists and their elements doesn’t matter.
; For example:
;( sublsum (list 1 2 3 4 -5)) ===> '((2 3 -5) (-5 1 4))
; (sublsum (list 1 2 3 4 5)) ===> '()

; Solution Idea: 
; 1. calculate the sum of the element in the list is 0（计算list内元素和为0）
; 2. using combinations get powersets of list (用combiniations 实现 list的powersets幂集)
; 3. filtered out the sum of the element of the sub-list is 0 from powersets of the list(从powersets中过滤出子列表内元素和为0的子列表) 

; apply: https://stackoverflow.com/questions/41512010/sum-items-in-list-racket
;        https://docs.racket-lang.org/reference/procedures.html
; Step 1
(define (sublsum1 l1)
    (if (null? l1)
    null
    (= (apply + l1) 0) ))

; or other way to define
; "?"  :https://docs.racket-lang.org/reference/number-types.html#%28def._%28%28quote._~23~25kernel%29._positive~3f%29%29
; (define (sublsum1? l1)
;    (0? (apply + l) ))


; filter: https://docs.racket-lang.org/reference/pairs.html#%28def._%28%28lib._racket%2Fprivate%2Flist..rkt%29._filter%29%29
; using filter 
; the meaning of cdr is skip first null list -> '() 
(define (sublsum l)
    ; Step 2 & 3
   (filter sublsum1 (cdr (combinations l))) )

(sublsum (list 1 2 3 4 -5))
(sublsum (list 1 2 3 4 5))
(sublsum (list 1 2 -3 4 5))



; (combinations '(1 2 3 4 -5)) ; powerset of list: 
; '(() (1) (2) (1 2) (3) (1 3) (2 3) (1 2 3) (4) (1 4) (2 4) (1 2 4) (3 4) (1 3 4) (2 3 4) (1 2 3 4) 
; (-5) (1 -5) (2 -5) (1 2 -5) (3 -5) (1 3 -5) (2 3 -5) (1 2 3 -5) (4 -5) (1 4 -5) (2 4 -5) (1 2 4 -5) 
; (3 4 -5) (1 3 4 -5) (2 3 4 -5) (1 2 3 4 -5))

