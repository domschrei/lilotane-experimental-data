(define (problem BW-rand-35)
(:domain blocksworld)
(:requirements :strips :typing :negative-preconditions :htn :equality)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 - block)
(:init
(handempty)
(on b1 b35)
(on b2 b22)
(on b3 b23)
(on b4 b20)
(ontable b5)
(ontable b6)
(on b7 b11)
(on b8 b6)
(ontable b9)
(on b10 b3)
(on b11 b21)
(on b12 b27)
(on b13 b26)
(on b14 b31)
(on b15 b29)
(ontable b16)
(on b17 b19)
(on b18 b5)
(ontable b19)
(on b20 b10)
(on b21 b18)
(on b22 b30)
(on b23 b34)
(on b24 b4)
(on b25 b12)
(on b26 b33)
(on b27 b28)
(on b28 b14)
(on b29 b32)
(on b30 b13)
(on b31 b8)
(on b32 b25)
(on b33 b15)
(on b34 b16)
(on b35 b9)
(clear b1)
(clear b2)
(clear b7)
(clear b17)
(clear b24)
)
(:goal :tasks (
(tag t1 (do_put_on b29 b14))
(tag t2 (do_put_on b26 b29))
(tag t3 (do_put_on b8 b26))
(tag t4 (do_put_on b32 b8))
(tag t5 (do_put_on b13 b32))
(tag t6 (do_put_on b2 b13))
(tag t7 (do_put_on b1 b2))
(tag t8 (do_put_on b24 b1))
(tag t9 (do_put_on b30 b24))
(tag t10 (do_put_on b18 b21))
(tag t11 (do_put_on b10 b18))
(tag t12 (do_put_on b20 b10))
(tag t13 (do_put_on b34 b20))
(tag t14 (do_put_on b23 b9))
(tag t15 (do_put_on b17 b23))
(tag t16 (do_put_on b27 b17))
(tag t17 (do_put_on b12 b27))
(tag t18 (do_put_on b35 b12))
(tag t19 (do_put_on b15 b35))
(tag t20 (do_put_on b16 b33))
(tag t21 (do_put_on b28 b16))
(tag t22 (do_put_on b4 b5))
(tag t23 (do_put_on b3 b4))
(tag t24 (do_put_on b31 b3))
(tag t25 (do_put_on b19 b31))
(tag t26 (do_put_on b7 b19))
(tag t27 (do_put_on b11 b7))
(tag t28 (do_put_on b25 b11))
(tag t29 (do_put_on b22 b25))
) :constraints(and (after 
(and
(on b1 b2)
(on b2 b13)
(on b3 b4)
(on b4 b5)
(on b7 b19)
(on b8 b26)
(on b10 b18)
(on b11 b7)
(on b12 b27)
(on b13 b32)
(on b15 b35)
(on b16 b33)
(on b17 b23)
(on b18 b21)
(on b19 b31)
(on b20 b10)
(on b22 b25)
(on b23 b9)
(on b24 b1)
(on b25 b11)
(on b26 b29)
(on b27 b17)
(on b28 b16)
(on b29 b14)
(on b30 b24)
(on b31 b3)
(on b32 b8)
(on b34 b20)
(on b35 b12)) t29)
)
)
)
