(define (problem mixed-f2-p1-u0-v0-g0-a0-n0-A0-B0-N0-F0-r0 )
(:domain miconic )
	(:requirements :strips :typing :negative-preconditions :htn :equality)

(:objects p0 - passenger
             f0 f1 - floor )
(:init
(above f0 f1 )
(origin p0 f1 )
(destin p0 f0 )
(lift-at f0 )
 )
(:goal
	:tasks  (
			 (tag t1 (do_problem )) 
			
			
		)
	:constraints(and
			(after (and 
						(served p0 )
 )
				 t1)
		)
))
