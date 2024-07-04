#lang racket
(define (volumen-cilindro r h)
  (* pi (sqr r) h))
(define (taller1)

  (define num1 0)
  (define num2 0)
  
  (display "este programa funciona para calcular el volumen de un clindro \n por favor digite el radio del cilindro: ")
  (set! num1 (read))

  (display "ahora digita la altura de dicho cilindro: ")
  (set! num2 (read))

  (define (solucion) (volumen-cilindro num1 num2))
  (display "el volumen de tu cilindro es: ")
  (display (solucion))
  )