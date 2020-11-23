(define (problem ZTRAVEL-3-6 )
(:domain zeno-travel )
	(:requirements :strips :typing :negative-preconditions :htn :equality)

(:objects
	plane1 - aircraft
	plane2 - aircraft
	plane3 - aircraft
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person
	person6 - person
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	city4 - city
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
	(fuel-level plane1 fl6 )
	(at plane2 city3 )
	(fuel-level plane2 fl0 )
	(at plane3 city0 )
	(fuel-level plane3 fl3 )
	(at person1 city1 )
	(at person2 city0 )
	(at person3 city2 )
	(at person4 city0 )
	(at person5 city3 )
	(at person6 city4 )
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
			(tag t2 (do_carry_person person2 city0))
			(tag t3 (do_carry_person person3 city1))
			(tag t4 (do_carry_person person4 city0))
			(tag t5 (do_carry_person person5 city3))
			(tag t6 (do_carry_person person6 city2))
			(tag t7 (do_fly plane1 city3))
			
		)
	:constraints(and
			(after (and
							(at plane1 city3 )
							(at person1 city0 )
							(at person2 city0 )
							(at person3 city1 )
							(at person4 city0 )
							(at person5 city3 )
							(at person6 city2 )
	 )
				 t1)
		)
))
