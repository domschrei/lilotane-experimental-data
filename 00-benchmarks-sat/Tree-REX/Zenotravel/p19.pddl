(define (problem ZTRAVEL-5-25 )
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
	person16 - person
	person17 - person
	person18 - person
	person19 - person
	person20 - person
	person21 - person
	person22 - person
	person23 - person
	person24 - person
	person25 - person
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
	city12 - city
	city13 - city
	city14 - city
	city15 - city
	city16 - city
	city17 - city
	city18 - city
	city19 - city
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
	(at plane2 city1 )
	(fuel-level plane2 fl1 )
	(at plane3 city16 )
	(fuel-level plane3 fl5 )
	(at plane4 city10 )
	(fuel-level plane4 fl2 )
	(at plane5 city1 )
	(fuel-level plane5 fl1 )
	(at person1 city19 )
	(at person2 city3 )
	(at person3 city6 )
	(at person4 city16 )
	(at person5 city13 )
	(at person6 city6 )
	(at person7 city0 )
	(at person8 city3 )
	(at person9 city13 )
	(at person10 city16 )
	(at person11 city2 )
	(at person12 city6 )
	(at person13 city8 )
	(at person14 city0 )
	(at person15 city8 )
	(at person16 city19 )
	(at person17 city9 )
	(at person18 city0 )
	(at person19 city1 )
	(at person20 city12 )
	(at person21 city8 )
	(at person22 city15 )
	(at person23 city4 )
	(at person24 city6 )
	(at person25 city17 )
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
			(tag t1 (do_carry_person person1 city10))
			(tag t2 (do_carry_person person2 city1))
			(tag t3 (do_carry_person person3 city13))
			(tag t4 (do_carry_person person4 city9))
			(tag t5 (do_carry_person person5 city0))
			(tag t6 (do_carry_person person6 city16))
			(tag t7 (do_carry_person person7 city0))
			(tag t8 (do_carry_person person8 city0))
			(tag t9 (do_carry_person person9 city17))
			(tag t10 (do_carry_person person10 city13))
			(tag t11 (do_carry_person person11 city13))
			(tag t12 (do_carry_person person12 city17))
			(tag t13 (do_carry_person person13 city3))
			(tag t14 (do_carry_person person14 city0))
			(tag t15 (do_carry_person person15 city13)) 
			(tag t16 (do_carry_person person16 city19)) 
			(tag t17 (do_carry_person person17 city0)) 
			(tag t18 (do_carry_person person18 city4)) 
			(tag t19 (do_carry_person person19 city17)) 
			(tag t20 (do_carry_person person20 city14)) 
			(tag t21 (do_carry_person person21 city17)) 
			(tag t22 (do_carry_person person22 city4)) 
			(tag t23 (do_carry_person person23 city12)) 
			(tag t24 (do_carry_person person24 city13)) 
			(tag t25 (do_carry_person person25 city2)) 
			(tag t26 (do_fly plane1 city11))
			(tag t27 (do_fly plane2 city8))
			
		)
	:constraints(and
			(after (and
							(at plane1 city11 )
							(at plane2 city8 )
							(at person1 city10 )
							(at person2 city1 )
							(at person3 city13 )
							(at person4 city9 )
							(at person5 city0 )
							(at person6 city16 )
							(at person7 city0 )
							(at person8 city0 )
							(at person9 city17 )
							(at person10 city13 )
							(at person11 city13 )
							(at person12 city17 )
							(at person13 city3 )
							(at person14 city0 )
							(at person15 city13 )
							(at person16 city19 )
							(at person17 city0 )
							(at person18 city4 )
							(at person19 city17 )
							(at person20 city14 )
							(at person21 city17 )
							(at person22 city4 )
							(at person23 city12 )
							(at person24 city13 )
							(at person25 city2 )
	 )
				 t1)
		)
))
