(define (problem gripper-x-2 )
(:domain gripper-typed )
	(:requirements :strips :typing :negative-preconditions :htn :equality)

(:objects rooma roomb - room
             ball6 ball5 ball4 ball3 ball2 ball1 - ball )
(:init (at-robby rooma )
          (free left )
          (free right )
          (at ball6 rooma )
          (at ball5 rooma )
          (at ball4 rooma )
          (at ball3 rooma )
          (at ball2 rooma )
          (at ball1 rooma ) )
(:goal
	:tasks  (
		(tag t1 (move_two_balls ball1 ball2 roomb))
		(tag t2 (move_two_balls ball3 ball4 roomb))
		(tag t3 (move_two_balls ball5 ball6 roomb))

		)
	:constraints(and
			(after (and 						(at ball6 roomb )
               						(at ball5 roomb )
               						(at ball4 roomb )
               						(at ball3 roomb )
               						(at ball2 roomb )
               						(at ball1 roomb ) )
				 t1)
		)
))
