#lang racket
(define (crear-lista)
  (display "ingrse que tan grande será tu lista: ")
  (define lista (build-list (read) values))
  lista
  )
(define (llenar-lista l x n L)
  (if (not (null? l))
      (begin
        (printf "ingrese el dato numero ~a: " (+ x 1))
        (set! n (read))
        (set! L (list-set L x n))
        (llenar-lista (cdr l) (+ x 1) 0 L)
        )
      L
      )
  )

(define (mul-imp l L x)
  (if (not (null? l))
      (if (odd? x)
          (begin
            (set! L (list-set L x (* 2 (car l))))
            (mul-imp (cdr l) L (+ x 1))
            )
          (mul-imp (cdr l) L (+ x 1))
          )
      L
      )
  )

  
(define (punto7)
  (define lista (crear-lista))
  (define list (llenar-lista lista 0 0 lista))

  (mul-imp list list 0)
  )
(punto7)