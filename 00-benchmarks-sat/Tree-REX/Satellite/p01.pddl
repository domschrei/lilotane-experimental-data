        ; child-snack task with 10 children and 0.4 gluten factor 
; constant factor of 1.3
; random seed: 234324

(define (problem strips-sat-x-1)
(:domain satellite)
(:requirements :strips :typing :htn :negative-preconditions)

  ;---------------- Facts -----------------------
  (:objects
    satellite0 - satellite
    instrument0 - instrument
    image1 - mode
    spectrograph2 - mode
    thermograph0 - mode
    Star0 - direction
    GroundStation1 - direction
    GroundStation2 - direction
    Phenomenon3 - direction
    Phenomenon4 - direction
    Star5 - direction
    Phenomenon6 - direction
  )

  ;--------------- Initial State -----------------
  (:init
     (supports instrument0 thermograph0)
    (calibration_target instrument0 GroundStation2)
    (on_board instrument0 satellite0)
    (power_avail satellite0)
    (pointing satellite0 Phenomenon6)
  )

  (:goal
        :tasks  (
                    (tag t1  (do_mission Phenomenon4 thermograph0)  )
                    (tag t2  (do_mission Star5 thermograph0)        )
                    (tag t3  (do_mission Phenomenon6 thermograph0)  )
                )
        :constraints(and
                        (after (and 
                                    (have_image Phenomenon4 thermograph0)
                                    (have_image Star5 thermograph0)
                                    (have_image Phenomenon6 thermograph0)
                                ) t3)
                    )
)
