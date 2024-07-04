#lang racket


(define (no)

  (display "\nPrograma que muestra un vector y busca un entero, de estar, se muestra su posición, de no estar, se retorna -1 \n")
  (newline)

  (display "Ingrese el tamaño del vector: \n")
  (define vector (make-vector (read)))
  (newline)

  (display "Ingrese un número entero: \n")
  (define x (read))
  (newline)

  (begin
    (sebas vector 0)

 (display vector)
 (newline)
  
  (henao vector 0 x 0)
  )

  )


(define (sebas vector posn)
  (if (= (vector-length vector) posn)
      (void)
      (begin
        (vector-set! vector posn (random -50 50))
        (sebas vector (+ posn 1))
        )
      )
  )

(define (henao vector posn x c)
  (if (= (vector-length vector) posn)
      (if (= c 0)
          (display "El número no se encuentra en ninguna posición")
          (printf "\nEl número se encuentra ~a veces en el vector" c)
          )
      (begin
        (if (= x (vector-ref vector posn))
            (begin
              (printf "\nEl número se encuentra en la posición ~a \n" (+ posn 1))
              (set! c (+ c 1))
              (henao vector (+ posn 1) x c)
              )
            (henao vector (+ posn 1) x c)
            )
        )
      )
  )
            

(no)