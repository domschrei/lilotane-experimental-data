(define (domain gripper-typed)
   (:requirements :typing :htn :negative-preconditions :equality)
   (:types room ball gripper)
   (:constants left right - gripper)
   (:predicates (at-robby ?r - room)
		(at ?b - ball ?r - room)
		(free ?g - gripper)
		(carry ?o - ball ?g - gripper))

   (:action move
       :parameters  (?from ?to - room)
       :precondition (at-robby ?from)
       :effect (and  (at-robby ?to)
		     (not (at-robby ?from))))



   (:action pick
       :parameters (?obj - ball ?room - room ?gripper - gripper)
       :precondition  (and  (at ?obj ?room) (at-robby ?room) (free ?gripper))
       :effect (and (carry ?obj ?gripper)
		    (not (at ?obj ?room))
		    (not (free ?gripper))))


   (:action drop
       :parameters  (?obj - ball ?room - room ?gripper - gripper)
       :precondition  (and  (carry ?obj ?gripper) (at-robby ?room))
       :effect (and (at ?obj ?room)
		    (free ?gripper)
		    (not (carry ?obj ?gripper))))


(:action nop
            :parameters ()
            :precondition (and )
            :effect (and )
    )





;------------------------------------------------------------------
;                               Methods
;------------------------------------------------------------------
;                             Move balls
;------------------------------------------------------------------

(:method move_two_balls
        :parameters   (?b1 ?b2 - ball ?r - room)
        :expansion    (     (tag t1 (goto ?rb))
                            (tag t2 (pick ?b1 ?rb ?g1))
                            (tag t3 (pick ?b2 ?rb ?g2))
                            (tag t4 (move ?rb ?r))
                            (tag t5 (drop ?b1 ?r ?g1))
                            (tag t6 (drop ?b2 ?r ?g2))
                      )
        :constraints  (and  (before (and
                            (at ?b1 ?rb)
                            (at ?b2 ?rb)
                            )
                        t1)
                      )
)


;------------------------------------------------------------------
;                             Move one ball
;------------------------------------------------------------------

(:method move_one_ball
        :parameters   (?b - ball ?r - room)
        :expansion    (     (tag t1 (goto ?rb))
                            (tag t2 (pick ?b ?rb ?g))
                            (tag t3 (move ?rb ?r))
                            (tag t4 (drop ?b ?r ?g))
                      )
        :constraints  (and  (before (and
                            (at ?b ?rb)
                            )
                        t1)
                      )
)

;------------------------------------------------------------------
;                        Go to a specific room
;------------------------------------------------------------------
(:method goto
        :parameters   (?r - room)
        :expansion    (     (tag t1 (nop))
                      )
        :constraints  (and  (before (and
                            (at-robby ?r)
                            )
                        t1)
                      )
)

(:method goto
        :parameters   (?r - room)
        :expansion    (     (tag t1 (move ?from ?r))
                      )
        :constraints  (and  (before (and
                            (at-robby ?from)
                            (not (= ?from ?r))
                            )
                        t1)
                      )
)

)
