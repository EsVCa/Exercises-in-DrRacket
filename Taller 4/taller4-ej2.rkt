#lang racket
(define (aceleracion s)
  (* 100/35 s)
  )
(define (km)
  (define s 0)

  (display "este programa dice cuantos kilometros recorre un medio de transporte con una aceleracion de 20/7 kilometros por segundos al cuadrado\n
por favor digite cuantos segundos acelerara el vehiculo: ")
  (set! s (read))

  (printf "los kilometros que hara su vehiculo son de: ~aKm" (aceleracion s))
  )
