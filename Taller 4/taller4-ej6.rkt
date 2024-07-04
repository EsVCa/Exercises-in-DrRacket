#lang racket
(define (area r h)
  (floor (* 2 pi r (+ r h)))
  )
(define (volumen r h)
   (floor (* pi h (sqr r)))
  )

(define (ej2)
  (define r 0)
  (define h 0)

  (display "este programa sirve para calcular el volumen y el area aproximada de un cilindro\n
digite el radio del cilindro: ")
  (set! r (read))

  (display "ingrese la altura del cilindro: ")
  (set! h (read))

  (printf "el volumen de tu cilindro es aproximadamente de ~a en medidas cubicas y el area aproximada es de ~a en medidas cuadradas" (volumen r h) (area r h))
  
  )