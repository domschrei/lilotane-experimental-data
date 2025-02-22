(define (problem BW-rand-7)
(:domain blocksworld)
(:requirements :strips :typing :negative-preconditions :htn :equality)
(:objects b1 b2 b3 b4 b5 b6 b7 - block)
(:init
(handempty)
(on b1 b7)
(ontable b2)
(on b3 b6)
(ontable b4)
(on b5 b1)
(on b6 b5)
(ontable b7)
(clear b2)
(clear b3)
(clear b4)
)
(:goal :tasks (
(tag t1 (do_put_on b3 b5))
(tag t2 (do_put_on b6 b3))
(tag t3 (do_put_on b1 b6))
(tag t4 (do_put_on b2 b1))
(tag t5 (do_put_on b4 b2))
(tag t6 (do_put_on b7 b4))
) :constraints(and (after 
(and
(on b1 b6)
(on b2 b1)
(on b3 b5)
(on b4 b2)
(on b6 b3)
(on b7 b4)) t6)
)
)
)
