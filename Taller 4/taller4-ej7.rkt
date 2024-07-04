#lang racket
(define (paga p d)
 (- (* p d) (* p d 8/100))
  )


(define (ej3)
  (define p 0)
  (define d 0)
  (define nombre "")


  (display "este programa sirve para obtener tu paga neta en una empresa\n
como te llamas? \n ")
  (set! nombre (read))

   (display "digite cuanto le pagan al dia: ")
  (set! p (read))

  (display "digite cuantos dias vino en este mes: ")
  (set! d (read))

  (printf "~a, tu paga neta es de ~a pesos" nombre (paga p d))
  

)