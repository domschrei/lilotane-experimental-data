(define (problem depotprob1234 )
(:domain Depot )
	(:requirements :strips :typing :negative-preconditions :htn :equality)

(:objects
	depot0 - Depot
	distributor0 distributor1 - Distributor
	truck0 truck1 - Truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 - Pallet
	crate0 crate1 crate2 crate3 crate4 crate5 - Crate
	hoist0 hoist1 hoist2 - Hoist )
(:init
	(at pallet0 depot0 )
	(clear crate5 )
	(at pallet1 distributor0 )
	(clear pallet1 )
	(at pallet2 distributor1 )
	(clear crate3 )
	(at pallet3 distributor0 )
	(clear pallet3 )
	(at pallet4 distributor0 )
	(clear crate4 )
	(at pallet5 distributor1 )
	(clear crate1 )
	(at truck0 distributor1 )
	(at truck1 depot0 )
	(at hoist0 depot0 )
	(available hoist0 )
	(at hoist1 distributor0 )
	(available hoist1 )
	(at hoist2 distributor1 )
	(available hoist2 )
	(at crate0 distributor0 )
	(on crate0 pallet4 )
	(at crate1 distributor1 )
	(on crate1 pallet5 )
	(at crate2 distributor1 )
	(on crate2 pallet2 )
	(at crate3 distributor1 )
	(on crate3 crate2 )
	(at crate4 distributor0 )
	(on crate4 crate0 )
	(at crate5 depot0 )
	(on crate5 pallet0 )
 )
(:goal
	:tasks  (
				(tag t1 (do_put_on crate3 pallet1))
				(tag t2 (do_put_on crate0 pallet3))
				(tag t3 (do_put_on crate4 pallet5))
				(tag t4 (do_put_on crate1 crate4))
				(tag t5 (do_put_on crate5 crate1))
			
			
		)
	:constraints(and
			(after (and
								(on crate0 pallet3 )
								(on crate1 crate4 )
								(on crate3 pallet1 )
								(on crate4 pallet5 )
								(on crate5 crate1 )
	 )
				 t1)
		)
))
