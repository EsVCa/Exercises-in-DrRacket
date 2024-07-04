#lang racket
(define (volumen-esfera r)
(* 4/3 pi (expt r 3))
  )

(define (taller2)

  (define num1 0)
  
  (display "este programa sirve para calcular el volumen de una esfera. \n para eso, por favor digite el radio: ")
  (set! num1 (read))

  (define (solucion) (volumen-esfera num1))
  (display "el volumen de tu esfera es: ")
  (display (solucion))
  )