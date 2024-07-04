#lang racket
(define (num-div n c C)
  (if (<= c n)
      (if (integer? (/ n c))
          (num-div n (+ c 1) (+ C 1))
          (num-div n (+ c 1) C)
      )
      C
      )
  )

(define (llenar-list l L x n c)
  (if (not (null? l))
      (if (integer? (/ n c))
          (begin
            (set! L (list-set L x c))
            (llenar-list (cdr l) L (+ x 1) n (+ c 1))
            )
          (llenar-list l L x n (+ c 1))
          )
      L
      )
  )

(define (punto8)
  (define n 0)
  (display "ingrese el numero para conocer sus divisores: ")
  (set! n (read))
  (define lista (build-list (num-div n 1 0) values))
  (llenar-list lista lista 0 n 1)
  )


(punto8)