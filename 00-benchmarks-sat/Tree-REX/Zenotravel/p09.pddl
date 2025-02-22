(define (problem ZTRAVEL-3-7 )
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
	person7 - person
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
	(at plane1 city2 )
	(fuel-level plane1 fl5 )
	(at plane2 city2 )
	(fuel-level plane2 fl2 )
	(at plane3 city1 )
	(fuel-level plane3 fl0 )
	(at person1 city4 )
	(at person2 city1 )
	(at person3 city2 )
	(at person4 city0 )
	(at person5 city4 )
	(at person6 city3 )
	(at person7 city3 )
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
			(tag t2 (do_carry_person person2 city0))
			(tag t3 (do_carry_person person3 city4))
			(tag t4 (do_carry_person person4 city3))
			(tag t5 (do_carry_person person5 city1))
			(tag t6 (do_carry_person person6 city4))
			(tag t7 (do_carry_person person7 city4))
			
		)
	:constraints(and
			(after (and
							(at person1 city2 )
							(at person2 city0 )
							(at person3 city4 )
							(at person4 city3 )
							(at person5 city1 )
							(at person6 city4 )
							(at person7 city4 )
	 )
				 t1)
		)
))
