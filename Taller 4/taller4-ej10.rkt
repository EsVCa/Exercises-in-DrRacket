#lang racket
(define (ej10)
  (define num1 0)
  (define num2 0)

  (display "este programa recibe dos numeros enteros y los suma, los resta, los multiplica y los divide\n
ingrese los dos numeros enteros que desea usar: \n")
  (set! num1 (read))
  (set! num2 (read))

  (printf "la suma entera entre estos numeros es de: ~a" (floor (+ num1 num2)))
  (newline)
  
  (printf "la resta entera entre estos numeros es de: ~a" (floor (- num1 num2)))
  (newline)
  
  (printf "la multilicacion entera entre estos numeros es de: ~a" (floor (* num1 num2)))
  (newline)
  
  (printf "la division entera entre estos numeros es de: ~a" (floor (/ num1 num2)))
  (newline)

  )