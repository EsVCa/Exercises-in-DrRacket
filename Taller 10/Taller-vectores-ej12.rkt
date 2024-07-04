#lang racket

( define (make)

   (newline)
   
( printf "Ingresa el tamaño del vector: " )
   
( define t ( read ) )
   
( define vector ( make-vector t 0 ) )
   
( printf "\nIngresa los valores:\n" )
   
( Pedir. vector  0 )
   
( trace Monitoreo )
   
( Monitoreo vector 0 0 0 0 0 )
)

( define ( Pedir. vector  c )
     ( if ( < c ( vector-length vector ) )
          ( begin
             ( vector-set! vector c ( read ) )
             ( Pedir. vector ( + 1 c ) )
             ) 
          ( void )
           ) 
    ) 
( require ( lib "trace.ss") )
( define ( Monitoreo vector C a b c d )
   ( if ( < C ( vector-length vector ) )
        ( Monitoreo vector ( + 1 C )
                        ( if ( < ( vector-ref vector C ) 10 )
                         ( + 1 a )
                        
                         a
                    ) 
                         ( if ( and ( >= ( vector-ref vector C ) 10 ) ( <= ( vector-ref vector C ) 30 ) )
                         ( + 1  b )
                       
                         b
                    )
                         ( if ( and ( >= ( vector-ref vector C ) 31 ) ( <= ( vector-ref vector C ) 60 ) )
                         ( + 1 c )
                         
                         c
                   ) 
                         ( if ( > ( vector-ref vector C ) 60 )
                         ( + 1 d )
                        
                         d
                    )
     )
       
        ( printf "\nAcontinuacion se muestra el resultado del monitoreo
Menores a 10: ~a
Están entre 10 y 30: ~a
Están entre 30 y 60: ~a
Son mayores a 60: ~a." a b c d  )
        ) 
   ) 


(make)

