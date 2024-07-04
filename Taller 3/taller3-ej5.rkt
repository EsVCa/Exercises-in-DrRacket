#lang racket
(define (volumen-cono-truma h r R)
  (* 1/3 pi h (+ (sqr R) (* R r) (sqr r))))

(define (taller5)

  (define num1 0)
  (define num2 0)
  (define num3 0)

  (display "este programa funciona para calcular el volumen de un cono truma. \n por favor digite el valor de la altura del cono: ")
  (set! num1 (read))

  (display "ahora digite el radio de una de las bases del cono: ")
  (set! num2 (read))

   (display "ahora digite el radio de la otra base del cono: ")
  (set! num3 (read))

  (define (solucion)
    (volumen-cono-truma num1 num2 num3))
  (display "el volumen de tu ccono es de: ")
  (display (solucion))
  )