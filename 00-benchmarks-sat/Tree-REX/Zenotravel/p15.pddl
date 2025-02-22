(define (problem ZTRAVEL-5-15 )
(:domain zeno-travel )
	(:requirements :strips :typing :negative-preconditions :htn :equality)

(:objects
	plane1 - aircraft
	plane2 - aircraft
	plane3 - aircraft
	plane4 - aircraft
	plane5 - aircraft
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person
	person6 - person
	person7 - person
	person8 - person
	person9 - person
	person10 - person
	person11 - person
	person12 - person
	person13 - person
	person14 - person
	person15 - person
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	city4 - city
	city5 - city
	city6 - city
	city7 - city
	city8 - city
	city9 - city
	city10 - city
	city11 - city
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
	(fuel-level plane1 fl0 )
	(at plane2 city3 )
	(fuel-level plane2 fl4 )
	(at plane3 city2 )
	(fuel-level plane3 fl1 )
	(at plane4 city9 )
	(fuel-level plane4 fl1 )
	(at plane5 city5 )
	(fuel-level plane5 fl1 )
	(at person1 city8 )
	(at person2 city10 )
	(at person3 city7 )
	(at person4 city5 )
	(at person5 city1 )
	(at person6 city10 )
	(at person7 city11 )
	(at person8 city8 )
	(at person9 city9 )
	(at person10 city11 )
	(at person11 city4 )
	(at person12 city5 )
	(at person13 city8 )
	(at person14 city4 )
	(at person15 city1 )
	(next fl0 fl1 )
	(next fl1 fl2 )
	(next fl2 fl3 )
	(next fl3 fl4 )
	(next fl4 fl5 )
	(next fl5 fl6 )
 )
(:goal
	:tasks  (
			(tag t1 (do_carry_person person1 city1))
			(tag t2 (do_carry_person person2 city4))
			(tag t3 (do_carry_person person3 city7))
			(tag t4 (do_carry_person person4 city6))
			(tag t5 (do_carry_person person5 city8))
			(tag t6 (do_carry_person person6 city11))
			(tag t7 (do_carry_person person7 city2))
			(tag t8 (do_carry_person person8 city11))
			(tag t10 (do_carry_person person10 city9))
			(tag t11 (do_carry_person person11 city6))
			(tag t12 (do_carry_person person12 city4))
			(tag t13 (do_carry_person person13 city11))
			(tag t14 (do_carry_person person14 city4))
			(tag t15 (do_carry_person person15 city6))
			
			
		)
	:constraints(and
			(after (and
							(at person1 city1 )
							(at person2 city4 )
							(at person3 city7 )
							(at person4 city6 )
							(at person5 city8 )
							(at person6 city11 )
							(at person7 city2 )
							(at person8 city11 )
							(at person10 city9 )
							(at person11 city6 )
							(at person12 city4 )
							(at person13 city11 )
							(at person14 city4 )
							(at person15 city6 )
	 )
				 t1)
		)
))
