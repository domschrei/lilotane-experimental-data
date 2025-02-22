(define (problem depotprob7654 )
(:domain Depot )
	(:requirements :strips :typing :negative-preconditions :htn :equality)

(:objects
	depot0 depot1 depot2 - Depot
	distributor0 distributor1 distributor2 - Distributor
	truck0 truck1 - Truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 - Pallet
	crate0 crate1 crate2 crate3 crate4 crate5 - Crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 - Hoist )
(:init
	(at pallet0 depot0 )
	(clear crate1 )
	(at pallet1 depot1 )
	(clear crate0 )
	(at pallet2 depot2 )
	(clear crate4 )
	(at pallet3 distributor0 )
	(clear crate5 )
	(at pallet4 distributor1 )
	(clear pallet4 )
	(at pallet5 distributor2 )
	(clear crate3 )
	(at truck0 depot1 )
	(at truck1 depot2 )
	(at hoist0 depot0 )
	(available hoist0 )
	(at hoist1 depot1 )
	(available hoist1 )
	(at hoist2 depot2 )
	(available hoist2 )
	(at hoist3 distributor0 )
	(available hoist3 )
	(at hoist4 distributor1 )
	(available hoist4 )
	(at hoist5 distributor2 )
	(available hoist5 )
	(at crate0 depot1 )
	(on crate0 pallet1 )
	(at crate1 depot0 )
	(on crate1 pallet0 )
	(at crate2 distributor2 )
	(on crate2 pallet5 )
	(at crate3 distributor2 )
	(on crate3 crate2 )
	(at crate4 depot2 )
	(on crate4 pallet2 )
	(at crate5 distributor0 )
	(on crate5 pallet3 )
 )
(:goal
	:tasks  (
				(tag t1 (do_put_on crate3 pallet0))
				

				(tag t2  (do_put_on crate2 pallet3))

				(tag t3 (do_put_on crate4 pallet5))
				(tag t4 (do_put_on crate0 crate4))
			
			
		)
	:constraints(and
			(after (and
								(on crate0 crate4 )
								(on crate2 pallet3 )
								(on crate3 pallet0 )
								(on crate4 pallet5 )
	 )
				 t1)
		)
))
