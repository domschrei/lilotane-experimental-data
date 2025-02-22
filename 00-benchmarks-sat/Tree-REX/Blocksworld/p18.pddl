(define (problem BW-rand-39)
(:domain blocksworld)
(:requirements :strips :typing :negative-preconditions :htn :equality)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 - block)
(:init
(handempty)
(on b1 b39)
(on b2 b11)
(on b3 b32)
(on b4 b6)
(ontable b5)
(ontable b6)
(on b7 b19)
(on b8 b25)
(on b9 b34)
(on b10 b3)
(on b11 b30)
(on b12 b8)
(on b13 b38)
(on b14 b4)
(ontable b15)
(on b16 b24)
(on b17 b22)
(on b18 b23)
(on b19 b2)
(on b20 b26)
(on b21 b1)
(ontable b22)
(on b23 b7)
(on b24 b29)
(on b25 b31)
(on b26 b35)
(on b27 b5)
(on b28 b17)
(on b29 b14)
(on b30 b15)
(on b31 b36)
(on b32 b13)
(on b33 b12)
(on b34 b33)
(on b35 b18)
(ontable b36)
(ontable b37)
(on b38 b27)
(ontable b39)
(clear b9)
(clear b10)
(clear b16)
(clear b20)
(clear b21)
(clear b28)
(clear b37)
)
(:goal :tasks (
(tag t1 (do_put_on b15 b36))
(tag t2 (do_put_on b21 b15))
(tag t3 (do_put_on b27 b21))
(tag t4 (do_put_on b3 b27))
(tag t5 (do_put_on b22 b3))
(tag t6 (do_put_on b13 b22))
(tag t7 (do_put_on b37 b13))
(tag t8 (do_put_on b6 b37))
(tag t9 (do_put_on b9 b6))
(tag t10 (do_put_on b11 b9))
(tag t11 (do_put_on b25 b11))
(tag t12 (do_put_on b17 b25))
(tag t13 (do_put_on b31 b17))
(tag t14 (do_put_on b14 b31))
(tag t15 (do_put_on b10 b14))
(tag t16 (do_put_on b18 b10))
(tag t17 (do_put_on b1 b18))
(tag t18 (do_put_on b32 b1))
(tag t19 (do_put_on b33 b32))
(tag t20 (do_put_on b15 b36))
(tag t21 (do_put_on b21 b15))
(tag t22 (do_put_on b27 b21))
(tag t23 (do_put_on b3 b27))
(tag t24 (do_put_on b22 b3))
(tag t25 (do_put_on b13 b22))
(tag t26 (do_put_on b37 b13))
(tag t27 (do_put_on b6 b37))
(tag t28 (do_put_on b9 b6))
(tag t29 (do_put_on b11 b9))
(tag t30 (do_put_on b25 b11))
(tag t31 (do_put_on b17 b25))
(tag t32 (do_put_on b31 b17))
(tag t33 (do_put_on b14 b31))
(tag t34 (do_put_on b10 b14))
(tag t35 (do_put_on b18 b10))
(tag t36 (do_put_on b1 b18))
(tag t37 (do_put_on b32 b1))
(tag t38 (do_put_on b33 b32))
(tag t39 (do_put_on b4 b33))
(tag t40 (do_put_on b12 b4))
(tag t41 (do_put_on b26 b8))
(tag t42 (do_put_on b19 b26))
(tag t43 (do_put_on b30 b19))
(tag t44 (do_put_on b24 b30))
(tag t45 (do_put_on b5 b24))
(tag t46 (do_put_on b28 b5))
(tag t47 (do_put_on b16 b29))
(tag t48 (do_put_on b39 b35))
(tag t49 (do_put_on b20 b39))
(tag t50 (do_put_on b2 b20))
(tag t51 (do_put_on b7 b2))
(tag t52 (do_put_on b34 b7))
(tag t53 (do_put_on b23 b34))
) :constraints(and (after 
(and
(on b1 b18)
(on b2 b20)
(on b3 b27)
(on b4 b33)
(on b5 b24)
(on b6 b37)
(on b7 b2)
(on b9 b6)
(on b10 b14)
(on b11 b9)
(on b12 b4)
(on b13 b22)
(on b14 b31)
(on b15 b36)
(on b16 b29)
(on b17 b25)
(on b18 b10)
(on b19 b26)
(on b20 b39)
(on b21 b15)
(on b22 b3)
(on b23 b34)
(on b24 b30)
(on b25 b11)
(on b26 b8)
(on b27 b21)
(on b28 b5)
(on b30 b19)
(on b31 b17)
(on b32 b1)
(on b33 b32)
(on b34 b7)
(on b37 b13)
(on b39 b35)) t53)
)
)
)
