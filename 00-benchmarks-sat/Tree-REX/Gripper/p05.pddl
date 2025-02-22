(define (problem gripper-x-5 )
(:domain gripper-typed )
	(:requirements :strips :typing :negative-preconditions :htn :equality)

(:objects rooma roomb - room
             ball12 ball11 ball10 ball9 ball8 ball7 ball6 ball5 ball4 ball3
             ball2 ball1 - ball )
(:init (at-robby rooma )
          (free left )
          (free right )
          (at ball12 rooma )
          (at ball11 rooma )
          (at ball10 rooma )
          (at ball9 rooma )
          (at ball8 rooma )
          (at ball7 rooma )
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
		(tag t4 (move_two_balls ball7 ball8 roomb))
		(tag t5 (move_two_balls ball9 ball10 roomb))
		(tag t6 (move_two_balls ball11 ball12 roomb))
		)
	:constraints(and
			(after (and 						(at ball12 roomb )
               						(at ball11 roomb )
               						(at ball10 roomb )
               						(at ball9 roomb )
               						(at ball8 roomb )
               						(at ball7 roomb )
               						(at ball6 roomb )
               						(at ball5 roomb )
               						(at ball4 roomb )
               						(at ball3 roomb )
               						(at ball2 roomb )
               						(at ball1 roomb ) )
				 t1)
		)
))
