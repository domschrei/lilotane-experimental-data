(define (problem BW-rand-15)
(:domain blocksworld)
(:requirements :strips :typing :negative-preconditions :htn :equality)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 - block)
(:init
(handempty)
(on b1 b14)
(on b2 b6)
(on b3 b4)
(on b4 b2)
(on b5 b11)
(on b6 b9)
(on b7 b1)
(ontable b8)
(on b9 b8)
(ontable b10)
(ontable b11)
(on b12 b13)
(on b13 b10)
(ontable b14)
(on b15 b7)
(clear b3)
(clear b5)
(clear b12)
(clear b15)
)
(:goal :tasks (
(tag t1 (do_put_on b14 b7))
(tag t2 (do_put_on b15 b14))
(tag t3 (do_put_on b5 b15))
(tag t4 (do_put_on b1 b5))
(tag t5 (do_put_on b8 b1))
(tag t6 (do_put_on b2 b13))
(tag t7 (do_put_on b9 b2))
(tag t8 (do_put_on b12 b6))
(tag t9 (do_put_on b3 b12))
(tag t10 (do_put_on b4 b3))
(tag t11 (do_put_on b11 b4))
(tag t12 (do_put_on b10 b11))
) :constraints(and (after 
(and
(on b1 b5)
(on b2 b13)
(on b3 b12)
(on b4 b3)
(on b5 b15)
(on b8 b1)
(on b9 b2)
(on b10 b11)
(on b11 b4)
(on b12 b6)
(on b14 b7)
(on b15 b14)) t12)
)
)
)
