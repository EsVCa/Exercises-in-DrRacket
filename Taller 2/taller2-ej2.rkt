#lang racket
(define (suma p b) 
  (+ p b))

(define num1 0)
(define num2 0)

(display "este programa sirve para sumar dos numeros, ingrese el primer numero: ")
(set! num1 (read))

(display "ingrese el siguiente numero: ")
(set! num2 (read))

(define solucion (suma num1 num2))
(display "su resultado es: ")
(display solucion)