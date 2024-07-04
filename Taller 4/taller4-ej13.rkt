#lang racket
;calcular de pulgadas a centimetros
(define (pulgadas-centimetros pug)
  (* pug 2.54))
;calcular de pies a pulgadas
(define (pies-pulgadas ft)
  (* ft 12))
;calcula de yardas a pies
(define (yardas-pies yar)
  (* yar 3) )
;calcula de varas a yardas
(define (varas-yardas var)
  (* var 0.9142))
;calcula de pies a centimetros
(define (pies-centimetros ft)
  (pulgadas-centimetros (pies-pulgadas ft)))
;calcula de yardas a centimetros
(define (yardas-centimetros yar)
  (pies-centimetros (yardas-pies yar)))
;calcula de varas a pulgadas
(define (varas-pulgadas var)
  (pies-pulgadas (yardas-pies (varas-yardas var))))
;calcula de varas a pies
(define (varas-pies var)
  (yardas-pies (varas-yardas var)))

(define (ej13)
  
  (display"Este programa funciona para converciones de unidades de medidas\n
si desea hacer alguna conversion, escriba tal cual esta cualquiera de las siguientes opciones y luego escribe el numero en la unidad de medida que aparece al inicio: ")
  (newline)
  (display "-(pulgadas-centimetros n).\n-(pies-pulgadas n)\n-(yardas-pies n)\n-(varas-yardas n)\n-(pies-centimetros n)\n
-(yardas-centimetros n)\n-(varas-pulgadas n)\n-(varas-pies n)\nDonde n es el valor de la distancia. por ejemplo:\n(pulgadas-centimetros 2)\n5.08; esto traduce que le di 2 pulgadas y
 me dijo cuanto equivale en centimetros, que en este caso es 5.08cm")
  
  )
