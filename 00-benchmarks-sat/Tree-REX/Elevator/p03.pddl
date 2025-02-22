(define (problem mixed-f6-p3-u0-v0-g0-a0-n0-A0-B0-N0-F0-r4 )
(:domain miconic )
	(:requirements :strips :typing :negative-preconditions :htn :equality)

(:objects p0 p1 p2 - passenger
             f0 f1 f2 f3 f4 f5 - floor )
(:init
(above f0 f1 )
(above f0 f2 )
(above f0 f3 )
(above f0 f4 )
(above f0 f5 )

(above f1 f2 )
(above f1 f3 )
(above f1 f4 )
(above f1 f5 )

(above f2 f3 )
(above f2 f4 )
(above f2 f5 )

(above f3 f4 )
(above f3 f5 )

(above f4 f5 )



(origin p0 f3 )
(destin p0 f0 )

(origin p1 f2 )
(destin p1 f0 )

(origin p2 f0 )
(destin p2 f4 )






(lift-at f0 )
 )
(:goal
	:tasks  (
			 (tag t1 (do_problem )) 
			
			
		)
	:constraints(and
			(after (and 
						(served p0 )
						(served p1 )
						(served p2 )
 )
				 t1)
		)
))
