(define (knowledge underwater_structure)
  (:problem us10)
  (:unknown-literals

      (sensor_damaged v1)
      (sensor_damaged v2)
      (sensor_damaged v3)
      (sensor_damaged v4)
      (sensor_damaged v5)
      (sensor_damaged v6)
      (sensor_damaged v7)
      (sensor_damaged v8)
      (sensor_damaged v9)
      (sensor_damaged v10)

      (strong_current st1)
      (strong_current st2)
      (strong_current st3)
      (strong_current st4)
      (strong_current st5)
      (strong_current st6)
      (strong_current st7)
      (strong_current st8)
      (strong_current st9)
      (strong_current st10)

      (low_visibility st1)
      (low_visibility st2)
      (low_visibility st3)
      (low_visibility st4)
      (low_visibility st5)
      (low_visibility st6)
      (low_visibility st7)
      (low_visibility st8)
      (low_visibility st9)
      (low_visibility st10)
  )
  (:knowledge-updates

      (oneof (and (sensor_located st1) (not (low_visibility st1)) (not (strong_current st1)))
             (and (not (sensor_located st1)) (low_visibility st1) (not (strong_current st1)))
             (and (not (sensor_located st1)) (not (low_visibility st1)) (strong_current st1))
      )
      (oneof (and (sensor_located st2) (not (low_visibility st2)) (not (strong_current st2)))
             (and (not (sensor_located st2)) (low_visibility st2) (not (strong_current st2)))
             (and (not (sensor_located st2)) (not (low_visibility st2)) (strong_current st2))
      )
      (oneof (and (sensor_located st3) (not (low_visibility st3)) (not (strong_current st3)))
             (and (not (sensor_located st3)) (low_visibility st3) (not (strong_current st3)))
             (and (not (sensor_located st3)) (not (low_visibility st3)) (strong_current st3))
      )
      (oneof (and (sensor_located st4) (not (low_visibility st4)) (not (strong_current st4)))
             (and (not (sensor_located st4)) (low_visibility st4) (not (strong_current st4)))
             (and (not (sensor_located st4)) (not (low_visibility st4)) (strong_current st4))
      )
      (oneof (and (sensor_located st5) (not (low_visibility st5)) (not (strong_current st5)))
             (and (not (sensor_located st5)) (low_visibility st5) (not (strong_current st5)))
             (and (not (sensor_located st5)) (not (low_visibility st5)) (strong_current st5))
      )
      (oneof (and (sensor_located st6) (not (low_visibility st6)) (not (strong_current st6)))
             (and (not (sensor_located st6)) (low_visibility st6) (not (strong_current st6)))
             (and (not (sensor_located st6)) (not (low_visibility st6)) (strong_current st6))
      )
      (oneof (and (sensor_located st7) (not (low_visibility st7)) (not (strong_current st7)))
             (and (not (sensor_located st7)) (low_visibility st7) (not (strong_current st7)))
             (and (not (sensor_located st7)) (not (low_visibility st7)) (strong_current st7))
      )
      (oneof (and (sensor_located st8) (not (low_visibility st8)) (not (strong_current st8)))
             (and (not (sensor_located st8)) (low_visibility st8) (not (strong_current st8)))
             (and (not (sensor_located st8)) (not (low_visibility st8)) (strong_current st8))
      )
      (oneof (and (sensor_located st9) (not (low_visibility st9)) (not (strong_current st9)))
             (and (not (sensor_located st9)) (low_visibility st9) (not (strong_current st9)))
             (and (not (sensor_located st9)) (not (low_visibility st9)) (strong_current st9))
      )
      (oneof (and (sensor_located st10) (not (low_visibility st10)) (not (strong_current st10)))
             (and (not (sensor_located st10)) (low_visibility st10) (not (strong_current st10)))
             (and (not (sensor_located st10)) (not (low_visibility st10)) (strong_current st10))
      )
      (oneof (sensor_damaged v1) (and (not (sensor_damaged v1))  (sensor_replaced v1)) )
      (oneof (sensor_damaged v2) (and (not (sensor_damaged v2))  (sensor_replaced v2)) )
      (oneof (sensor_damaged v3) (and (not (sensor_damaged v3))  (sensor_replaced v3)) )
      (oneof (sensor_damaged v4) (and (not (sensor_damaged v4))  (sensor_replaced v4)) )
      (oneof (sensor_damaged v5) (and (not (sensor_damaged v5))  (sensor_replaced v5)) )
      (oneof (sensor_damaged v6) (and (not (sensor_damaged v6))  (sensor_replaced v6)) )
      (oneof (sensor_damaged v7) (and (not (sensor_damaged v7))  (sensor_replaced v7)) )
      (oneof (sensor_damaged v8) (and (not (sensor_damaged v8))  (sensor_replaced v8)) )
      (oneof (sensor_damaged v9) (and (not (sensor_damaged v9))  (sensor_replaced v9)) )
      (oneof (sensor_damaged v10) (and (not (sensor_damaged v10))  (sensor_replaced v10)) )
    )
)
