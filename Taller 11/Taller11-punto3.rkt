#lang racket
(define (promedio l x C)
  (if (not (null? l))
      (begin
        (set! C (+ (car l) C))
        (promedio (cdr l) (+ x 1) C)
        )
      (printf "el promedio de la lista es de ~a\n" (/ C x))
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
(define (punto3)
  (define lista (crear-lista))
  (define list (llenar-lista lista 0 0 lista))

  (promedio list 0 0)
  )
(punto3)