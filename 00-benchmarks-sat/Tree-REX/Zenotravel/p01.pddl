(define (problem ZTRAVEL-1-2 )
(:domain zeno-travel )
	(:requirements :strips :typing :negative-preconditions :htn :equality)

(:objects
	plane1 - aircraft
	person1 - person
	person2 - person
	city0 - city
	city1 - city
	city2 - city
	fl0 - flevel
	fl1 - flevel
	fl2 - flevel
	fl3 - flevel
	fl4 - flevel
	fl5 - flevel
	fl6 - flevel
	 )
(:init
	(at plane1 city0 )
	(fuel-level plane1 fl1 )
	(at person1 city0 )
	(at person2 city2 )
	(next fl0 fl1 )
	(next fl1 fl2 )
	(next fl2 fl3 )
	(next fl3 fl4 )
	(next fl4 fl5 )
	(next fl5 fl6 )
 )
(:goal
	:tasks  (
			 ;; A remplir 
			(tag t1 (do_carry_person person1 city0))
			(tag t2 (do_carry_person person2 city2))
			(tag t3 (do_fly plane1 city1))
			
			
		)
	:constraints(and
			(after (and
							(at plane1 city1 )
							(at person1 city0 )
							(at person2 city2 )
	 )
				 t1)
		)
))
