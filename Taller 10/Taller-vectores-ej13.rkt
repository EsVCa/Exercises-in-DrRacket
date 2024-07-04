#lang racket

(define (make)
   (newline)
           (define vector (make-vector 100 0))
           (printf "\nEl vector con orden desendente es: " ) 
           (sebas vector 0 100 )
   ) 


(define (sebas vector c n)
   (if (< c ( vector-length vector))
         (begin
           (vector-set! vector c n)
           (sebas vector (+ 1 c) (- n 1))
      ) 
        
        (display vector)
 )
   
   ) 




(make)
           