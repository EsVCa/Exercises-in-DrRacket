#lang scheme

; programa que solicite al usuario un número entero, el número deberá ser enviado a una función
;que calcule y muestre: la cantidad de dígitos del número y la suma de esos dígitos.

(define (sebas)
  (define x 0)

  (newline)

  (display " Programa que muestra la cantidad de digitos de un número entero y la suma de sus digitos \n")
  (newline)

  (display "Ingrese el número entero: \n")
  (set! x (read))
  (newline)

  (gone x 0 1 0)

  )

(define (gone x b c d)
  (if (< x 10)
      (begin
        (printf "El número tiene ~a digitos \n" c)
        (printf "La suma de los dígitos el número es igual a ~a" b)
        )
      (begin
        (set! c (+ c 1))
        (set! x (quotient x 10))
        (set! d (remainder x 10))
         (set! b (+ b d))
        (gone x b c x)
        
        )
      )
  )

(sebas)
  
