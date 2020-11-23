(define (problem p) 
(:domain transport) 
(:requirements :strips :typing :negative-preconditions :htn) 
(:objects 
    city-loc-0 city-loc-1 city-loc-2 - location 
    truck-0 - vehicle 
    package-0 package-1 - package 
    capacity-0 capacity-1 - capacity-number
) 

(:init 
    (capacity-predecessor capacity-0 capacity-1) 
    (road city-loc-0 city-loc-1) 
    (road city-loc-1 city-loc-0) 
    (road city-loc-1 city-loc-2) 
    (road city-loc-2 city-loc-1) 
    (at package-0 city-loc-1) 
    (at package-1 city-loc-1) 
    (at truck-0 city-loc-2) 
    (capacity truck-0 capacity-1)
)

(:goal 
    :tasks(
        (tag t1 (deliver package-0 city-loc-0))
        (tag t2 (deliver package-1 city-loc-2))
    ) 
    :constraints(and (after (and (at package-1 city-loc-2)) t2))
)
)
