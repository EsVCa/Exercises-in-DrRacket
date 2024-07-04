#lang racket
(define (pendiente x1 y1 x2 y2)
  (/ (- y2 y1) (- x2 x1)))

(define (taller8)

  (define num1 0)
  (define num2 0)
  (define num3 0)
  (define num4 0)

  (display "este programa sirve para hallar la pendiente de una recta. \n Por favor digite el primer punto de la recta: ")
  (display "\n X= ")
  (set! num1 (read))

  (display "Y= ")
  (set! num2 (read))
  
  (display "Ahora digite el segundo punto de la recta: ")
  (display "\n X= ")
  (set! num3 (read))

  (display "Y= ")
  (set! num4 (read))

  (define (solucion)
    (pendiente num1 num2 num3 num4))
  (display "la pendiente de tu recta es de: ")
  (display (solucion))

  )