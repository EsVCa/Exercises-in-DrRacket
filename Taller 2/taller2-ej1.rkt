#lang racket
(define (cuadrado a)
  (expt a 2)
  )
(define (ej1) (define a read) 
  (display "Este programa sirve para elevar cualquier numero al cuadrado. ")
           (display "Por favor digite el numero deseado...   ")
           (set! a (read))
  (display "el resultado es... ") (cuadrado a))
