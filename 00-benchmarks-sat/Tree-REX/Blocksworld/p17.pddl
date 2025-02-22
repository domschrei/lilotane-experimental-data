(define (problem BW-rand-37)
(:domain blocksworld)
(:requirements :strips :typing :negative-preconditions :htn :equality)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 - block)
(:init
(handempty)
(on b1 b25)
(on b2 b27)
(on b3 b32)
(on b4 b26)
(on b5 b21)
(on b6 b4)
(on b7 b12)
(on b8 b30)
(on b9 b17)
(on b10 b3)
(on b11 b14)
(on b12 b1)
(on b13 b6)
(on b14 b13)
(on b15 b2)
(on b16 b34)
(on b17 b24)
(on b18 b9)
(on b19 b33)
(on b20 b15)
(ontable b21)
(on b22 b19)
(on b23 b20)
(on b24 b10)
(on b25 b16)
(on b26 b23)
(on b27 b22)
(on b28 b7)
(ontable b29)
(ontable b30)
(on b31 b5)
(ontable b32)
(on b33 b18)
(ontable b34)
(on b35 b36)
(ontable b36)
(on b37 b29)
(clear b8)
(clear b11)
(clear b28)
(clear b31)
(clear b35)
(clear b37)
)
(:goal :tasks (
(tag t1 (do_put_on b1 b30))
(tag t2 (do_put_on b21 b1))
(tag t3 (do_put_on b26 b21))
(tag t4 (do_put_on b37 b32))
(tag t5 (do_put_on b27 b37))
(tag t6 (do_put_on b5 b27))
(tag t7 (do_put_on b8 b5))
(tag t8 (do_put_on b11 b8))
(tag t9 (do_put_on b17 b11))
(tag t10 (do_put_on b36 b17))
(tag t11 (do_put_on b22 b36))
(tag t12 (do_put_on b2 b22))
(tag t13 (do_put_on b18 b7))
(tag t14 (do_put_on b16 b18))
(tag t15 (do_put_on b10 b16))
(tag t16 (do_put_on b28 b10))
(tag t17 (do_put_on b13 b28))
(tag t18 (do_put_on b6 b13))
(tag t19 (do_put_on b34 b6))
(tag t20 (do_put_on b29 b34))
(tag t21 (do_put_on b20 b29))
(tag t22 (do_put_on b14 b20))
(tag t23 (do_put_on b12 b14))
(tag t24 (do_put_on b9 b12))
(tag t25 (do_put_on b23 b9))
(tag t26 (do_put_on b15 b23))
(tag t27 (do_put_on b35 b15))
(tag t28 (do_put_on b19 b35))
(tag t29 (do_put_on b4 b19))
(tag t30 (do_put_on b3 b4))
(tag t31 (do_put_on b25 b3))
(tag t32 (do_put_on b33 b25))
(tag t33 (do_put_on b24 b31))
) :constraints(and (after 
(and
(on b1 b30)
(on b2 b22)
(on b3 b4)
(on b4 b19)
(on b5 b27)
(on b6 b13)
(on b8 b5)
(on b9 b12)
(on b10 b16)
(on b11 b8)
(on b12 b14)
(on b13 b28)
(on b14 b20)
(on b15 b23)
(on b16 b18)
(on b17 b11)
(on b18 b7)
(on b19 b35)
(on b20 b29)
(on b21 b1)
(on b22 b36)
(on b23 b9)
(on b24 b31)
(on b25 b3)
(on b26 b21)
(on b27 b37)
(on b28 b10)
(on b29 b34)
(on b33 b25)
(on b34 b6)
(on b35 b15)
(on b36 b17)
(on b37 b32)) t33)
)
)
)
