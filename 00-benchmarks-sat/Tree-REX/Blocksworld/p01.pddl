(define (problem BW-rand-5)
(:domain blocksworld)
(:requirements :strips :typing :negative-preconditions :htn :equality)
(:objects b1 b2 b3 b4 b5 - block)
(:init
(handempty)
(ontable b1)
(on b2 b3)
(on b3 b5)
(on b4 b1)
(on b5 b4)
(clear b2)
)
(:goal :tasks (
(tag t1 (do_put_on b4 b2))
(tag t2 (do_put_on b1 b4))
(tag t3 (do_put_on b3 b1))
) :constraints(and (after 
(and
(on b1 b4)
(on b3 b1)
(on b4 b2)) t3)
)
)
)
