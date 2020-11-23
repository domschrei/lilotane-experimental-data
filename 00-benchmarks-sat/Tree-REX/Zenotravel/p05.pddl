(define (problem ZTRAVEL-2-4 )
(:domain zeno-travel )
	(:requirements :strips :typing :negative-preconditions :htn :equality)

(:objects
	plane1 - aircraft
	plane2 - aircraft
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	fl0 - flevel
	fl1 - flevel
	fl2 - flevel
	fl3 - flevel
	fl4 - flevel
	fl5 - flevel
	fl6 - flevel
	 )
(:init
	(at plane1 city1 )
	(fuel-level plane1 fl6 )
	(at plane2 city2 )
	(fuel-level plane2 fl0 )
	(at person1 city3 )
	(at person2 city0 )
	(at person3 city0 )
	(at person4 city1 )
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
			(tag t1 (do_carry_person person1 city2))
			(tag t2 (do_carry_person person2 city3))
			(tag t3 (do_carry_person person3 city3))
			(tag t4 (do_carry_person person4 city3))
			
			
		)
	:constraints(and
			(after (and
							(at person1 city2 )
							(at person2 city3 )
							(at person3 city3 )
							(at person4 city3 )
	 )
				 t1)
		)
))
