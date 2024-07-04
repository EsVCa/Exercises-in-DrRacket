#lang racket
(define (bolsa-monedas a b c d e)
  (+ (* 20 a) (* 50 b) (* 100 c) (* 200 d) (* 500 e)))
(define (progra2)

  (define num1 0)
  (define num2 0)
  (define num3 0)
  (define num4 0)
  (define num5 0)

  (display "este programa sirve para contar el valor de dinero que llevan en una bolsa de monedas.
\n por favor digite el numero de monedas de $20")
  (newline)
  (set! num1 (read))

  (display "Ahora cuantas monedas de $50 posee? \n")
  (set! num2 (read))

  (display "cuantas monedas de $100 tiene? \n")
  (set! num3 (read))

  (display "cuantas monedas de $200 tiene? \n")
  (set! num4 (read))

  (display "cuantas monedas de $500 tiene? \n")
  (set! num5 (read))

  (define (solucion)
    (bolsa-monedas num1 num2 num3 num4 num5))
  (display "en la bolsa hay $")
  (display (solucion))
  )