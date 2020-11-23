
(define (problem strips-sat-x-1)
(:domain satellite)
(:requirements :strips :typing :htn :negative-preconditions)

  ;---------------- Facts -----------------------
  (:objects
    satellite0 - satellite
  instrument0 - instrument
  instrument1 - instrument
  instrument2 - instrument
  satellite1 - satellite
  instrument3 - instrument
  instrument4 - instrument
  satellite2 - satellite
  instrument5 - instrument
  instrument6 - instrument
  satellite3 - satellite
  instrument7 - instrument
  instrument8 - instrument
  instrument9 - instrument
  satellite4 - satellite
  instrument10 - instrument
  instrument11 - instrument
  satellite5 - satellite
  instrument12 - instrument
  instrument13 - instrument
  satellite6 - satellite
  instrument14 - instrument
  instrument15 - instrument
  satellite7 - satellite
  instrument16 - instrument
  instrument17 - instrument
  instrument18 - instrument
  satellite8 - satellite
  instrument19 - instrument
  satellite9 - satellite
  instrument20 - instrument
  instrument21 - instrument
  instrument22 - instrument
  satellite10 - satellite
  instrument23 - instrument
  instrument24 - instrument
  satellite11 - satellite
  instrument25 - instrument
  satellite12 - satellite
  instrument26 - instrument
  instrument27 - instrument
  satellite13 - satellite
  instrument28 - instrument
  satellite14 - satellite
  instrument29 - instrument
  infrared1 - mode
  spectrograph4 - mode
  thermograph2 - mode
  infrared0 - mode
  image3 - mode
  GroundStation3 - direction
  Star4 - direction
  Star2 - direction
  Star0 - direction
  Star1 - direction
  Star5 - direction
  Planet6 - direction
  Phenomenon7 - direction
  Star8 - direction
  Phenomenon9 - direction
  Star10 - direction
  Star11 - direction
  Star12 - direction
  Planet13 - direction
  Planet14 - direction
  Phenomenon15 - direction
  Planet16 - direction
  Star17 - direction
  Star18 - direction
  Planet19 - direction
  Planet20 - direction
  Planet21 - direction
  Planet22 - direction
  Phenomenon23 - direction
  Star24 - direction
  Star25 - direction
  Star26 - direction
  Planet27 - direction
  Planet28 - direction
  Planet29 - direction
  Phenomenon30 - direction
  Phenomenon31 - direction
  Star32 - direction
  Phenomenon33 - direction
  Phenomenon34 - direction
  Planet35 - direction
  Star36 - direction
  Planet37 - direction
  Phenomenon38 - direction
  Star39 - direction
  Star40 - direction
  Phenomenon41 - direction
  Phenomenon42 - direction
  Planet43 - direction
  Phenomenon44 - direction
  Star45 - direction
  Phenomenon46 - direction
  Phenomenon47 - direction
  Phenomenon48 - direction
  Phenomenon49 - direction
  Planet50 - direction
  Star51 - direction
  Star52 - direction
  Star53 - direction
  Star54 - direction
  Phenomenon55 - direction
  Star56 - direction
  Star57 - direction
  Planet58 - direction
  Planet59 - direction
  Star60 - direction
  Star61 - direction
  Phenomenon62 - direction
  Phenomenon63 - direction
  Planet64 - direction
  Star65 - direction
  Planet66 - direction
  Phenomenon67 - direction
  Planet68 - direction
  Phenomenon69 - direction
  Star70 - direction
  Phenomenon71 - direction
  Star72 - direction
  Phenomenon73 - direction
  Planet74 - direction
  Planet75 - direction
  Phenomenon76 - direction
  Star77 - direction
  Phenomenon78 - direction
  Phenomenon79 - direction
  Phenomenon80 - direction
  Planet81 - direction
  Star82 - direction
  Planet83 - direction
  Star84 - direction
  Planet85 - direction
  Phenomenon86 - direction
  Phenomenon87 - direction
  Planet88 - direction
  Star89 - direction
  Planet90 - direction
  Star91 - direction
  Phenomenon92 - direction
  Star93 - direction
  Planet94 - direction
  Star95 - direction
  Star96 - direction
  Phenomenon97 - direction
  Planet98 - direction
  Star99 - direction
  Phenomenon100 - direction
  Star101 - direction
  Planet102 - direction
  Planet103 - direction
  Star104 - direction
  Phenomenon105 - direction
  Star106 - direction
  Planet107 - direction
  Planet108 - direction
  Planet109 - direction
  Planet110 - direction
  Star111 - direction
  Planet112 - direction
  Phenomenon113 - direction
  Phenomenon114 - direction
  Planet115 - direction
  Star116 - direction
  Star117 - direction
  Planet118 - direction
  Phenomenon119 - direction
  Phenomenon120 - direction
  Phenomenon121 - direction
  Phenomenon122 - direction
  Star123 - direction
  Star124 - direction
  Planet125 - direction
  Planet126 - direction
  Planet127 - direction
  Star128 - direction
  Phenomenon129 - direction
  Phenomenon130 - direction
  Star131 - direction
  Phenomenon132 - direction
  Phenomenon133 - direction
  Star134 - direction
  Star135 - direction
  Star136 - direction
  Phenomenon137 - direction
  Planet138 - direction
  Planet139 - direction
  Phenomenon140 - direction
  Phenomenon141 - direction
  Star142 - direction
  Phenomenon143 - direction
  Star144 - direction
  Phenomenon145 - direction
  Phenomenon146 - direction
  Planet147 - direction
  Phenomenon148 - direction
  Phenomenon149 - direction
  Star150 - direction
  Planet151 - direction
  Phenomenon152 - direction
  Phenomenon153 - direction
  Planet154 - direction
  )

  ;--------------- Initial State -----------------
  (:init
      (supports instrument0 infrared0)
  (supports instrument0 infrared1)
  (supports instrument0 image3)
  (calibration_target instrument0 Star4)
  (supports instrument1 thermograph2)
  (supports instrument1 infrared0)
  (supports instrument1 image3)
  (calibration_target instrument1 Star2)
  (supports instrument2 infrared1)
  (supports instrument2 infrared0)
  (calibration_target instrument2 Star1)
  (on_board instrument0 satellite0)
  (on_board instrument1 satellite0)
  (on_board instrument2 satellite0)
  (power_avail satellite0)
  (pointing satellite0 Planet103)
  (supports instrument3 infrared0)
  (supports instrument3 thermograph2)
  (supports instrument3 image3)
  (calibration_target instrument3 GroundStation3)
  (supports instrument4 spectrograph4)
  (supports instrument4 image3)
  (supports instrument4 infrared0)
  (calibration_target instrument4 Star2)
  (on_board instrument3 satellite1)
  (on_board instrument4 satellite1)
  (power_avail satellite1)
  (pointing satellite1 Phenomenon105)
  (supports instrument5 spectrograph4)
  (calibration_target instrument5 Star2)
  (supports instrument6 infrared1)
  (supports instrument6 thermograph2)
  (calibration_target instrument6 GroundStation3)
  (on_board instrument5 satellite2)
  (on_board instrument6 satellite2)
  (power_avail satellite2)
  (pointing satellite2 Planet94)
  (supports instrument7 image3)
  (supports instrument7 thermograph2)
  (calibration_target instrument7 Star2)
  (supports instrument8 spectrograph4)
  (supports instrument8 thermograph2)
  (supports instrument8 image3)
  (calibration_target instrument8 Star1)
  (supports instrument9 infrared1)
  (supports instrument9 thermograph2)
  (calibration_target instrument9 Star0)
  (on_board instrument7 satellite3)
  (on_board instrument8 satellite3)
  (on_board instrument9 satellite3)
  (power_avail satellite3)
  (pointing satellite3 Phenomenon30)
  (supports instrument10 image3)
  (supports instrument10 infrared1)
  (calibration_target instrument10 Star4)
  (supports instrument11 infrared1)
  (supports instrument11 image3)
  (calibration_target instrument11 GroundStation3)
  (on_board instrument10 satellite4)
  (on_board instrument11 satellite4)
  (power_avail satellite4)
  (pointing satellite4 Phenomenon33)
  (supports instrument12 infrared0)
  (supports instrument12 infrared1)
  (calibration_target instrument12 Star2)
  (supports instrument13 infrared1)
  (supports instrument13 image3)
  (supports instrument13 infrared0)
  (calibration_target instrument13 Star2)
  (on_board instrument12 satellite5)
  (on_board instrument13 satellite5)
  (power_avail satellite5)
  (pointing satellite5 Planet125)
  (supports instrument14 infrared1)
  (supports instrument14 thermograph2)
  (supports instrument14 infrared0)
  (calibration_target instrument14 Star0)
  (supports instrument15 infrared0)
  (supports instrument15 image3)
  (calibration_target instrument15 Star1)
  (on_board instrument14 satellite6)
  (on_board instrument15 satellite6)
  (power_avail satellite6)
  (pointing satellite6 Phenomenon105)
  (supports instrument16 image3)
  (supports instrument16 infrared1)
  (calibration_target instrument16 Star2)
  (supports instrument17 spectrograph4)
  (supports instrument17 infrared0)
  (supports instrument17 infrared1)
  (calibration_target instrument17 Star4)
  (supports instrument18 infrared1)
  (calibration_target instrument18 Star0)
  (on_board instrument16 satellite7)
  (on_board instrument17 satellite7)
  (on_board instrument18 satellite7)
  (power_avail satellite7)
  (pointing satellite7 Phenomenon122)
  (supports instrument19 thermograph2)
  (supports instrument19 infrared0)
  (supports instrument19 image3)
  (calibration_target instrument19 Star1)
  (on_board instrument19 satellite8)
  (power_avail satellite8)
  (pointing satellite8 Phenomenon121)
  (supports instrument20 image3)
  (supports instrument20 infrared1)
  (calibration_target instrument20 Star1)
  (supports instrument21 infrared1)
  (supports instrument21 image3)
  (supports instrument21 spectrograph4)
  (calibration_target instrument21 Star4)
  (supports instrument22 spectrograph4)
  (supports instrument22 thermograph2)
  (supports instrument22 infrared1)
  (calibration_target instrument22 Star0)
  (on_board instrument20 satellite9)
  (on_board instrument21 satellite9)
  (on_board instrument22 satellite9)
  (power_avail satellite9)
  (pointing satellite9 Phenomenon129)
  (supports instrument23 infrared1)
  (calibration_target instrument23 Star2)
  (supports instrument24 spectrograph4)
  (supports instrument24 image3)
  (supports instrument24 thermograph2)
  (calibration_target instrument24 Star1)
  (on_board instrument23 satellite10)
  (on_board instrument24 satellite10)
  (power_avail satellite10)
  (pointing satellite10 Planet28)
  (supports instrument25 infrared1)
  (supports instrument25 infrared0)
  (supports instrument25 image3)
  (calibration_target instrument25 Star2)
  (on_board instrument25 satellite11)
  (power_avail satellite11)
  (pointing satellite11 Planet81)
  (supports instrument26 infrared0)
  (supports instrument26 spectrograph4)
  (supports instrument26 infrared1)
  (calibration_target instrument26 Star1)
  (supports instrument27 thermograph2)
  (supports instrument27 spectrograph4)
  (calibration_target instrument27 Star0)
  (on_board instrument26 satellite12)
  (on_board instrument27 satellite12)
  (power_avail satellite12)
  (pointing satellite12 Planet14)
  (supports instrument28 infrared0)
  (supports instrument28 thermograph2)
  (calibration_target instrument28 Star1)
  (on_board instrument28 satellite13)
  (power_avail satellite13)
  (pointing satellite13 Phenomenon9)
  (supports instrument29 image3)
  (calibration_target instrument29 Star1)
  (on_board instrument29 satellite14)
  (power_avail satellite14)
  (pointing satellite14 Star2)
  )

  (:goal
        :tasks  (
                    (tag t1   (do_mission Star5 image3) )
                    (tag t2   (do_mission Planet6 infrared1) )
                    (tag t3   (do_mission Phenomenon7 infrared1) )
                    (tag t4   (do_mission Star8 image3) ) 
                    (tag t5   (do_mission Star10 thermograph2) )
                    (tag t6   (do_mission Star11 infrared1) )
                    (tag t7   (do_mission Planet13 spectrograph4) )
                    (tag t8   (do_mission Planet14 thermograph2) )
                    (tag t9   (do_mission Phenomenon15 infrared0) )
                    (tag t10  (do_mission Planet16 image3) )
                    (tag t11  (do_mission Star17 infrared0) )
                    (tag t12  (do_mission Planet20 infrared1) )
                    (tag t13  (do_mission Planet21 image3) )
                    (tag t14  (do_mission Planet22 thermograph2) )
                    (tag t15  (do_mission Phenomenon23 infrared0) )
                    (tag t16  (do_mission Star24 thermograph2) )
                    (tag t17  (do_mission Star25 thermograph2) )
                    (tag t18  (do_mission Star26 infrared1) )
                    (tag t19  (do_mission Planet27 spectrograph4) )
                    (tag t20  (do_mission Planet28 infrared1) )
                    (tag t21  (do_mission Phenomenon30 image3) )
                    (tag t22  (do_mission Phenomenon31 infrared1) )
                    (tag t23  (do_mission Star32 thermograph2) )
                    (tag t24  (do_mission Phenomenon33 spectrograph4) )
                    (tag t25  (do_mission Phenomenon34 image3) )
                    (tag t26  (do_mission Planet35 spectrograph4) )
                    (tag t27  (do_mission Star36 spectrograph4) )
                    (tag t28  (do_mission Phenomenon38 infrared1) )
                    (tag t29  (do_mission Star39 image3) )
                    (tag t30  (do_mission Star40 infrared1) )
                    (tag t31  (do_mission Phenomenon41 spectrograph4) )
                    (tag t32  (do_mission Phenomenon42 thermograph2) )
                    (tag t33  (do_mission Phenomenon44 image3) )
                    (tag t34  (do_mission Star45 image3) )
                    (tag t35  (do_mission Phenomenon46 infrared0) )
                    (tag t36  (do_mission Phenomenon47 infrared0) )
                    (tag t37  (do_mission Phenomenon48 infrared0) )
                    (tag t38  (do_mission Phenomenon49 infrared1) )
                    (tag t39  (do_mission Planet50 infrared1) )
                    (tag t40  (do_mission Star51 spectrograph4) )
                    (tag t41  (do_mission Star54 infrared1) )
                    (tag t42  (do_mission Phenomenon55 infrared1) )
                    (tag t43  (do_mission Star56 image3) )
                    (tag t44  (do_mission Planet58 spectrograph4) ) 
                    (tag t45  (do_mission Planet59 infrared1) )
                    (tag t46  (do_mission Star60 image3) )
                    (tag t47  (do_mission Phenomenon62 spectrograph4) )
                    (tag t48  (do_mission Phenomenon63 spectrograph4) )
                    (tag t49  (do_mission Planet64 infrared0) )
                    (tag t50  (do_mission Planet66 image3) )
                    (tag t51  (do_mission Phenomenon67 image3) )
                    (tag t52  (do_mission Phenomenon69 infrared0) )
                    (tag t53  (do_mission Phenomenon71 image3) )
                    (tag t54  (do_mission Star72 infrared1) )
                    (tag t55  (do_mission Phenomenon73 thermograph2) )
                    (tag t56  (do_mission Planet74 infrared0) )
                    (tag t57  (do_mission Planet75 infrared0) )
                    (tag t58  (do_mission Phenomenon76 image3) )
                    (tag t59  (do_mission Star77 infrared1) )
                    (tag t60  (do_mission Phenomenon78 spectrograph4) )
                    (tag t61  (do_mission Phenomenon79 image3) )
                    (tag t62  (do_mission Phenomenon80 image3) )
                    (tag t63  (do_mission Planet81 spectrograph4) )
                    (tag t64  (do_mission Star82 infrared1) )
                    (tag t65  (do_mission Planet83 infrared0) )
                    (tag t66  (do_mission Star84 spectrograph4) )
                    (tag t67  (do_mission Planet85 infrared0) )
                    (tag t68  (do_mission Phenomenon87 thermograph2) )
                    (tag t69  (do_mission Planet88 thermograph2) )
                    (tag t70  (do_mission Star89 infrared1) )
                    (tag t71  (do_mission Planet90 spectrograph4) )
                    (tag t72  (do_mission Star91 spectrograph4) )
                    (tag t73  (do_mission Phenomenon92 thermograph2) )
                    (tag t74  (do_mission Star93 infrared1) )
                    (tag t75  (do_mission Planet94 thermograph2) )
                    (tag t76  (do_mission Star95 infrared1) )
                    (tag t77  (do_mission Star96 infrared1) )
                    (tag t78  (do_mission Phenomenon97 spectrograph4) )
                    (tag t79  (do_mission Planet98 thermograph2) )
                    (tag t80  (do_mission Star99 thermograph2) )
                    (tag t81  (do_mission Phenomenon100 spectrograph4) )
                    (tag t82  (do_mission Star101 image3) )
                    (tag t83  (do_mission Planet102 infrared0) )
                    (tag t84  (do_mission Planet103 image3) ) 
                    (tag t85  (do_mission Star104 thermograph2) )
                    (tag t86  (do_mission Phenomenon105 infrared0) )
                    (tag t87  (do_mission Star106 spectrograph4) )
                    (tag t88  (do_mission Planet107 image3) )
                    (tag t89  (do_mission Planet108 infrared1) )
                    (tag t90  (do_mission Planet109 image3) )
                    (tag t91  (do_mission Planet110 image3) )
                    (tag t92  (do_mission Star111 infrared0) )
                    (tag t93  (do_mission Planet112 spectrograph4) )
                    (tag t94  (do_mission Phenomenon113 image3) )
                    (tag t95  (do_mission Phenomenon114 infrared0) )
                    (tag t96  (do_mission Planet115 infrared1) )
                    (tag t97  (do_mission Star116 spectrograph4) )
                    (tag t98  (do_mission Star117 infrared0) )
                    (tag t99  (do_mission Phenomenon119 thermograph2) )
                    (tag t100 (do_mission Phenomenon120 thermograph2) )
                    (tag t101 (do_mission Phenomenon121 spectrograph4) )
                    (tag t102 (do_mission Phenomenon122 thermograph2) )
                    (tag t103 (do_mission Star123 spectrograph4) )
                    (tag t104 (do_mission Star124 image3) )
                    (tag t105 (do_mission Planet125 spectrograph4) )
                    (tag t106 (do_mission Planet126 spectrograph4) )
                    (tag t107 (do_mission Planet127 spectrograph4) )
                    (tag t108 (do_mission Star128 thermograph2) )
                    (tag t109 (do_mission Phenomenon129 infrared0) )
                    (tag t110 (do_mission Star131 infrared0) )
                    (tag t111 (do_mission Phenomenon132 infrared1) )
                    (tag t112 (do_mission Phenomenon133 image3) )
                    (tag t113 (do_mission Star134 image3) )
                    (tag t114 (do_mission Star136 thermograph2) )
                    (tag t115 (do_mission Phenomenon137 infrared1) )
                    (tag t116 (do_mission Planet138 spectrograph4) )
                    (tag t117 (do_mission Planet139 image3) )
                    (tag t118 (do_mission Phenomenon140 infrared0) )
                    (tag t119 (do_mission Star142 spectrograph4) )
                    (tag t120 (do_mission Phenomenon143 infrared1) )
                    (tag t121 (do_mission Star144 thermograph2) )
                    (tag t122 (do_mission Phenomenon145 infrared0) )
                    (tag t123 (do_mission Planet147 spectrograph4) )
                    (tag t124 (do_mission Phenomenon148 spectrograph4) ) 
                    (tag t125 (do_mission Phenomenon149 infrared1) )
                    (tag t126 (do_mission Star150 infrared0) )
                    (tag t127 (do_mission Planet151 infrared0) )
                    (tag t128 (do_mission Phenomenon152 infrared0) )
                    (tag t129 (do_mission Phenomenon153 infrared1) )
                    (tag t130 (do_mission Planet154 infrared1) )
                    (tag t131 (do_turning satellite4 Phenomenon31) )
                    (tag t132 (do_turning satellite5 Phenomenon148) )
                    (tag t133 (do_turning satellite9 Star0) )
                )
        :constraints(and
                        (after (and 
                                    (have_image Star5 image3)
                                    (have_image Planet6 infrared1)
                                    (have_image Phenomenon7 infrared1)
                                    (have_image Star8 image3)
                                    (have_image Star10 thermograph2)
                                    (have_image Star11 infrared1)
                                    (have_image Planet13 spectrograph4)
                                    (have_image Planet14 thermograph2)
                                    (have_image Phenomenon15 infrared0)
                                    (have_image Planet16 image3)
                                    (have_image Star17 infrared0)
                                    (have_image Planet20 infrared1)
                                    (have_image Planet21 image3)
                                    (have_image Planet22 thermograph2)
                                    (have_image Phenomenon23 infrared0)
                                    (have_image Star24 thermograph2)
                                    (have_image Star25 thermograph2)
                                    (have_image Star26 infrared1)
                                    (have_image Planet27 spectrograph4)
                                    (have_image Planet28 infrared1)
                                    (have_image Phenomenon30 image3)
                                    (have_image Phenomenon31 infrared1)
                                    (have_image Star32 thermograph2)
                                    (have_image Phenomenon33 spectrograph4)
                                    (have_image Phenomenon34 image3)
                                    (have_image Planet35 spectrograph4)
                                    (have_image Star36 spectrograph4)
                                    (have_image Phenomenon38 infrared1)
                                    (have_image Star39 image3)
                                    (have_image Star40 infrared1)
                                    (have_image Phenomenon41 spectrograph4)
                                    (have_image Phenomenon42 thermograph2)
                                    (have_image Phenomenon44 image3)
                                    (have_image Star45 image3)
                                    (have_image Phenomenon46 infrared0)
                                    (have_image Phenomenon47 infrared0)
                                    (have_image Phenomenon48 infrared0)
                                    (have_image Phenomenon49 infrared1)
                                    (have_image Planet50 infrared1)
                                    (have_image Star51 spectrograph4)
                                    (have_image Star54 infrared1)
                                    (have_image Phenomenon55 infrared1)
                                    (have_image Star56 image3)
                                    (have_image Planet58 spectrograph4)
                                    (have_image Planet59 infrared1)
                                    (have_image Star60 image3)
                                    (have_image Phenomenon62 spectrograph4)
                                    (have_image Phenomenon63 spectrograph4)
                                    (have_image Planet64 infrared0)
                                    (have_image Planet66 image3)
                                    (have_image Phenomenon67 image3)
                                    (have_image Phenomenon69 infrared0)
                                    (have_image Phenomenon71 image3)
                                    (have_image Star72 infrared1)
                                    (have_image Phenomenon73 thermograph2)
                                    (have_image Planet74 infrared0)
                                    (have_image Planet75 infrared0)
                                    (have_image Phenomenon76 image3)
                                    (have_image Star77 infrared1)
                                    (have_image Phenomenon78 spectrograph4)
                                    (have_image Phenomenon79 image3)
                                    (have_image Phenomenon80 image3)
                                    (have_image Planet81 spectrograph4)
                                    (have_image Star82 infrared1)
                                    (have_image Planet83 infrared0)
                                    (have_image Star84 spectrograph4)
                                    (have_image Planet85 infrared0)
                                    (have_image Phenomenon87 thermograph2)
                                    (have_image Planet88 thermograph2)
                                    (have_image Star89 infrared1)
                                    (have_image Planet90 spectrograph4)
                                    (have_image Star91 spectrograph4)
                                    (have_image Phenomenon92 thermograph2)
                                    (have_image Star93 infrared1)
                                    (have_image Planet94 thermograph2)
                                    (have_image Star95 infrared1)
                                    (have_image Star96 infrared1)
                                    (have_image Phenomenon97 spectrograph4)
                                    (have_image Planet98 thermograph2)
                                    (have_image Star99 thermograph2)
                                    (have_image Phenomenon100 spectrograph4)
                                    (have_image Star101 image3)
                                    (have_image Planet102 infrared0)
                                    (have_image Planet103 image3)
                                    (have_image Star104 thermograph2)
                                    (have_image Phenomenon105 infrared0)
                                    (have_image Star106 spectrograph4)
                                    (have_image Planet107 image3)
                                    (have_image Planet108 infrared1)
                                    (have_image Planet109 image3)
                                    (have_image Planet110 image3)
                                    (have_image Star111 infrared0)
                                    (have_image Planet112 spectrograph4)
                                    (have_image Phenomenon113 image3)
                                    (have_image Phenomenon114 infrared0)
                                    (have_image Planet115 infrared1)
                                    (have_image Star116 spectrograph4)
                                    (have_image Star117 infrared0)
                                    (have_image Phenomenon119 thermograph2)
                                    (have_image Phenomenon120 thermograph2)
                                    (have_image Phenomenon121 spectrograph4)
                                    (have_image Phenomenon122 thermograph2)
                                    (have_image Star123 spectrograph4)
                                    (have_image Star124 image3)
                                    (have_image Planet125 spectrograph4)
                                    (have_image Planet126 spectrograph4)
                                    (have_image Planet127 spectrograph4)
                                    (have_image Star128 thermograph2)
                                    (have_image Phenomenon129 infrared0)
                                    (have_image Star131 infrared0)
                                    (have_image Phenomenon132 infrared1)
                                    (have_image Phenomenon133 image3)
                                    (have_image Star134 image3)
                                    (have_image Star136 thermograph2)
                                    (have_image Phenomenon137 infrared1)
                                    (have_image Planet138 spectrograph4)
                                    (have_image Planet139 image3)
                                    (have_image Phenomenon140 infrared0)
                                    (have_image Star142 spectrograph4)
                                    (have_image Phenomenon143 infrared1)
                                    (have_image Star144 thermograph2)
                                    (have_image Phenomenon145 infrared0)
                                    (have_image Planet147 spectrograph4)
                                    (have_image Phenomenon148 spectrograph4)
                                    (have_image Phenomenon149 infrared1)
                                    (have_image Star150 infrared0)
                                    (have_image Planet151 infrared0)
                                    (have_image Phenomenon152 infrared0)
                                    (have_image Phenomenon153 infrared1)
                                    (have_image Planet154 infrared1)
                                    (pointing satellite4 Phenomenon31)
                                    (pointing satellite5 Phenomenon148)
                                    (pointing satellite9 Star0)
                                ) t133)
                    )
)
