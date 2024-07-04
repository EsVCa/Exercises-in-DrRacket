#lang racket


(define (make)

  (newline)
  
(printf "Ingresa el tamaño del vector: ")
  
(define t (read))
(define vector (make-vector t 0))
  
(printf "\nIngresa los valores:\n")
  
(sebas vector 0 t )
(henao vector t 0 0 )
   )


(define (sebas vector c t) 

        (if ( < c t )

        (begin
           
        (vector-set! vector c (read))

        (sebas vector (+ 1 c) t)

        )

        (void)

        ) 

   ) 


(define (henao vector t c a)

   (if (< c t)

        (henao vector t (+ 1 c) (+ a(vector-ref vector c)))

       

        (printf "\nEl promedio de los datos del vector es: ~a." ( / a t ))

        ) 

   ) 





 (make) 