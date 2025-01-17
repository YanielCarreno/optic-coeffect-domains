(define (knowledge valve_manipulation)
  (:problem vm_06)
  (:unknown-literals

     (state_on v1)
     (state_on v2)
     (state_on v3)
     (state_on v4)
     (state_on v5)
     (state_on v6)
     (state_on v7)
     (state_on v8)
     (state_on v9)

     (state_on v10)
     (state_on v11)
     (state_on v12)
     (state_on v13)
     (state_on v14)
     (state_on v15)
     (state_on v16)
     (state_on v17)
     (state_on v18)
     (state_on v19)
     (state_on v20)

  )

  (:knowledge-updates

      (oneof (state_on v1) (and (not (state_on v1))  (valve_closed wp32)) )
      (oneof (state_on v2) (and (not (state_on v2))  (valve_closed wp34)) )
      (oneof (state_on v3) (and (not (state_on v3))  (valve_closed wp35)) )
      (oneof (state_on v4) (and (not (state_on v4))  (valve_closed wp42)) )
      (oneof (state_on v5) (and (not (state_on v5))  (valve_closed wp45)) )
      (oneof (state_on v6) (and (not (state_on v6))  (valve_closed wp51)) )
      (oneof (state_on v7) (and (not (state_on v7))  (valve_closed wp52)) )
      (oneof (state_on v8) (and (not (state_on v8))  (valve_closed wp54)) )
      (oneof (state_on v9) (and (not (state_on v9))  (valve_closed wp62)) )

      (oneof (state_on v10) (and (not (state_on v10))  (valve_closed wp63)) )
      (oneof (state_on v11) (and (not (state_on v11))  (valve_closed wp65)) )
      (oneof (state_on v12) (and (not (state_on v12))  (valve_closed wp71)) )
      (oneof (state_on v13) (and (not (state_on v13))  (valve_closed wp72)) )
      (oneof (state_on v14) (and (not (state_on v14))  (valve_closed wp74)) )
      (oneof (state_on v15) (and (not (state_on v15))  (valve_closed wp75)) )
      (oneof (state_on v16) (and (not (state_on v16))  (valve_closed wp81)) )
      (oneof (state_on v17) (and (not (state_on v17))  (valve_closed wp82)) )
      (oneof (state_on v18) (and (not (state_on v18))  (valve_closed wp83)) )
      (oneof (state_on v19) (and (not (state_on v19))  (valve_closed wp84)) )
      (oneof (state_on v20) (and (not (state_on v20))  (valve_closed wp85)) )
  )

)
