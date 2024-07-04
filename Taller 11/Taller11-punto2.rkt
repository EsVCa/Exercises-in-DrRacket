#lang racket
(define (suma l L lista x)
  (if (not (and (null? l) (null? L)))
      (begin
        (set! lista (list-set lista x (+ (car l) (car L))))
        (suma (cdr l) (cdr L) lista (+ x 1))
        )
      lista
      )
  )
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
(define (copiar-lista l L x)
  (if (not (null? l))
      (begin
        (set! L (list-set L x (car l)))
        (copiar-lista (cdr l) L (+ x 1))
        )
      L
      )
  )
(define (punto2)
  (define lista (crear-lista))
  (define list (llenar-lista lista 0 0 lista))
  (define list2 (copiar-lista list lista 0))

  (suma list list2 lista 0)
  )
(punto2)