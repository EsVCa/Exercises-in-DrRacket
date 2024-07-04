#lang racket
(define (volumen-piramide a b h)
   (/ (* a b h) 3))

(define num1 0)
(define num2 0)
(define num3 0)

(display "Este programa sirve para calcular el volumen de una piramide. ")
(newline)
(display "para hacerlo, primero digite el valor de una de las aristas de la base: ")
(set! num1 (read))
(display "Ahora digite el valor de la otra arista de la base: ")
(set! num2 (read))
(display "Digite la altura de la piramide: ")
(set! num3 (read))

(define (solucion) (volumen-piramide num1 num2 num3))
(display "El volumen de la piramide es de: ")
(display (solucion))
