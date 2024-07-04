#lang racket
(define (hipotenusa c1 c2)
  (sqrt (+ (sqr c1) (sqr c2))))

(define (taller9)

  (define num1 0)
  (define num2 0)

  (display "este programa sirve para calcular la hipotenusa de un triangulo rectangulo \n digite la medida de uno de sus lados: ")
  (set! num1 (read))

    (display "digite la medida del otro lado del triangulo: ")
  (set! num2 (read))

  (define (solucion)
    (hipotenusa num1 num2))
  (display "la hipotenusa de tu triangulo rectangulo es de: ")
  (display (solucion))
  
  )