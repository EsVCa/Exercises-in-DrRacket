#lang racket

( define (make)
   
(newline)
   
( printf "Ingresa el tamaño del vector: " )
   
( define t ( read ) )
   
( define vector1 ( make-vector t 0 ) )
   
( define vector2 ( make-vector t 0 ) )
   
( define vector3 ( make-vector t 0 ) )
   
( printf "\nIngresa los valores
SALVEDAD, EL ULTIMO NUMERO INGRESADO POR TECLADO NO SERÁ EVALUADO:\n" )
   
( Pedir vector1 vector2  vector3 t 0 ( read ) )
)


( define ( Pedir vector1 vector2 vector3 t c n  )
     ( if ( < c t )
          ( begin
             ( if ( and ( >= n 0 ) ( <= n 10 ) )
                  ( begin
                      ( vector-set! vector1 c n )
                       ( vector-set! vector2 c -1 )
                        ( vector-set! vector3 c -1 )
                     ) 
                
                   ( if ( and ( >= n 11 ) ( <= n 20 ) )
                  ( begin
                      ( vector-set! vector1 c -1 )
                       ( vector-set! vector2 c n )
                        ( vector-set! vector3 c -1 )
                     ) 
                  ( if ( >= n 21 )
                  ( begin
                      ( vector-set! vector1 c -1 )
                       ( vector-set! vector2 c -1 )
                        ( vector-set! vector3 c n )
                     )
                  
                  ( void )
                    ) 
                  )
                ) 
             ( Pedir vector1 vector2 vector3 t ( + 1 c )  ( read  )  ) 
                     
             
             ) 
          ( begin
              ( display vector1 )
              ( display vector2 )
              ( display vector3 )
             ) 
                  
           ) 
    ) 

(make)
