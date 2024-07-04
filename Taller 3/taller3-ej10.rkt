#lang racket
(define (impuesto p)
  (* p (/ 15 100)))
(define (progra1)

  (define num1 0)
  
  (display "este programa tiene como fin, calcular el impuesto de renta que se debe pagar cada determinado periodo de tiempo.
 \n por favor digite el valor sobre el cual se calculara el impuesto a pagar: ")
  (set! num1 (read))

  (define (solucion)
    (impuesto num1))
  (display "el impuesto que deberá pagar es de ")
  (display (solucion))
  (display ". teniendo en cuenta que el impuesto a pagar es el 15% del pago")
  )