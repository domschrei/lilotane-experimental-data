;  (c) 2001 Copyright (c) University of Huddersfield
;  Automatically produced from GIPO from the domain hiking
;  All rights reserved. Use of this software is permitted for non-commercial
;  research purposes, and it may be copied only for that use.  All copies must
;  include this copyright message.  This software is made available AS IS, and
;  neither the GIPO team nor the University of Huddersfield make any warranty about
;  the software or its performance.

(define (domain hiking)
  (:requirements :strips :equality :typing :htn :negative-preconditions)
  (:types car tent person couple place )
  (:predicates
              (at_tent ?t - tent ?pos - place)
              (at_person ?p - person ?pos - place)
              (at_car ?car - car ?pos - place)
              (partners ?cpl - couple ?p1 - person ?p2 - person)
              (up ?t - tent)
              (down ?t - tent)
              (walked ?cpl - couple ?pos - place)
              (next ?from - place ?to - place)
)

(:action put_down
         :parameters    (?p - person ?pos - place ?t - tent)
         :precondition  (and  (at_person ?p ?pos)
                              (at_tent ?t ?pos)
                              (up ?t)
                        )
         :effect        (and  (down ?t)
                              (not (up ?t))
                        )
)

(:action put_up
         :parameters    (?p - person ?pos - place ?t - tent)
         :precondition  (and  (at_person ?p ?pos)
                              (at_tent ?t ?pos)
                              (down ?t)
                        )
         :effect        (and  (up ?t)
                              (not (down ?t))
                        )
)

(:action drive_passenger
         :parameters    (?p - person ?from - place ?to - place ?car - car ?pas - person)
         :precondition  (and  (at_person ?p ?from)
                              (at_car ?car ?from)
                              (at_person ?pas ?from)
                              (not (= ?p ?pas))
                        )
         :effect        (and  (at_person ?p ?to)
                              (not (at_person ?p ?from))
                              (at_car ?car ?to)
                              (not (at_car ?car ?from))
                              (at_person ?pas ?to)
                              (not (at_person ?pas ?from))
                        )
)

(:action drive
         :parameters    (?p - person ?from - place ?to - place ?car - car)
         :precondition  (and  (at_person ?p ?from)
                              (at_car ?car ?from)
                        )
         :effect        (and  (at_person ?p ?to)
                              (not (at_person ?p ?from))
                              (at_car ?car ?to)
                              (not (at_car ?car ?from))
                        )
)

(:action drive_tent
         :parameters    (?p - person ?from - place ?to - place ?car - car ?t - tent)
         :precondition  (and  (at_person ?p ?from)
                              (at_car ?car ?from)
                              (at_tent ?t ?from)
                              (down ?t)
                        )
         :effect        (and  (at_person ?p ?to)
                              (not (at_person ?p ?from))
                              (at_car ?car ?to)
                              (not (at_car ?car ?from))
                              (at_tent ?t ?to)
                              (not (at_tent ?t ?from))
                        )
)

(:action drive_tent_passenger
         :parameters    (?p - person ?from - place ?to - place ?car - car ?t - tent ?pas - person)
         :precondition  (and  (at_person ?p ?from)
                              (at_car ?car ?from)
                              (at_tent ?t ?from)
                              (down ?t)
                              (at_person ?pas ?from)
                              (not (= ?p ?pas))
                        )
         :effect        (and  (at_person ?p ?to)
                              (not (at_person ?p ?from))
                              (at_car ?car ?to)
                              (not (at_car ?car ?from))
                              (at_tent ?t ?to)
                              (not (at_tent ?t ?from))
                              (at_person ?pas ?to)
                              (not (at_person ?pas ?from))
                        )
)

(:action walk_together
         :parameters    (?t - tent ?to - place ?p1 - person ?from - place ?p2 - person ?cpl - couple)
         :precondition  (and  (at_tent ?t ?to)
                              (up ?t)
                              (at_person ?p1 ?from)
                              (next ?from ?to)
                              (at_person ?p2 ?from)
                              (not (= ?p1 ?p2))
                              (walked ?cpl ?from)
                              (partners ?cpl ?p1 ?p2)
                        )
         :effect        (and  (at_person ?p1 ?to)
                              (not (at_person ?p1 ?from))
                              (at_person ?p2 ?to)
                              (not (at_person ?p2 ?from))
                              (walked ?cpl ?to)
                              (not (walked ?cpl ?from))
                        )
)

(:action nop
         :parameters    ()
         :precondition  ()
         :effect        (and)
)


;------------------------------------------------------------------
;                               Methods
;------------------------------------------------------------------

;------------------------------------------------------------------
;          A couple can go hiking once the trip is set
;------------------------------------------------------------------
(:method trip_to
        :parameters   (?cpl - couple ?to - place)
        :expansion    (     (tag t1 (trip_to ?cpl ?from ?to))
                      )
        :constraints  (and  (before (and
                            (partners ?cpl ?p1 ?p2)
                            (at_person ?p1 ?from)
                            (at_person ?p2 ?from)
                            )
                        t1)
                      )
)

(:method trip_to
        :parameters   (?cpl - couple ?from - place ?to - place)
        :expansion    (     (tag t1 (nop))
                      )
        :constraints  (and  (before (and
                            (= ?from ?to)
                            )
                        t1)
                      )
)

(:method trip_to
        :parameters   (?cpl - couple ?from - place ?to - place)
        :expansion    (     (tag t1 (trip_to ?cpl ?from ?mid))
                            (tag t2 (trip_to ?cpl ?mid ?to))
                      )
        :constraints  (and  (before (and
                            (next ?from ?mid)
                            )
                        t1)
                      )
)

(:method trip_to
        :parameters   (?cpl - couple ?from - place ?to - place)
        :expansion    (     (tag t1 (drive_tent ?p1 ?from ?to ?car1 ?t))
                            (tag t2 (drive ?p2 ?from ?to ?car2))
                            (tag t3 (put_up ?p1 ?to ?t))
                            (tag t4 (drive_passenger ?p2 ?to ?from ?car2 ?p1))
                            (tag t5 (walk_everyone ?t ?to ?from))
                            (tag t6 (put_down ?p2 ?to ?t))
                            (tag t7 (drive_passenger ?p1 ?to ?from ?car1 ?p2))
                            (tag t8 (drive ?p1 ?from ?to ?car1))
                            (tag t9 (drive ?p2 ?from ?to ?car2))
                      )
        :constraints  (and  (before (and
                            (next ?from ?to)
                            (partners ?cpl ?p1 ?p2)
                            (at_person ?p1 ?from)
                            (at_person ?p2 ?from)
                            (at_car ?car1 ?from)
                            (at_car ?car2 ?from)
                            (at_tent ?t ?from)
                            )
                        t1)
                      )
)

;------------------------------------------------------------------
;                        Walk everyone
;------------------------------------------------------------------
(:method walk_everyone
        :parameters   (?t - tent ?to - place ?from - place)
        :expansion    (     (tag t1 (nop))
                      )
        :constraints  (and)
)

(:method walk_everyone
        :parameters   (?t - tent ?to - place ?from - place)
        :expansion    (     (tag t1 (walk_together ?t ?to ?p1 ?from ?p2 ?cpl))
                            (tag t2 (walk_everyone ?t ?to ?from))
                      )
        :constraints  (and  (before (and
                            (next ?from ?to)
                            (partners ?cpl ?p1 ?p2)
                            (at_person ?p1 ?from)
                            (at_person ?p2 ?from)
                            )
                        t1)
                      )
)

;------------------------------------------------------------------
;                        Preparation of the trip
;------------------------------------------------------------------

(:method prepare_trip
        :parameters   (?start - place)
        :expansion    (     (tag t1 (bring_tent ?start))
                            (tag t2 (bring_cars ?start))
                      )
        :constraints  (and)
)


;------------------------------------------------------------------
;                     Make sure there is a tent somewhere
;------------------------------------------------------------------
;Assumption : there is always a place where there is both a tent and a car


(:method bring_tent
        :parameters   (?start - place)
        :expansion    (     (tag t1 (drive_tent ?p ?loc ?start ?car ?t))
                      )
        :constraints  (and  (before (and
                            (at_tent ?t ?loc)
                            (at_person ?p ?loc)
                            (at_car ?car ?loc)
                            (not (= ?loc ?start))
                            (down ?t)
                            )
                        t1)
                      )
)

(:method bring_tent
        :parameters   (?start - place)
        :expansion    (     (tag t1 (put_down ?p ?loc ?t))
                            (tag t2 (drive_tent ?p ?loc ?start ?car ?t))
                      )
        :constraints  (and  (before (and
                            (at_tent ?t ?loc)
                            (at_person ?p ?loc)
                            (at_car ?car ?loc)
                            (not (= ?loc ?start))
                            (up ?t)
                            )
                        t1)
                      )
)

(:method bring_tent
        :parameters   (?start - place)
        :expansion    (     (tag t1 (nop))
                      )
        :constraints  (and  (before (and
                            (at_tent ?t ?start)
                            (down ?t)
                            )
                        t1)
                      )
)

(:method bring_tent
        :parameters   (?start - place)
        :expansion    (     (tag t1 (put_down ?p ?start ?t))
                      )
        :constraints  (and  (before (and
                            (at_tent ?t ?start)
                            (at_person ?p ?start)
                            (up ?t)
                            )
                        t1)
                      )
)

;------------------------------------------------------------------
;              Make sure that two cars are available
;------------------------------------------------------------------

(:method bring_cars
        :parameters   (?start - place)
        :expansion    (     (tag t1 (nop))
                      )
        :constraints  (and  (before (and
                            (at_car ?car1 ?start)
                            (at_car ?car2 ?start)
                            (not (= ?car1 ?car2))
                            )
                        t1)
                      )
)

(:method bring_cars
        :parameters   (?start - place)
        :expansion    (     (tag t1 (drive ?p2 ?loc2 ?start ?car2))
                            (tag t2 (bring_cars ?start))
                      )
        :constraints  (and  (before (and
                            (at_car ?car2 ?loc2)
                            (at_person ?p2 ?loc2)
                            (not (= ?start ?loc2))
                            )
                        t1)
                      )
)

;------------------------------------------------------------------
;                       Go for an adventure
;------------------------------------------------------------------

(:method go_hiking
        :parameters   (?cpl - couple ?to - place)
        :expansion    (     (tag t1 (prepare_trip ?from))
                            (tag t2 (trip_to ?cpl ?to))
                      )
        :constraints  (and  (before (and
                            (partners ?cpl ?p1 ?p2)
                            (at_person ?p1 ?from)
                            (at_person ?p2 ?from)
                            (not (= ?p1 ?p2))
                            )
                        t1)
                      )
)


;------------------------------------------------------------------
;
;------------------------------------------------------------------

(:method everyone_go_hiking
        :parameters   (?to - place)
        :expansion    (     (tag t1 (prepare_trip ?from))
                            (tag t2 (trip_to ?cpl ?to))
                      )
        :constraints  (and  (before (and
                            (partners ?cpl ?p1 ?p2)
                            (at_person ?p1 ?from)
                            (at_person ?p2 ?from)
                            (not (= ?p1 ?p2))
                            )
                        t1)
                      )
)



)
