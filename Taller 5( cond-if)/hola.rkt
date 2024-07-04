#lang racket
(define (condicional3 d km p)
  (if (and (> d 7) (> km 500))
      (- p (* p 20/100))
      (display p)
      ))


 (define (punto4)
   (define d 0)
   (define km 0)
   (define p 0)
   (define (paga p)
  (* p km))

   (display "este programa sirve para calcular cuanto valdra el tiquete de un viaje\n
cuantos kilometros recorrera en ida y vuelta?: ")
   (set! km (read))
   (display "digite cuantos dias se va a quedar:")
   (set! d (read))
   (display "cuanto vale el kilometro recorrido: ")
   (set! p (read))
   (printf "lo que debes pagar por el tiquete es de: ")
   (condicional3 d km (paga p))
   
   )