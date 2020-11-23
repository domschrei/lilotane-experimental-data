(define (problem p) 
(:domain transport) (:requirements :strips :typing :negative-preconditions :htn :equality) 
(:objects city-loc-0 city-loc-1 city-loc-2 city-loc-3 - location truck-0 truck-1 - vehicle package-0 package-1 package-2 package-3 - package capacity-0 capacity-1 capacity-2 - capacity-number) 

(:init (capacity-predecessor capacity-0 capacity-1) (capacity-predecessor capacity-1 capacity-2) (road city-loc-0 city-loc-1) (road city-loc-0 city-loc-3) (road city-loc-1 city-loc-0) (road city-loc-1 city-loc-2) (road city-loc-2 city-loc-1) (road city-loc-2 city-loc-2) (road city-loc-3 city-loc-0) (at package-0 city-loc-2) (at package-1 city-loc-2) (at package-2 city-loc-0) (at package-3 city-loc-0) (at truck-0 city-loc-0) (at truck-1 city-loc-1) (capacity truck-0 capacity-2) (capacity truck-1 capacity-2))
(:goal :tasks(
(tag t1 (deliver package-0 city-loc-1))
(tag t2 (deliver package-1 city-loc-3))
(tag t3 (deliver package-2 city-loc-3))
(tag t4 (deliver package-3 city-loc-2))
) :constraints(and (after (and ) t4))
))
