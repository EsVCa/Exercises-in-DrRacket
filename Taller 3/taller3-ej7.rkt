#lang racket
(define (distancia-a-b x1 x2 y1 y2)
  (sqrt (+ (sqr (- x2 x1)) (sqr (- y2 y1))))
  )
(define (taller7)

   (define num1 0)
   (define num2 0)
   (define num3 0)
   (define num4 0)

  (display "este programa funciona para medir la distancia entre dos puntos \n por favor digite el valor del primer punto en el plano: ")
  
  (display " \n x = ")
  (set! num1 (read))
  (display "y = ")
  (set! num3 (read))
  
  (display "por favor digite el valor del segundo punto en el plano: \n x = ")
  (set! num2 (read))
  (display "y = ")
  (set! num4 (read))

  (define (solucion)
    (distancia-a-b num1 num2 num3 num4))
  (display "la distancia es entre estos dos puntos es de: ")
  (display (solucion))
  )