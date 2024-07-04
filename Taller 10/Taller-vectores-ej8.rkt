#lang racket


(define (make)

  (newline)
  
(printf "Ingresa el tamaño del vector: ")
  
(define t (read))
  
(define vector ( make-vector t 0))
  
(printf "\nIngresa los valores:\n")
  
(done vector t 0)
  
(sebas vector t 0 0)
)

 

(define (done vector t c )
     (if ( < c t )
          (begin
             (vector-set! vector c (read))
             (done vector t (+ 1 c))
             )
          
          (void)
           ) 
    ) 



(define (sebas vector t c ip)
   (if (< c t )
        (sebas
          vector
          t
          (+ 1 c)
          (if (> (vector-ref vector c) ip)
               (vector-ref vector c)
              
               ip
               )
          ) 
        
        (henao vector t 0 ip)
        ) 
   )

(define (henao vector t c n)
   ( if (= (vector-ref vector c) n)
         (printf "\nLa posicion del numero mayor es: ~a" (+ 1 c))  
        
        (henao vector t (+ 1 c) n)
        ) 
   )

(make)