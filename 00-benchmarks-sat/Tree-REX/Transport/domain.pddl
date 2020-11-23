(define (domain transport)

(:requirements
  :strips
  :typing
  :negative-preconditions
  :equality
  :htn)

(:types 
    location target locatable - object 
    vehicle package - locatable 
    capacity-number - object
)

(:predicates 
    (road ?l1 - location ?l2 - location) 
    (at ?x - locatable ?v - location) 
    (in ?x - package ?v - vehicle) 
    (capacity ?v - vehicle ?s1 - capacity-number) 
    (capacity-predecessor ?s1 - capacity-number ?s2 - capacity-number)
)

(:action noop
  :parameters (?v - vehicle ?l2 - location)
  :precondition (and (at ?v ?l2))
  :effect (and ))

(:action drive
  :parameters (?v - vehicle ?l1 - location ?l2 - location)
  :precondition (and (at ?v ?l1) (road ?l1 ?l2))
  :effect (and (not (at ?v ?l1)) (at ?v ?l2)))

(:action pick_up
  :parameters (?v - vehicle ?l - location ?p - package ?s1 - capacity-number ?s2 - capacity-number)
  :precondition (and (at ?v ?l) (at ?p ?l) (capacity-predecessor ?s1 ?s2) (capacity ?v ?s2))
  :effect (and (not (at ?p ?l)) (in ?p ?v) (capacity ?v ?s1) (not (capacity ?v ?s2))))

(:action drop
  :parameters (?v - vehicle ?l - location ?p - package ?s1 - capacity-number ?s2 - capacity-number)
  :precondition (and (at ?v ?l) (in ?p ?v) (capacity-predecessor ?s1 ?s2) (capacity ?v ?s1))
  :effect (and (not (in ?p ?v)) (at ?p ?l) (capacity ?v ?s2) (not (capacity ?v ?s1))))

  
;; Loading and unloading

(:method unload
  :parameters (?v - vehicle ?l - location ?p - package)
  :expansion ((tag t0 (drop ?v ?l ?p ?s1 ?s2)) )
  :constraints (and 
    ;(before (and (at ?v ?l)) t0)
  ))

(:method load
  :parameters (?v - vehicle ?l - location ?p - package)
  :expansion ((tag t0 (pick_up ?v ?l ?p ?s1 ?s2)))
  :constraints (and 
    ;(before (and (at ?v ?l)) t0)
  ))

  
;; Navigation

; Case 1: already there
(:method get_to
  :parameters (?v - vehicle ?l - location)
  :expansion (
    (tag t0 (noop ?v ?l)) 
  )
  :constraints (and 
    ;(before (and (at ?v ?l)) t0)
  ))

; Case 2: direct road
(:method get_to
  :parameters (?v - vehicle ?l - location)
  :expansion (
    (tag t0 (drive ?v ?lbefore ?l)) 
  )
  :constraints (and 
    ;(before (and (at ?v ?lbefore)) t0)
  ))

; Case 3: recursion + direct road
(:method get_to
  :parameters (?v - vehicle ?l - location)
  :expansion (
    (tag t0 (get_to ?v ?lbefore)) 
    (tag t1 (drive ?v ?lbefore ?l))
  )
  :constraints (and 
    ;(before (and (road ?lbefore ?l)) t0)
  ))

  
;; Package delivery (top-level methods)

(:method deliver
  :parameters (?p - package ?l2 - location)
  :expansion (
    (tag t0 (get_to ?v ?l1)) 
    (tag t1 (load ?v ?l1 ?p)) 
    (tag t2 (get_to ?v ?l2)) 
    (tag t3 (unload ?v ?l2 ?p))
  )
  :constraints (and
    ;(before (and (at ?v ?l)) t0)
  ))

)
