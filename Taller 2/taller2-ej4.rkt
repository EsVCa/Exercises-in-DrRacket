#lang racket
(define (area-triangle b h)
  (/ (* b h) 2))
(define num1 0)
(define num2 0)
(display "este programa sirve para calcular el area de un triangulo. ")
(newline)
(display "para poder hacerlo digite porfavor la base del triangulo")
(set! num1 (read))

(display "digite ahora la altura del triangulo")
(set! num2 (read))

(define (resultado) (area-triangle num1 num2))
(display "el area de tu triangulo es: ")
(display (resultado))