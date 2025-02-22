(define (problem depotprob4398 )
(:domain Depot )
	(:requirements :strips :typing :negative-preconditions :htn :equality)

(:objects
	depot0 depot1 - Depot
	distributor0 distributor1 - Distributor
	truck0 truck1 truck2 truck3 - Truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 - Pallet
	crate0 crate1 crate2 crate3 crate4 crate5 - Crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 - Hoist )
(:init
	(at pallet0 depot0 )
	(clear crate5 )
	(at pallet1 depot1 )
	(clear crate3 )
	(at pallet2 distributor0 )
	(clear crate4 )
	(at pallet3 distributor1 )
	(clear pallet3 )
	(at pallet4 depot1 )
	(clear crate0 )
	(at pallet5 distributor1 )
	(clear pallet5 )
	(at pallet6 depot1 )
	(clear pallet6 )
	(at pallet7 distributor0 )
	(clear pallet7 )
	(at truck0 depot1 )
	(at truck1 depot1 )
	(at truck2 depot0 )
	(at truck3 distributor1 )
	(at hoist0 depot0 )
	(available hoist0 )
	(at hoist1 depot1 )
	(available hoist1 )
	(at hoist2 distributor0 )
	(available hoist2 )
	(at hoist3 distributor1 )
	(available hoist3 )
	(at hoist4 distributor1 )
	(available hoist4 )
	(at hoist5 depot1 )
	(available hoist5 )
	(at hoist6 depot1 )
	(available hoist6 )
	(at hoist7 distributor1 )
	(available hoist7 )
	(at crate0 depot1 )
	(on crate0 pallet4 )
	(at crate1 depot1 )
	(on crate1 pallet1 )
	(at crate2 depot0 )
	(on crate2 pallet0 )
	(at crate3 depot1 )
	(on crate3 crate1 )
	(at crate4 distributor0 )
	(on crate4 pallet2 )
	(at crate5 depot0 )
	(on crate5 crate2 )
 )
(:goal
	:tasks  (
			 
			 	(tag t1 (do_put_on crate3 pallet0))
			 	(tag t2 (do_put_on crate4 crate3))

			 	(tag t3 (do_put_on crate2 pallet1))

			 	(tag t4 (do_put_on crate5 pallet2))

			 	(tag t5 (do_put_on crate0 pallet3))


			
			
		)
	:constraints(and
			(after (and
								(on crate0 pallet3 )
								(on crate2 pallet1 )
								(on crate3 pallet0 )
								(on crate4 crate3 )
								(on crate5 pallet2 )
	 )
				 t1)
		)
))
