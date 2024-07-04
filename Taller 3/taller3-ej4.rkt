#lang racket
(define (area-cono r h)
  (* pi r (+ r (sqrt (+ (sqr r) (sqr h))))))

(define (taller4)

  (define num1 0)
  (define num2 0)

  (display "este programa funciona para calcular el area de un cono. \n por favor digite el valor del radio del cono: ")
  (set! num1 (read))

  (display "ahora digite la altura del cono: ")
  (set! num2 (read))

  (define (solucion)
    (area-cono num1 num2))
  (display "el volumen de tu ccono es de: ")
  (display (solucion))
  )
