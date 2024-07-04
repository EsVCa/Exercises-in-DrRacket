#lang racket
(define (F-c f)
  (* (- f 32) 5/7))

(define (taller6)

  (define num1 0)

  (display "este programa funciona para convertir la temperatura de farhenheit a celcius \n por favor digite el valor de la temperatura en grados farhenheit: ")
  (set! num1 (read))

  (define (solucion)
    (F-c num1))
  (display "la temperatura en grados celcius es de: ")
  (display (solucion)) (display "°")
  )