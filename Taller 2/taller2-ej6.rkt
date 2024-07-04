#lang racket
(define (volumen-esfera r)
  (* (/ 4 3) pi (expt r 3)))

(define num1 0)

(display "este programa sirve para hayar el volumen de una esfera.")
(newline)

(display "porfavor digite el radio de la esfera: ")
(set! num1 (read))

(define (solucion) (volumen-esfera num1))
(display "El volumen de tu esfera es de: ")
(display (solucion))
