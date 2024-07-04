#lang racket


(define (make) 
(printf "Ingresa el tamaño del vector: " )
(define t ( read ) )
(define vector ( make-vector t 0 ) )
(define vectorO ( make-vector t 0 ) )
(define vectorOc ( make-vector t 0 ) )
(Pedir vector  0 )
(Mayor vector vectorO vectorOc 0  )
)

 


( define ( Pedir vector  c )
     ( if ( < c ( vector-length vector ) )
          ( begin
             ( vector-set! vector c ( random 1 101 ) )
             ( Pedir vector  ( + 1 c ) )
             ) 
          
          ( void )
           ) 
    ) 


 
( define ( Mayor vector vectorO vectorOc c )

   ( if ( < c ( vector-length vector ) )
    
            ( if ( = ( vector-length vector ) ( + 1 c ) )
        ( begin
           ( vector-set! vectorO c ( Mayorn vector 0 0 ) )
           ( Mayor vector vectorO vectorOc ( + 1 c ) )
      )
         
           ( begin
           
           ( vector-set! vectorO c ( Mayorn vector 0 0 ) )
          
           ( Revertir ( Mayorn vector 0 0 ) vector vectorOc 0 0 )
           ( Mayor vectorOc vectorO vector ( + 1 c ) )
           ) 
     )
        
        ( display vectorO  )
  ) 
   ) 
   
        
     
             






 ;( require ( lib "trace.ss" ) )           
( define ( Revertir x  vector vectorOc c c2  )


   ( if ( < c ( vector-length vector ) )

        ( begin
                   ( if ( = x ( vector-ref vector c ) )

                                      ( Revertir x vector vectorOc ( + 1 c ) c2 )

                                          

                                      ( begin

                                         ( vector-set! vectorOc c2 ( vector-ref vector c ) )

                                         ( Revertir x vector vectorOc ( + c 1 ) ( + 1 c2  ) )

                                         )

                                           ) 
                               ) 
 

                                
  ( begin

           ( vector-set! vectorOc ( - ( vector-length vector ) 1 ) -1 )

          

           )   

  )

   ) 
           





 ( define ( Mayorn vector  c ip )
   ( if ( < c ( vector-length vector ) )
        ( Mayorn
          vector
          ( + 1 c )
          ( if ( > ( vector-ref vector c ) ip  )
               ( vector-ref vector c )
            
               ip
               )
          ) 
       
         ip 
        )
   ) 


(make)

