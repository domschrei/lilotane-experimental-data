(define (domain entertainment)

(:requirements
  :strips
  :typing
  :negative-preconditions
  :htn
  :equality)

(:types equipment connector - object)

(:predicates 
    (audio_connected ?e1 - equipment ?e2 - equipment) 
    (audio_connector ?c - connector) 
    (compatible ?c1 - connector ?c2 - connector) 
    (conn_of ?e - equipment ?c - connector) 
    (in_connector ?c - connector) 
    (out_connector ?c - connector) 
    (unused ?c - connector) 
    (video_connected ?e1 - equipment ?e2 - equipment) 
    (video_connector ?c - connector)
    (equal ?o1 - object ?o2 - object)
)

;;;;;;;;;;; Actions ;;;;;;;;;;;;

(:action nop
  :parameters ()
  :precondition (and )
  :effect (and ))

; works

(:action plug_none
  :parameters (?e1 - equipment ?c1 - connector ?e2 - equipment ?c2 - connector)
  :precondition (and 
    (not (equal ?e1 ?e2))
    (unused ?c1)
    (unused ?c2) 
    (conn_of ?e1 ?c1) 
    (conn_of ?e2 ?c2) 
    (compatible ?c1 ?c2)
  )
  :effect (and
    (not (unused ?c1)) 
    (not (unused ?c2))
  )
)

(:action plug_a
  :parameters (?e1 - equipment ?c1 - connector ?e2 - equipment ?c2 - connector)
  :precondition (and 
    (not (equal ?e1 ?e2))
    (unused ?c1)
    (unused ?c2) 
    (conn_of ?e1 ?c1) 
    (conn_of ?e2 ?c2) 
    (compatible ?c1 ?c2)
    (audio_connector ?c1)
    (audio_connector ?c2)
  )
  :effect (and 
    (audio_connected ?e1 ?e2) 
    (not (unused ?c1)) 
    (not (unused ?c2))
  )
)

(:action plug_v
  :parameters (?e1 - equipment ?c1 - connector ?e2 - equipment ?c2 - connector)
  :precondition (and 
    (not (equal ?e1 ?e2)) 
    (unused ?c1) 
    (unused ?c2) 
    (conn_of ?e1 ?c1) 
    (conn_of ?e2 ?c2) 
    (compatible ?c1 ?c2)
    (video_connector ?c1) 
    (video_connector ?c2)
  )
  :effect (and 
    (video_connected ?e1 ?e2) 
    (not (unused ?c1)) 
    (not (unused ?c2))
  )
)

(:action plug_av
  :parameters (?e1 - equipment ?c1 - connector ?e2 - equipment ?c2 - connector)
  :precondition (and 
    (not (equal ?e1 ?e2)) 
    (unused ?c1) 
    (unused ?c2) 
    (conn_of ?e1 ?c1) 
    (conn_of ?e2 ?c2) 
    (compatible ?c1 ?c2) 
    (audio_connector ?c1) 
    (audio_connector ?c2) 
    (video_connector ?c1) 
    (video_connector ?c2)
  )
  :effect (and 
    (audio_connected ?e1 ?e2) 
    (video_connected ?e1 ?e2) 
    (not (unused ?c1)) 
    (not (unused ?c2))
  )
)

;; Virtual plug methods for when..then cases

; Video, not audio (1)
(:method plug
  :parameters (?e1 - equipment ?c1 - connector ?e2 - equipment ?c2 - connector)
  :expansion (
    (tag t0 (plug_v ?e1 ?c1 ?e2 ?c2))
  )
  :constraints (and 
  (before (and
    (not (audio_connector ?c1))
    (video_connector ?c1) 
    (video_connector ?c2)
  ) t0)
  )
)
; Video, not audio (2)
(:method plug
  :parameters (?e1 - equipment ?c1 - connector ?e2 - equipment ?c2 - connector)
  :expansion (
    (tag t0 (plug_v ?e1 ?c1 ?e2 ?c2))
  )
  :constraints (and 
  (before (and
    (not (audio_connector ?c2))
    (video_connector ?c1) 
    (video_connector ?c2)
  ) t0)
  )
)
; Audio, not video (1)
(:method plug
  :parameters (?e1 - equipment ?c1 - connector ?e2 - equipment ?c2 - connector)
  :expansion (
    (tag t0 (plug_a ?e1 ?c1 ?e2 ?c2))
  )
  :constraints (and 
  (before (and
    (not (video_connector ?c1))
    (audio_connector ?c1)
    (audio_connector ?c2)
  ) t0)
  )
)
; Audio, not video (2)
(:method plug
  :parameters (?e1 - equipment ?c1 - connector ?e2 - equipment ?c2 - connector)
  :expansion (
    (tag t0 (plug_a ?e1 ?c1 ?e2 ?c2))
  )
  :constraints (and 
  (before (and
    (not (video_connector ?c2))
    (audio_connector ?c1)
    (audio_connector ?c2)
  ) t0)
  )
)
; Audio AND video
(:method plug
  :parameters (?e1 - equipment ?c1 - connector ?e2 - equipment ?c2 - connector)
  :expansion (
    (tag t0 (plug_av ?e1 ?c1 ?e2 ?c2))
  )
  :constraints (and 
  (before (and
    (audio_connector ?c1) 
    (audio_connector ?c2) 
    (video_connector ?c1) 
    (video_connector ?c2)
  ) t0)
  )
)
;(:method plug
;  :parameters (?e1 - equipment ?c1 - connector ?e2 - equipment ?c2 - connector)
;  :expansion (
;    (tag t0 (plug_none ?e1 ?c1 ?e2 ?c2))
;  )
;  :constraints (and 
;  (before (and
;    (not (audio_connector ?c1))
;    (not (audio_connector ?c2))
;    (not (video_connector ?c1))
;    (not (video_connector ?c2))
;  ) t0)
;  )
;)

;;;;;;;;;;; Direct Plug Methods ;;;;;;;;;;;;

(:method direct_a_connect
  :parameters (?e1 - equipment ?e2 - equipment)
  :expansion (
    (tag t0 (plug ?e1 ?c1 ?e2 ?c2)) 
  )
  :constraints (and (before (and 
    (not (equal ?e1 ?e2))
    (audio_connector ?c1) 
    (audio_connector ?c2) 
    (out_connector ?c1) 
    (in_connector ?c2)
  ) t0))
)

(:method direct_a_connect
  :parameters (?e1 - equipment ?e2 - equipment)
  :expansion (
    (tag t0 (nop))
  )
  :constraints (and (before (and 
    (audio_connected ?e1 ?e2)
  ) t0))
)

; works
(:method direct_v_connect
  :parameters (?e1 - equipment ?e2 - equipment)
  :expansion (
    (tag t0 (plug ?e1 ?c1 ?e2 ?c2)) 
  )
  :constraints (and (before (and 
    (not (equal ?e1 ?e2)) 
    (video_connector ?c1) 
    (video_connector ?c2) 
    (out_connector ?c1) 
    (in_connector ?c2)
  ) t0))
)

(:method direct_v_connect
  :parameters (?e1 - equipment ?e2 - equipment)
  :expansion (
    (tag t0 (nop)) 
  )
  :constraints (and (before (and 
    (video_connected ?e1 ?e2)
  ) t0))
)

; works
(:method direct_av_connect
  :parameters (?e1 - equipment ?e2 - equipment)
  :expansion (
    (tag t0 (plug ?e1 ?c1 ?e2 ?c2)) 
  )
  :constraints (and (before (and 
    (not (equal ?e1 ?e2)) 
    (audio_connector ?c1) 
    (audio_connector ?c2) 
    (video_connector ?c1) 
    (video_connector ?c2) 
    (out_connector ?c1) 
    (in_connector ?c2)
  ) t0))
)
  
(:method direct_av_connect
  :parameters (?e1 - equipment ?e2 - equipment)
  :expansion (
    (tag t0 (nop)) 
  )
  :constraints (and (before (and 
    (audio_connected ?e1 ?e2) 
    (video_connected ?e1 ?e2)
  ) t0))
)

;;;;;;;;;;; Indirect Plug Methods ;;;;;;;;;;;;

(:method a_connect
  :parameters (?e1 - equipment ?e2 - equipment)
  :expansion (
    (tag t0 (direct_a_connect ?e1 ?e2)) 
  )
  :constraints (and ))

(:method a_connect
  :parameters (?e1 - equipment ?e2 - equipment)
  :expansion (
    (tag t0 (a_connect ?e1 ?ebetween)) 
    (tag t1 (direct_a_connect ?ebetween ?e2)) 
  )
  :constraints (and (before (and 
      (not (equal ?e1 ?ebetween)) 
      (not (equal ?ebetween ?e2))
  ) t0))
)

(:method v_connect
  :parameters (?e1 - equipment ?e2 - equipment)
  :expansion ((tag t0 (direct_v_connect ?e1 ?e2)) )
  :constraints (and ))

(:method v_connect
  :parameters (?e1 - equipment ?e2 - equipment)
  :expansion (
    (tag t0 (v_connect ?e1 ?ebetween)) 
    (tag t1 (direct_v_connect ?ebetween ?e2)) 
  )
  :constraints (and (before (and 
    (not (equal ?e1 ?ebetween)) 
    (not (equal ?ebetween ?e2))
  ) t0))
)

(:method av_connect
  :parameters (?e1 - equipment ?e2 - equipment)
  :expansion (
    (tag t0 (v_connect ?e1 ?e2)) 
    (tag t1 (a_connect ?e1 ?e2))
  )
  :constraints (and ))

(:method av_connect
  :parameters (?e1 - equipment ?e2 - equipment)
  :expansion (
    (tag t0 (v_connect ?e1 ?ebetween)) 
    (tag t1 (a_connect ?e1 ?ebetween)) 
    (tag t2 (av_connect ?ebetween ?e2)) 
  )
  :constraints (and (before (and 
    (not (equal ?e1 ?ebetween)) 
    (not (equal ?ebetween ?e2))
  ) t0))
)

; works
(:method av_connect
  :parameters (?e1 - equipment ?e2 - equipment)
  :expansion (
    (tag t0 (direct_av_connect ?e1 ?e2))
  )
  :constraints (and )
)

(:method av_connect
  :parameters (?e1 - equipment ?e2 - equipment)
  :expansion (
    (tag t0 (direct_av_connect ?e1 ?ebetween)) 
    (tag t1 (av_connect ?ebetween ?e2))
  )
  :constraints (and 
    (before (and 
      (not (equal ?e1 ?ebetween)) 
      (not (equal ?ebetween ?e2))
    ) t0)
  )
)
)
