#lang racket
(define (cuadrado-cubo b)
  (define a 0)
  (if (<= b 10)
      (begin
        (display "escriba un numero: ")
        (set! a (read))
        (printf "el cuadrado del numero ~a es ~a, y el cubo es de ~a\n" a (sqr a) (expt a 3))
        (cuadrado-cubo (+ b 1)))
      (display "")
      )
  )
(cuadrado-cubo 1)