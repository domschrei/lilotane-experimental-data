(define (problem depotprob6587 )
(:domain Depot )
	(:requirements :strips :typing :negative-preconditions :htn :equality)

(:objects
	depot0 depot1 - Depot
	distributor0 distributor1 - Distributor
	truck0 truck1 truck2 truck3 - Truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 - Pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 - Crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 - Hoist )
(:init
	(at pallet0 depot0 )
	(clear pallet0 )
	(at pallet1 depot1 )
	(clear crate4 )
	(at pallet2 distributor0 )
	(clear crate9 )
	(at pallet3 distributor1 )
	(clear crate7 )
	(at pallet4 distributor0 )
	(clear crate2 )
	(at pallet5 distributor1 )
	(clear crate1 )
	(at pallet6 depot0 )
	(clear crate3 )
	(at pallet7 distributor1 )
	(clear crate8 )
	(at truck0 depot1 )
	(at truck1 distributor1 )
	(at truck2 depot1 )
	(at truck3 depot0 )
	(at hoist0 depot0 )
	(available hoist0 )
	(at hoist1 depot1 )
	(available hoist1 )
	(at hoist2 distributor0 )
	(available hoist2 )
	(at hoist3 distributor1 )
	(available hoist3 )
	(at hoist4 depot0 )
	(available hoist4 )
	(at hoist5 depot0 )
	(available hoist5 )
	(at hoist6 depot0 )
	(available hoist6 )
	(at hoist7 distributor1 )
	(available hoist7 )
	(at crate0 distributor1 )
	(on crate0 pallet3 )
	(at crate1 distributor1 )
	(on crate1 pallet5 )
	(at crate2 distributor0 )
	(on crate2 pallet4 )
	(at crate3 depot0 )
	(on crate3 pallet6 )
	(at crate4 depot1 )
	(on crate4 pallet1 )
	(at crate5 distributor1 )
	(on crate5 crate0 )
	(at crate6 distributor1 )
	(on crate6 pallet7 )
	(at crate7 distributor1 )
	(on crate7 crate5 )
	(at crate8 distributor1 )
	(on crate8 crate6 )
	(at crate9 distributor0 )
	(on crate9 pallet2 )
 )
(:goal
	:tasks  (
			 ;; A remplir 
			(tag t1 (do_put_on crate4 pallet0))

			(tag t2 (do_put_on crate6 pallet1))

			(tag t3 (do_put_on crate2 pallet4))

			(tag t4 (do_put_on crate8 pallet6))
			(tag t5 (do_put_on crate3 crate8))
			(tag t6 (do_put_on crate7 crate3))

			(tag t7 (do_put_on crate1 pallet7))


			
			
		)
	:constraints(and
			(after (and
								(on crate1 pallet7 )
								(on crate2 pallet4 )
								(on crate3 crate8 )
								(on crate4 pallet0 )
								(on crate6 pallet1 )
								(on crate7 crate3 )
								(on crate8 pallet6 )
	 )
				 t1)
		)
))
