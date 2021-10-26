(define (knowledge manufacturing_plant)
  (:problem mp_06)
  (:unknown-literals

     (flow_val valve1 f1) (flow_val valve1 f2)  (flow_val valve1 f3) (flow_val valve1 f4) (flow_val valve1 f5)
     (flow_val valve2 f1) (flow_val valve2 f2)  (flow_val valve2 f3) (flow_val valve2 f4) (flow_val valve2 f5)
     (flow_val valve3 f1) (flow_val valve3 f2)  (flow_val valve3 f3) (flow_val valve3 f4) (flow_val valve3 f5)
     (flow_val valve4 f1) (flow_val valve4 f2)  (flow_val valve4 f3) (flow_val valve4 f4) (flow_val valve4 f5)
     (flow_val valve5 f1) (flow_val valve5 f2)  (flow_val valve5 f3) (flow_val valve5 f4) (flow_val valve5 f5)
     (flow_val valve6 f1) (flow_val valve6 f2)  (flow_val valve6 f3) (flow_val valve6 f4)
     (flow_val valve7 f1) (flow_val valve7 f2)  (flow_val valve7 f3) (flow_val valve7 f4)
     (flow_val valve8 f1) (flow_val valve8 f2)  (flow_val valve8 f3) (flow_val valve8 f4)
     (flow_val valve9 f1) (flow_val valve9 f2)  (flow_val valve9 f3) (flow_val valve9 f4)
     (flow_val valve10 f1) (flow_val valve10 f2)  (flow_val valve10 f3) (flow_val valve10 f4)
  )
  (:knowledge-updates
    (and
    (oneof (and (flow_val valve1 f1) (not (flow_val valve1 f2)) (not (flow_val valve1 f3)) (not (flow_val valve1 f4)) )
           (and (not (flow_val valve1 f1)) (flow_val valve1 f2) (not (flow_val valve1 f3)) (not (flow_val valve1 f4)) )
           (and (not (flow_val valve1 f1)) (not (flow_val valve1 f2)) (flow_val valve1 f3) (not (flow_val valve1 f4)) )
           (and (not (flow_val valve1 f1)) (not (flow_val valve1 f2)) (not (flow_val valve1 f3)) (flow_val valve1 f4) )
           (and (not (flow_val valve1 f1)) (not (flow_val valve1 f2)) (not (flow_val valve1 f3)) (not (flow_val valve1 f4)) (valve_regulated wp15))
    )
    (oneof   (and (flow_val valve2 f1) (not (flow_val valve2 f2)) (not (flow_val valve2 f3)) (not (flow_val valve2 f4)) )
             (and (not (flow_val valve2 f1)) (flow_val valve2 f2) (not (flow_val valve2 f3)) (not (flow_val valve2 f4)) )
             (and (not (flow_val valve2 f1)) (not (flow_val valve2 f2)) (flow_val valve2 f3) (not (flow_val valve2 f4)) )
             (and (not (flow_val valve2 f1)) (not (flow_val valve2 f2)) (not (flow_val valve2 f3)) (flow_val valve2 f4) )
             (and ((not (flow_val valve2 f1)) (not (flow_val valve2 f2)) (not (flow_val valve2 f3)) (not (flow_val valve2 f4)) (valve_regulated wp18)))
    )
    (oneof   (and (flow_val valve3 f1) (not (flow_val valve3 f2)) (not (flow_val valve3 f3)) (not (flow_val valve3 f4)) )
             (and (not (flow_val valve3 f1)) (flow_val valve3 f2) (not (flow_val valve3 f3)) (not (flow_val valve3 f4)) )
             (and (not (flow_val valve3 f1)) (not (flow_val valve3 f2)) (flow_val valve3 f3) (not (flow_val valve3 f4)) )
             (and (not (flow_val valve3 f1)) (not (flow_val valve3 f2)) (not (flow_val valve3 f3)) (flow_val valve3 f4) )
             (and (not (flow_val valve3 f1)) (not (flow_val valve3 f2)) (not (flow_val valve3 f3)) (not (flow_val valve3 f4)) (valve_regulated wp38))
    )
    (oneof   (and (flow_val valve4 f1) (not (flow_val valve4 f2)) (not (flow_val valve4 f3)) (not (flow_val valve4 f4)) )
             (and (not (flow_val valve4 f1)) (flow_val valve4 f2) (not (flow_val valve4 f3)) (not (flow_val valve4 f4)) )
             (and (not (flow_val valve4 f1)) (not (flow_val valve4 f2)) (flow_val valve4 f3) (not (flow_val valve4 f4)) )
             (and (not (flow_val valve4 f1)) (not (flow_val valve4 f2)) (not (flow_val valve4 f3)) (flow_val valve4 f4) )
             (and (not (flow_val valve4 f1)) (not (flow_val valve4 f2)) (not (flow_val valve4 f3)) (not (flow_val valve4 f4)) (valve_regulated wp42))
    )
    (oneof   (and (flow_val valve5 f1) (not (flow_val valve5 f2)) (not (flow_val valve5 f3)) (not (flow_val valve5 f4)) (not (flow_val valve5 f5)) )
             (and (not (flow_val valve5 f1)) (flow_val valve5 f2) (not (flow_val valve5 f3)) (not (flow_val valve5 f4)) (not (flow_val valve5 f5)) )
             (and (not (flow_val valve5 f1)) (not (flow_val valve5 f2)) (flow_val valve5 f3) (not (flow_val valve5 f4)) (not (flow_val valve5 f5)) )
             (and (not (flow_val valve5 f1)) (not (flow_val valve5 f2)) (not (flow_val valve5 f3)) (flow_val valve5 f4) (not (flow_val valve5 f5)) )
             (and (not (flow_val valve5 f1)) (not (flow_val valve5 f2)) (not (flow_val valve5 f3)) (not (flow_val valve5 f4)) (flow_val valve5 f5) )
             (and (not (flow_val valve5 f1)) (not (flow_val valve5 f2)) (not (flow_val valve5 f3)) (not (flow_val valve5 f4)) (not (flow_val valve5 f5)) (valve_regulated wp44))
    )
    (oneof   (and (flow_val valve6 f1) (not (flow_val valve6 f2)) (not (flow_val valve6 f3)) (not (flow_val valve6 f4)) )
             (and (not (flow_val valve6 f1)) (flow_val valve6 f2) (not (flow_val valve6 f3)) (not (flow_val valve6 f4)) )
             (and (not (flow_val valve6 f1)) (not (flow_val valve6 f2)) (flow_val valve6 f3) (not (flow_val valve6 f4)) )
             (and (not (flow_val valve6 f1)) (not (flow_val valve6 f2)) (not (flow_val valve6 f3)) (flow_val valve6 f4) )
             (and (not (flow_val valve6 f1)) (not (flow_val valve6 f2)) (not (flow_val valve6 f3)) (not (flow_val valve6 f4)) (valve_regulated wp29))
    )
    (oneof   (and (flow_val valve7 f1) (not (flow_val valve7 f2)) (not (flow_val valve7 f3)) (not (flow_val valve7 f4)) )
             (and (not (flow_val valve7 f1)) (flow_val valve7 f2) (not (flow_val valve7 f3)) (not (flow_val valve7 f4)) )
             (and (not (flow_val valve7 f1)) (not (flow_val valve7 f2)) (flow_val valve7 f3) (not (flow_val valve7 f4)) )
             (and (not (flow_val valve7 f1)) (not (flow_val valve7 f2)) (not (flow_val valve7 f3)) (flow_val valve7 f4) )
             (and (not (flow_val valve7 f1)) (not (flow_val valve7 f2)) (not (flow_val valve7 f3)) (not (flow_val valve7 f4)) (valve_regulated wp35))
    )
    (oneof    (and (flow_val valve8 f1) (not (flow_val valve8 f2)) (not (flow_val valve8 f3)) (not (flow_val valve8 f4)) )
             (and (not (flow_val valve8 f1)) (flow_val valve8 f2) (not (flow_val valve8 f3)) (not (flow_val valve8 f4)) )
             (and (not (flow_val valve8 f1)) (not (flow_val valve8 f2)) (flow_val valve8 f3) (not (flow_val valve8 f4)) )
             (and (not (flow_val valve8 f1)) (not (flow_val valve8 f2)) (not (flow_val valve8 f3)) (flow_val valve8 f4) )
             (and (not (flow_val valve8 f1)) (not (flow_val valve8 f2)) (not (flow_val valve8 f3)) (not (flow_val valve8 f4)) (valve_regulated wp38))
    )
    (oneof   (and (flow_val valve9 f1) (not (flow_val valve9 f2)) (not (flow_val valve9 f3)) (not (flow_val valve9 f4)) )
             (and (not (flow_val valve9 f1)) (flow_val valve9 f2) (not (flow_val valve9 f3)) (not (flow_val valve9 f4)) )
             (and (not (flow_val valve9 f1)) (not (flow_val valve9 f2)) (flow_val valve9 f3) (not (flow_val valve9 f4)) )
             (and (not (flow_val valve9 f1)) (not (flow_val valve9 f2)) (not (flow_val valve9 f3)) (flow_val valve9 f4) )
             (and (not (flow_val valve9 f1)) (not (flow_val valve9 f2)) (not (flow_val valve9 f3)) (not (flow_val valve9 f4)) (valve_regulated wp42))
    )
    (oneof   (and (flow_val valve10 f1) (not (flow_val valve10 f2)) (not (flow_val valve10 f3)) (not (flow_val valve10 f4)) )
             (and (not (flow_val valve10 f1)) (flow_val valve10 f2) (not (flow_val valve10 f3)) (not (flow_val valve10 f4)) )
             (and (not (flow_val valve10 f1)) (not (flow_val valve10 f2)) (flow_val valve10 f3) (not (flow_val valve10 f4)) )
             (and (not (flow_val valve10 f1)) (not (flow_val valve10 f2)) (not (flow_val valve10 f3)) (flow_val valve10 f4) )
             (and (not (flow_val valve10 f1)) (not (flow_val valve10 f2)) (not (flow_val valve10 f3)) (not (flow_val valve10 f4)) (valve_regulated wp44))
    )
    )
  )

)
