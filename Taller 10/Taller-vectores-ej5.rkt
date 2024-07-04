#lang racket

(define (no)

  (display "\nHacer una función que reciba un vector de enteros y un número X,
la función debe buscar X, borrarlo si  lo encuentra y mover los datos siguientes dejando el valor -1  \n\n")

  (display "Ingrese el tamaño del vector: \n")
  (define n (read)) (newline) (newline)

  (display "Ingrese un número x: \n")
  (define x (read)) (newline) (newline)

  (define vectorx (make-vector n))

  (define vectory (make-vector n))

  (sebas vectorx 0)
  (henao vectorx vectory 0 x (- (vector-length vectorx) 1) 0 )

  (begin
  vectorx
  (newline)
  vectory

  (define vectorz (make-vector n))

  (juan vectorz vectorx vectory 0 0 x)

  vectorz
  
)
  )

(define (sebas vectorx posn)
  (if (= posn (vector-length vectorx))
      (begin
      (display vectorx)
      (newline)
      (newline)
      )
      (begin
        (vector-set! vectorx posn (random 5 10))
        (sebas vectorx (+ posn 1))
        )
      )
  )

(define (henao vectorx vectory posn x a posn2)
  (if (= posn (vector-length vectorx))
      (begin
        (display vectorx)
        (newline)
        (newline)
        )
      (begin
        (if (= x (vector-ref vectorx posn))
            (begin
              (vector-set! vectorx posn -1)
              (vector-set! vectory a -1)
              (henao vectorx vectory (+ posn 1) x (- a 1) (+ posn2 1))
              )
            (henao vectorx vectory (+ posn 1) x a posn2)
            )
        )
      )
  )

(define (juan vectorz vectorx vectory posn posn2 x)
  (if (= posn (vector-length vectorz))
         (void)
         (begin
           (if (= (vector-ref vectorx posn2) x)
               (juan vectorz vectorx vectory posn (+ posn2 1) x)
               (begin
                 (vector-set! vectorz posn (vector-ref vectorx posn2))
                 (juan vectorz vectorx vectory (+ posn 1) (+ posn2 1) x)
                 )
               )
           )
         )
  )
      
  


(no)