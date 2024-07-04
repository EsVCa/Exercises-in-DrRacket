#lang racket
(define (area-triangulo b h)
  (/ (* b h) 2)
  )
(define (area-t)
  (define b 0)
  (define h 0)

  (display "este programa sirve para calcular el area de un triangulo\n
Por favor digite la base: ")
  (set! b (read))

  (display "por favor digite la altura: ")
  (set! h (read))

  (printf "el area de su triangulo es de: ~a"
          (area-triangulo b h)
          )
  )