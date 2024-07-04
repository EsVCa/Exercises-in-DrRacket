#lang racket

(define (ay)

  (display "Dado un vector X con enteros, hacer una función que reciba el vector X y otro vector Y, la función  almacena los datos de X invertidos en Y \n\n")

  (display "Ingrese el tamaño del vector: \n")
  (define x (read))
  (newline)

  (define vectorx (make-vector x))

  (define vectory (make-vector x))

  (sebas vectorx 0)

  (henao vectory vectorx 0 (- x 1))
  
  )

(define (sebas vectorx posn)
  (if (= (vector-length vectorx) posn)
      (begin
        (display "El vector X es: \n")
        (display vectorx)
        (newline)
        (newline)
        (display "El vector Y es: \n")
        )
      (begin
        (vector-set! vectorx posn (random -100 100))
        (sebas vectorx (+ posn 1))
        )
      )
  )

(define (henao vectory vectorx posn a)
  (if (= (vector-length vectory) posn)
      (display vectory)
      (begin
        (vector-set! vectory posn (vector-ref vectorx a))
        (henao vectory  vectorx (+ posn 1) (- a 1))
        )
      )
  )


(ay)