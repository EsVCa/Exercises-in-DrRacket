#lang racket

( define (make)

   (newline)
   
   (display "Ingresa el tamaño de los vectores : " )
   
   ( define t ( read ) )
   
   ( define vector ( make-vector t 0 ) )
   
   (display "\nIngresa los valores del primer vector:\n" )
   
   ( Pedir vector t 0 )
   
   ( define vector2 ( make-vector t 0 ) )
   
   ( define vectorS ( make-vector t 0 ))
   
   ( printf "\nIngresa los valores del segundo vector:\n" )
   
   ( Pedir. vector2 0 )
   
   ( Sumar vector vector2 vectorS 0  )
  )


( define ( Pedir vector t c )
     ( if ( < c t )
          ( begin
             ( vector-set! vector c ( read ) )
             ( Pedir vector t ( + 1 c ) )
             ) 
        
          ( void )
           )
    ) 
( define ( Pedir. vector2  c )
     ( if ( < c ( vector-length vector2 ) )
          ( begin
             ( vector-set! vector2 c ( read ) )
             ( Pedir. vector2 ( + 1 c ) )
             ) 
          
          ( void )
           )
    )



( define ( Sumar vector vector2 vectorS c )
   ( if ( < c ( vector-length vectorS ) )
        ( begin
           ( vector-set! vectorS c ( + ( vector-ref vector c ) ( vector-ref vector2 c ) ) )
           ( Sumar vector vector2 vectorS ( + 1 c ) )
           ) 
        ( begin
           ( printf "\nEl vector resultante del vector1 y vector2 es: " )
           ( display vectorS )
        )      
        ) 
   ) 





(make)
