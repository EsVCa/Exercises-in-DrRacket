#lang racket
(define (galon-e g)
  (* g  14041)
  )
(define (galon-c g)
  (* g 8630)
  )
(define (galon km km.g)
  (/ km km.g)
  )

(define (ej12)
(define g 0)
  (define km 0)
  (define km.g 0)

  (display "Este programa sirve para calcular cuantos galones se gastara en un viaje y cuanto le costara\n
digite cuantos kilometros recorre con un galon su vehiculo: ")
  (set! km.g (read))

  (display "Que distancia recorrera su automovil en kilometros? \n")
  (set! km (read))

  (define G (galon km km.g))
  (printf "su automovil recorrera ~aKm, quiere decir que gastara ~a galones \n
y gastara en gasolina extra $~a y en gasolina corriente $~a" km G (galon-e G) (galon-c G))

  )