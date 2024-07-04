#lang racket
(define (area r)
   (* 4 pi (sqr r))
  )
(define (volumen r)
 (* 4/3 pi (expt r 3))
  )

(define (ej1)
  (define r 0)
  
  (display "este programa sirve para calcular el volumen y area de manera aproximada de una esfera\n
Por favor digite el radio de la esfera: ")
  (set! r (read))

  (printf "el area de tu esfera es de ~a en medidas cuadradas y el volumen es de ~a en medidas cubicas" (area r) (volumen r))
  
  )