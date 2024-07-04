#lang racket
(define (area-trapecio a b h)
  (/ (* (+ a b) h) 2))

(define num1 0)
(define num2 0)
(define num3 0)

(display "este programa sirve para calcular el area de un trapecio")
(newline)
(display "para hacerlo primero necesito que digite cuanto miden las bases: ")
(set! num1 (read)) (set! num2 (read))

(display "Ahora necesito que digite la altura del trapecio: ")
(set! num3 (read))

(define (solucion) (area-trapecio num1 num2 num3))
(display "El area del trapecio es de: ")
(display (solucion))
