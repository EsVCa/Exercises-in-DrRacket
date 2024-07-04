#lang racket
(define (volumen-cono r h)
  (* 4/3 pi (sqr r) h))

(define (taller3)

  (define num1 0)
  (define num2 0)

  (display "este programa funciona para calcular el volumen de un cono. \n por favor digite el valor del radio del cono: ")
  (set! num1 (read))

  (display "ahora digite la altura del cono: ")
  (set! num2 (read))

  (define (solucion)
    (volumen-cono num1 num2))
  (display "el volumen de tu ccono es de: ")
  (display (solucion))
  )
