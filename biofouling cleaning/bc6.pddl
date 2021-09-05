(define (problem task)
(:domain biofouling_cleaning)
(:objects
    auv0 - robot
    wp0 wp1 wp2 wp3 wp4 wp10 wp11 wp12 wp13 wp14 wp30 wp31 wp32 wp33 wp34 wp35 wp40 wp41 wp42 wp43 wp44
    wp45 wp50 wp51 wp52 wp53 wp54 wp55 wp60  - waypoint
    camera0 sonar0 - robot_sensor
    arm0 cleaner0 - robot_actuator
    v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
    t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 - poi
)
(:init

    ;(state_on v1)
    ;(state_on v2)
    ;(state_on v3)
    ;(state_on v4)
    ;(state_on v5)
    ;(state_on v6)
    ;(state_on v7)
    ;(state_on v8)
    ;(state_on v9)
    ;(state_on v10)

    ;(bla_obstructed t1)
    ;(bla_obstructed t2)
    ;(bla_obstructed t3)
    ;(bla_obstructed t4)
    ;(bla_obstructed t5)
    ;(bla_obstructed t6)
    ;(bla_obstructed t7)
    ;(bla_obstructed t8)
    ;(bla_obstructed t9)
    ;(bla_obstructed t10)

    (robot_at auv0 wp0)

    (available auv0)

    (camera_equipped auv0 camera0)

    (manipulator_equipped auv0 arm0)

    (cleaner_equipped auv0 cleaner0)


    (valve_at v1 wp30)
    (valve_at v2 wp31)
    (valve_at v3 wp32)
    (valve_at v4 wp33)
    (valve_at v5 wp34)
    (valve_at v6 wp1)
    (valve_at v7 wp2)
    (valve_at v8 wp3)
    (valve_at v9 wp4)
    (valve_at v10 wp11)

    (structure_at t1 wp40)
    (structure_at t2 wp41)
    (structure_at t3 wp42)
    (structure_at t4 wp43)
    (structure_at t5 wp44)
    (structure_at t6 wp12)
    (structure_at t7 wp13)
    (structure_at t8 wp14)
    (structure_at t9 wp51)
    (structure_at t10 wp52)

    (is_valve v1)
    (is_valve v2)
    (is_valve v3)
    (is_valve v4)
    (is_valve v5)
    (is_valve v6)
    (is_valve v7)
    (is_valve v8)
    (is_valve v9)
    (is_valve v10)

    (is_structure t1)
    (is_structure t2)
    (is_structure t3)
    (is_structure t4)
    (is_structure t5)
    (is_structure t6)
    (is_structure t7)
    (is_structure t8)
    (is_structure t9)
    (is_structure t10)

    (docking_point auv0 wp10)
    (docking_point auv0 wp50)


    (= (data_capacity auv0) 1)
    (= (data_adquired auv0) 0)

    ; set of instances defining the all possible refuel points area available
    ; from the start of the mission
    (at 0 (refuel_deliverable auv0 wp10))
    (at 1050 (not (refuel_deliverable auv0 wp10)))

    (at 1100 (refuel_deliverable auv0 wp50))



    (= (speed auv0) 0.5)
    (= (recharge_rate auv0) 30)
    (= (energy auv0) 90)
    (= (consumption auv0) 0.01)

    (= (distance wp0 wp0) 0)
    (= (distance wp0 wp1) 104.781)
    (= (distance wp0 wp10) 98.2955)
    (= (distance wp0 wp11) 53.301)
    (= (distance wp0 wp12) 203.325)
    (= (distance wp0 wp13) 311.514)
    (= (distance wp0 wp14) 342.494)
    (= (distance wp0 wp2) 102.854)
    (= (distance wp0 wp3) 110.359)
    (= (distance wp0 wp30) 94.4722)
    (= (distance wp0 wp31) 86.4639)
    (= (distance wp0 wp32) 105.906)
    (= (distance wp0 wp33) 24.4949)
    (= (distance wp0 wp34) 24.1039)
    (= (distance wp0 wp35) 38.223)
    (= (distance wp0 wp4) 99.1615)
    (= (distance wp0 wp40) 216.564)
    (= (distance wp0 wp41) 226.453)
    (= (distance wp0 wp42) 208.233)
    (= (distance wp0 wp43) 286.531)
    (= (distance wp0 wp44) 297.054)
    (= (distance wp0 wp45) 278.928)
    (= (distance wp0 wp50) 280.357)
    (= (distance wp0 wp51) 291.858)
    (= (distance wp0 wp52) 269.928)
    (= (distance wp0 wp53) 315.911)
    (= (distance wp0 wp54) 327.171)
    (= (distance wp0 wp55) 305.616)
    (= (distance wp0 wp60) 350.143)
    (= (distance wp1 wp0) 104.781)
    (= (distance wp1 wp1) 0)
    (= (distance wp1 wp10) 184.296)
    (= (distance wp1 wp11) 141.612)
    (= (distance wp1 wp12) 173.361)
    (= (distance wp1 wp13) 229.465)
    (= (distance wp1 wp14) 240.593)
    (= (distance wp1 wp2) 14.1421)
    (= (distance wp1 wp3) 10)
    (= (distance wp1 wp30) 198.227)
    (= (distance wp1 wp31) 191.089)
    (= (distance wp1 wp32) 209.75)
    (= (distance wp1 wp33) 128.915)
    (= (distance wp1 wp34) 123.572)
    (= (distance wp1 wp35) 141.032)
    (= (distance wp1 wp4) 5.83095)
    (= (distance wp1 wp40) 202.531)
    (= (distance wp1 wp41) 209.929)
    (= (distance wp1 wp42) 199.725)
    (= (distance wp1 wp43) 250.238)
    (= (distance wp1 wp44) 259.673)
    (= (distance wp1 wp45) 245.744)
    (= (distance wp1 wp50) 203.517)
    (= (distance wp1 wp51) 216.032)
    (= (distance wp1 wp52) 195.167)
    (= (distance wp1 wp53) 228.077)
    (= (distance wp1 wp54) 240.687)
    (= (distance wp1 wp55) 219.157)
    (= (distance wp1 wp60) 251.831)
    (= (distance wp10 wp0) 98.2955)
    (= (distance wp10 wp1) 184.296)
    (= (distance wp10 wp10) 0)
    (= (distance wp10 wp11) 50.01)
    (= (distance wp10 wp12) 210.002)
    (= (distance wp10 wp13) 354.12)
    (= (distance wp10 wp14) 422.85)
    (= (distance wp10 wp2) 186.4)
    (= (distance wp10 wp3) 192.211)
    (= (distance wp10 wp30) 83.3487)
    (= (distance wp10 wp31) 82.0853)
    (= (distance wp10 wp32) 95.6974)
    (= (distance wp10 wp33) 88.6679)
    (= (distance wp10 wp34) 95.3048)
    (= (distance wp10 wp35) 92.9677)
    (= (distance wp10 wp4) 178.844)
    (= (distance wp10 wp40) 215.829)
    (= (distance wp10 wp41) 228.48)
    (= (distance wp10 wp42) 207.275)
    (= (distance wp10 wp43) 294.248)
    (= (distance wp10 wp44) 306.534)
    (= (distance wp10 wp45) 286.92)
    (= (distance wp10 wp50) 327.753)
    (= (distance wp10 wp51) 339.475)
    (= (distance wp10 wp52) 318.752)
    (= (distance wp10 wp53) 373.259)
    (= (distance wp10 wp54) 384.452)
    (= (distance wp10 wp55) 364.476)
    (= (distance wp10 wp60) 432.46)
    (= (distance wp11 wp0) 53.301)
    (= (distance wp11 wp1) 141.612)
    (= (distance wp11 wp10) 50.01)
    (= (distance wp11 wp11) 0)
    (= (distance wp11 wp12) 206.155)
    (= (distance wp11 wp13) 333.766)
    (= (distance wp11 wp14) 382.127)
    (= (distance wp11 wp2) 141.612)
    (= (distance wp11 wp3) 148.506)
    (= (distance wp11 wp30) 75.8024)
    (= (distance wp11 wp31) 72.9178)
    (= (distance wp11 wp32) 90.4268)
    (= (distance wp11 wp33) 49.2037)
    (= (distance wp11 wp34) 58.4979)
    (= (distance wp11 wp35) 58.4979)
    (= (distance wp11 wp4) 135.897)
    (= (distance wp11 wp40) 218.909)
    (= (distance wp11 wp41) 230.916)
    (= (distance wp11 wp42) 211.002)
    (= (distance wp11 wp43) 293.804)
    (= (distance wp11 wp44) 305.748)
    (= (distance wp11 wp45) 286.779)
    (= (distance wp11 wp50) 306.628)
    (= (distance wp11 wp51) 318.782)
    (= (distance wp11 wp52) 297.358)
    (= (distance wp11 wp53) 347.017)
    (= (distance wp11 wp54) 358.723)
    (= (distance wp11 wp55) 337.879)
    (= (distance wp11 wp60) 392.455)
    (= (distance wp12 wp0) 203.325)
    (= (distance wp12 wp1) 173.361)
    (= (distance wp12 wp10) 210.002)
    (= (distance wp12 wp11) 206.155)
    (= (distance wp12 wp12) 0)
    (= (distance wp12 wp13) 164.012)
    (= (distance wp12 wp14) 312.923)
    (= (distance wp12 wp2) 187.227)
    (= (distance wp12 wp3) 181.808)
    (= (distance wp12 wp30) 272.481)
    (= (distance wp12 wp31) 263.471)
    (= (distance wp12 wp32) 284.74)
    (= (distance wp12 wp33) 218.909)
    (= (distance wp12 wp34) 211.002)
    (= (distance wp12 wp35) 230.916)
    (= (distance wp12 wp4) 173.689)
    (= (distance wp12 wp40) 49.2037)
    (= (distance wp12 wp41) 58.4979)
    (= (distance wp12 wp42) 58.4979)
    (= (distance wp12 wp43) 93.9202)
    (= (distance wp12 wp44) 107.62)
    (= (distance wp12 wp45) 91.3345)
    (= (distance wp12 wp50) 146.7)
    (= (distance wp12 wp51) 157.232)
    (= (distance wp12 wp52) 142.555)
    (= (distance wp12 wp53) 202.289)
    (= (distance wp12 wp54) 211.618)
    (= (distance wp12 wp55) 197.641)
    (= (distance wp12 wp60) 318.624)
    (= (distance wp13 wp0) 311.514)
    (= (distance wp13 wp1) 229.465)
    (= (distance wp13 wp10) 354.12)
    (= (distance wp13 wp11) 333.766)
    (= (distance wp13 wp12) 164.012)
    (= (distance wp13 wp13) 0)
    (= (distance wp13 wp14) 204.159)
    (= (distance wp13 wp2) 241.359)
    (= (distance wp13 wp3) 231.633)
    (= (distance wp13 wp30) 400.057)
    (= (distance wp13 wp31) 390.329)
    (= (distance wp13 wp32) 411.992)
    (= (distance wp13 wp33) 332.898)
    (= (distance wp13 wp34) 323.36)
    (= (distance wp13 wp35) 345.083)
    (= (distance wp13 wp4) 233.812)
    (= (distance wp13 wp40) 187.939)
    (= (distance wp13 wp41) 182.926)
    (= (distance wp13 wp42) 197.944)
    (= (distance wp13 wp43) 144.641)
    (= (distance wp13 wp44) 144.298)
    (= (distance wp13 wp45) 150.937)
    (= (distance wp13 wp50) 49.2037)
    (= (distance wp13 wp51) 52.5547)
    (= (distance wp13 wp52) 63.8905)
    (= (distance wp13 wp53) 63.4114)
    (= (distance wp13 wp54) 70.8661)
    (= (distance wp13 wp55) 70.8661)
    (= (distance wp13 wp60) 205.964)
    (= (distance wp14 wp0) 342.494)
    (= (distance wp14 wp1) 240.593)
    (= (distance wp14 wp10) 422.85)
    (= (distance wp14 wp11) 382.127)
    (= (distance wp14 wp12) 312.923)
    (= (distance wp14 wp13) 204.159)
    (= (distance wp14 wp14) 0)
    (= (distance wp14 wp2) 242.209)
    (= (distance wp14 wp3) 234.275)
    (= (distance wp14 wp30) 435.129)
    (= (distance wp14 wp31) 427.259)
    (= (distance wp14 wp32) 445.113)
    (= (distance wp14 wp33) 365.297)
    (= (distance wp14 wp34) 357.89)
    (= (distance wp14 wp35) 375.235)
    (= (distance wp14 wp4) 246.351)
    (= (distance wp14 wp40) 344.009)
    (= (distance wp14 wp41) 342.615)
    (= (distance wp14 wp42) 348.283)
    (= (distance wp14 wp43) 332.418)
    (= (distance wp14 wp44) 333.624)
    (= (distance wp14 wp45) 334.103)
    (= (distance wp14 wp50) 204.064)
    (= (distance wp14 wp51) 207.087)
    (= (distance wp14 wp52) 205.915)
    (= (distance wp14 wp53) 160.318)
    (= (distance wp14 wp54) 166.148)
    (= (distance wp14 wp55) 160.627)
    (= (distance wp14 wp60) 40.5216)
    (= (distance wp2 wp0) 102.854)
    (= (distance wp2 wp1) 14.1421)
    (= (distance wp2 wp10) 186.4)
    (= (distance wp2 wp11) 141.612)
    (= (distance wp2 wp12) 187.227)
    (= (distance wp2 wp13) 241.359)
    (= (distance wp2 wp14) 242.209)
    (= (distance wp2 wp2) 0)
    (= (distance wp2 wp3) 10)
    (= (distance wp2 wp30) 194.92)
    (= (distance wp2 wp31) 188.242)
    (= (distance wp2 wp32) 206.095)
    (= (distance wp2 wp33) 126.566)
    (= (distance wp2 wp34) 122.025)
    (= (distance wp2 wp35) 138.094)
    (= (distance wp2 wp4) 13.9284)
    (= (distance wp2 wp40) 215.914)
    (= (distance wp2 wp41) 223.361)
    (= (distance wp2 wp42) 212.767)
    (= (distance wp2 wp43) 264.233)
    (= (distance wp2 wp44) 273.587)
    (= (distance wp2 wp45) 259.634)
    (= (distance wp2 wp50) 215.451)
    (= (distance wp2 wp51) 227.794)
    (= (distance wp2 wp52) 207.051)
    (= (distance wp2 wp53) 237.947)
    (= (distance wp2 wp54) 250.5)
    (= (distance wp2 wp55) 228.932)
    (= (distance wp2 wp60) 253.809)
    (= (distance wp3 wp0) 110.359)
    (= (distance wp3 wp1) 10)
    (= (distance wp3 wp10) 192.211)
    (= (distance wp3 wp11) 148.506)
    (= (distance wp3 wp12) 181.808)
    (= (distance wp3 wp13) 231.633)
    (= (distance wp3 wp14) 234.275)
    (= (distance wp3 wp2) 10)
    (= (distance wp3 wp3) 0)
    (= (distance wp3 wp30) 203.209)
    (= (distance wp3 wp31) 196.252)
    (= (distance wp3 wp32) 214.464)
    (= (distance wp3 wp33) 134.235)
    (= (distance wp3 wp34) 129.112)
    (= (distance wp3 wp35) 145.911)
    (= (distance wp3 wp4) 13.9284)
    (= (distance wp3 wp40) 211.232)
    (= (distance wp3 wp41) 218.335)
    (= (distance wp3 wp42) 208.543)
    (= (distance wp3 wp43) 257.331)
    (= (distance wp3 wp44) 266.515)
    (= (distance wp3 wp45) 252.962)
    (= (distance wp3 wp50) 205.959)
    (= (distance wp3 wp51) 218.335)
    (= (distance wp3 wp52) 197.712)
    (= (distance wp3 wp53) 228.077)
    (= (distance wp3 wp54) 240.687)
    (= (distance wp3 wp55) 219.157)
    (= (distance wp3 wp60) 245.803)
    (= (distance wp30 wp0) 94.4722)
    (= (distance wp30 wp1) 198.227)
    (= (distance wp30 wp10) 83.3487)
    (= (distance wp30 wp11) 75.8024)
    (= (distance wp30 wp12) 272.481)
    (= (distance wp30 wp13) 400.057)
    (= (distance wp30 wp14) 435.129)
    (= (distance wp30 wp2) 194.92)
    (= (distance wp30 wp3) 203.209)
    (= (distance wp30 wp30) 0)
    (= (distance wp30 wp31) 14.8661)
    (= (distance wp30 wp32) 14.8661)
    (= (distance wp30 wp33) 71.5891)
    (= (distance wp30 wp34) 82.3165)
    (= (distance wp30 wp35) 62.578)
    (= (distance wp30 wp4) 192.505)
    (= (distance wp30 wp40) 276.812)
    (= (distance wp30 wp41) 287.534)
    (= (distance wp30 wp42) 266.488)
    (= (distance wp30 wp43) 354.154)
    (= (distance wp30 wp44) 365.015)
    (= (distance wp30 wp45) 345.537)
    (= (distance wp30 wp50) 368.409)
    (= (distance wp30 wp51) 379.442)
    (= (distance wp30 wp52) 357.653)
    (= (distance wp30 wp53) 407.462)
    (= (distance wp30 wp54) 418.254)
    (= (distance wp30 wp55) 396.933)
    (= (distance wp30 wp60) 442.408)
    (= (distance wp31 wp0) 86.4639)
    (= (distance wp31 wp1) 191.089)
    (= (distance wp31 wp10) 82.0853)
    (= (distance wp31 wp11) 72.9178)
    (= (distance wp31 wp12) 263.471)
    (= (distance wp31 wp13) 390.329)
    (= (distance wp31 wp14) 427.259)
    (= (distance wp31 wp2) 188.242)
    (= (distance wp31 wp3) 196.252)
    (= (distance wp31 wp30) 14.8661)
    (= (distance wp31 wp31) 0)
    (= (distance wp31 wp32) 22)
    (= (distance wp31 wp33) 62.578)
    (= (distance wp31 wp34) 71.5891)
    (= (distance wp31 wp35) 52.4309)
    (= (distance wp31 wp4) 185.443)
    (= (distance wp31 wp40) 266.488)
    (= (distance wp31 wp41) 276.812)
    (= (distance wp31 wp42) 255.83)
    (= (distance wp31 wp43) 343.593)
    (= (distance wp31 wp44) 354.154)
    (= (distance wp31 wp45) 334.701)
    (= (distance wp31 wp50) 357.653)
    (= (distance wp31 wp51) 368.409)
    (= (distance wp31 wp52) 346.625)
    (= (distance wp31 wp53) 396.933)
    (= (distance wp31 wp54) 407.462)
    (= (distance wp31 wp55) 386.172)
    (= (distance wp31 wp60) 433.493)
    (= (distance wp32 wp0) 105.906)
    (= (distance wp32 wp1) 209.75)
    (= (distance wp32 wp10) 95.6974)
    (= (distance wp32 wp11) 90.4268)
    (= (distance wp32 wp12) 284.74)
    (= (distance wp32 wp13) 411.992)
    (= (distance wp32 wp14) 445.113)
    (= (distance wp32 wp2) 206.095)
    (= (distance wp32 wp3) 214.464)
    (= (distance wp32 wp30) 14.8661)
    (= (distance wp32 wp31) 22)
    (= (distance wp32 wp32) 0)
    (= (distance wp32 wp33) 82.3165)
    (= (distance wp32 wp34) 92.0272)
    (= (distance wp32 wp35) 71.5891)
    (= (distance wp32 wp4) 204.081)
    (= (distance wp32 wp40) 287.534)
    (= (distance wp32 wp41) 297.941)
    (= (distance wp32 wp42) 276.812)
    (= (distance wp32 wp43) 365.015)
    (= (distance wp32 wp44) 375.618)
    (= (distance wp32 wp45) 356.103)
    (= (distance wp32 wp50) 379.442)
    (= (distance wp32 wp51) 390.217)
    (= (distance wp32 wp52) 368.409)
    (= (distance wp32 wp53) 418.254)
    (= (distance wp32 wp54) 428.823)
    (= (distance wp32 wp55) 407.462)
    (= (distance wp32 wp60) 451.637)
    (= (distance wp33 wp0) 24.4949)
    (= (distance wp33 wp1) 128.915)
    (= (distance wp33 wp10) 88.6679)
    (= (distance wp33 wp11) 49.2037)
    (= (distance wp33 wp12) 218.909)
    (= (distance wp33 wp13) 332.898)
    (= (distance wp33 wp14) 365.297)
    (= (distance wp33 wp2) 126.566)
    (= (distance wp33 wp3) 134.235)
    (= (distance wp33 wp30) 71.5891)
    (= (distance wp33 wp31) 62.578)
    (= (distance wp33 wp32) 82.3165)
    (= (distance wp33 wp33) 0)
    (= (distance wp33 wp34) 14.8661)
    (= (distance wp33 wp35) 14.8661)
    (= (distance wp33 wp4) 123.341)
    (= (distance wp33 wp40) 228.254)
    (= (distance wp33 wp41) 238.162)
    (= (distance wp33 wp42) 218.909)
    (= (distance wp33 wp43) 300.832)
    (= (distance wp33 wp44) 311.257)
    (= (distance wp33 wp45) 292.645)
    (= (distance wp33 wp50) 300.666)
    (= (distance wp33 wp51) 311.803)
    (= (distance wp33 wp52) 289.864)
    (= (distance wp33 wp53) 337.343)
    (= (distance wp33 wp54) 348.254)
    (= (distance wp33 wp55) 326.743)
    (= (distance wp33 wp60) 372.022)
    (= (distance wp34 wp0) 24.1039)
    (= (distance wp34 wp1) 123.572)
    (= (distance wp34 wp10) 95.3048)
    (= (distance wp34 wp11) 58.4979)
    (= (distance wp34 wp12) 211.002)
    (= (distance wp34 wp13) 323.36)
    (= (distance wp34 wp14) 357.89)
    (= (distance wp34 wp2) 122.025)
    (= (distance wp34 wp3) 129.112)
    (= (distance wp34 wp30) 82.3165)
    (= (distance wp34 wp31) 71.5891)
    (= (distance wp34 wp32) 92.0272)
    (= (distance wp34 wp33) 14.8661)
    (= (distance wp34 wp34) 0)
    (= (distance wp34 wp35) 22)
    (= (distance wp34 wp4) 118.212)
    (= (distance wp34 wp40) 218.909)
    (= (distance wp34 wp41) 228.254)
    (= (distance wp34 wp42) 209.246)
    (= (distance wp34 wp43) 290.794)
    (= (distance wp34 wp44) 300.832)
    (= (distance wp34 wp45) 282.312)
    (= (distance wp34 wp50) 289.864)
    (= (distance wp34 wp51) 300.666)
    (= (distance wp34 wp52) 278.718)
    (= (distance wp34 wp53) 326.743)
    (= (distance wp34 wp54) 337.343)
    (= (distance wp34 wp55) 315.854)
    (= (distance wp34 wp60) 363.347)
    (= (distance wp35 wp0) 38.223)
    (= (distance wp35 wp1) 141.032)
    (= (distance wp35 wp10) 92.9677)
    (= (distance wp35 wp11) 58.4979)
    (= (distance wp35 wp12) 230.916)
    (= (distance wp35 wp13) 345.083)
    (= (distance wp35 wp14) 375.235)
    (= (distance wp35 wp2) 138.094)
    (= (distance wp35 wp3) 145.911)
    (= (distance wp35 wp30) 62.578)
    (= (distance wp35 wp31) 52.4309)
    (= (distance wp35 wp32) 71.5891)
    (= (distance wp35 wp33) 14.8661)
    (= (distance wp35 wp34) 22)
    (= (distance wp35 wp35) 0)
    (= (distance wp35 wp4) 135.551)
    (= (distance wp35 wp40) 238.162)
    (= (distance wp35 wp41) 247.758)
    (= (distance wp35 wp42) 228.254)
    (= (distance wp35 wp43) 311.257)
    (= (distance wp35 wp44) 321.409)
    (= (distance wp35 wp45) 302.695)
    (= (distance wp35 wp50) 311.803)
    (= (distance wp35 wp51) 322.621)
    (= (distance wp35 wp52) 300.666)
    (= (distance wp35 wp53) 348.254)
    (= (distance wp35 wp54) 358.893)
    (= (distance wp35 wp55) 337.343)
    (= (distance wp35 wp60) 381.079)
    (= (distance wp4 wp0) 99.1615)
    (= (distance wp4 wp1) 5.83095)
    (= (distance wp4 wp10) 178.844)
    (= (distance wp4 wp11) 135.897)
    (= (distance wp4 wp12) 173.689)
    (= (distance wp4 wp13) 233.812)
    (= (distance wp4 wp14) 246.351)
    (= (distance wp4 wp2) 13.9284)
    (= (distance wp4 wp3) 13.9284)
    (= (distance wp4 wp30) 192.505)
    (= (distance wp4 wp31) 185.443)
    (= (distance wp4 wp32) 204.081)
    (= (distance wp4 wp33) 123.341)
    (= (distance wp4 wp34) 118.212)
    (= (distance wp4 wp35) 135.551)
    (= (distance wp4 wp4) 0)
    (= (distance wp4 wp40) 202.368)
    (= (distance wp4 wp41) 210.033)
    (= (distance wp4 wp42) 199.284)
    (= (distance wp4 wp43) 251.7)
    (= (distance wp4 wp44) 261.293)
    (= (distance wp4 wp45) 247.051)
    (= (distance wp4 wp50) 207.685)
    (= (distance wp4 wp51) 220.214)
    (= (distance wp4 wp52) 199.234)
    (= (distance wp4 wp53) 233.094)
    (= (distance wp4 wp54) 245.671)
    (= (distance wp4 wp55) 224.129)
    (= (distance wp4 wp60) 257.552)
    (= (distance wp40 wp0) 216.564)
    (= (distance wp40 wp1) 202.531)
    (= (distance wp40 wp10) 215.829)
    (= (distance wp40 wp11) 218.909)
    (= (distance wp40 wp12) 49.2037)
    (= (distance wp40 wp13) 187.939)
    (= (distance wp40 wp14) 344.009)
    (= (distance wp40 wp2) 215.914)
    (= (distance wp40 wp3) 211.232)
    (= (distance wp40 wp30) 276.812)
    (= (distance wp40 wp31) 266.488)
    (= (distance wp40 wp32) 287.534)
    (= (distance wp40 wp33) 228.254)
    (= (distance wp40 wp34) 218.909)
    (= (distance wp40 wp35) 238.162)
    (= (distance wp40 wp4) 202.368)
    (= (distance wp40 wp40) 0)
    (= (distance wp40 wp41) 14.8661)
    (= (distance wp40 wp42) 14.8661)
    (= (distance wp40 wp43) 80)
    (= (distance wp40 wp44) 91.5478)
    (= (distance wp40 wp45) 71.7008)
    (= (distance wp40 wp50) 164.012)
    (= (distance wp40 wp51) 171.234)
    (= (distance wp40 wp52) 157.864)
    (= (distance wp40 wp53) 222.036)
    (= (distance wp40 wp54) 228.869)
    (= (distance wp40 wp55) 216.012)
    (= (distance wp40 wp60) 344.819)
    (= (distance wp41 wp0) 226.453)
    (= (distance wp41 wp1) 209.929)
    (= (distance wp41 wp10) 228.48)
    (= (distance wp41 wp11) 230.916)
    (= (distance wp41 wp12) 58.4979)
    (= (distance wp41 wp13) 182.926)
    (= (distance wp41 wp14) 342.615)
    (= (distance wp41 wp2) 223.361)
    (= (distance wp41 wp3) 218.335)
    (= (distance wp41 wp30) 287.534)
    (= (distance wp41 wp31) 276.812)
    (= (distance wp41 wp32) 297.941)
    (= (distance wp41 wp33) 238.162)
    (= (distance wp41 wp34) 228.254)
    (= (distance wp41 wp35) 247.758)
    (= (distance wp41 wp4) 210.033)
    (= (distance wp41 wp40) 14.8661)
    (= (distance wp41 wp41) 0)
    (= (distance wp41 wp42) 22)
    (= (distance wp41 wp43) 69.7209)
    (= (distance wp41 wp44) 80)
    (= (distance wp41 wp45) 60)
    (= (distance wp41 wp50) 157.864)
    (= (distance wp41 wp51) 164.012)
    (= (distance wp41 wp52) 151.605)
    (= (distance wp41 wp53) 216.012)
    (= (distance wp41 wp54) 222.036)
    (= (distance wp41 wp55) 209.914)
    (= (distance wp41 wp60) 341.937)
    (= (distance wp42 wp0) 208.233)
    (= (distance wp42 wp1) 199.725)
    (= (distance wp42 wp10) 207.275)
    (= (distance wp42 wp11) 211.002)
    (= (distance wp42 wp12) 58.4979)
    (= (distance wp42 wp13) 197.944)
    (= (distance wp42 wp14) 348.283)
    (= (distance wp42 wp2) 212.767)
    (= (distance wp42 wp3) 208.543)
    (= (distance wp42 wp30) 266.488)
    (= (distance wp42 wp31) 255.83)
    (= (distance wp42 wp32) 276.812)
    (= (distance wp42 wp33) 218.909)
    (= (distance wp42 wp34) 209.246)
    (= (distance wp42 wp35) 228.254)
    (= (distance wp42 wp4) 199.284)
    (= (distance wp42 wp40) 14.8661)
    (= (distance wp42 wp41) 22)
    (= (distance wp42 wp42) 0)
    (= (distance wp42 wp43) 91.5478)
    (= (distance wp42 wp44) 102)
    (= (distance wp42 wp45) 82)
    (= (distance wp42 wp50) 171.234)
    (= (distance wp42 wp51) 178.281)
    (= (distance wp42 wp52) 164.012)
    (= (distance wp42 wp53) 228.869)
    (= (distance wp42 wp54) 235.593)
    (= (distance wp42 wp55) 222.036)
    (= (distance wp42 wp60) 348.312)
    (= (distance wp43 wp0) 286.531)
    (= (distance wp43 wp1) 250.238)
    (= (distance wp43 wp10) 294.248)
    (= (distance wp43 wp11) 293.804)
    (= (distance wp43 wp12) 93.9202)
    (= (distance wp43 wp13) 144.641)
    (= (distance wp43 wp14) 332.418)
    (= (distance wp43 wp2) 264.233)
    (= (distance wp43 wp3) 257.331)
    (= (distance wp43 wp30) 354.154)
    (= (distance wp43 wp31) 343.593)
    (= (distance wp43 wp32) 365.015)
    (= (distance wp43 wp33) 300.832)
    (= (distance wp43 wp34) 290.794)
    (= (distance wp43 wp35) 311.257)
    (= (distance wp43 wp4) 251.7)
    (= (distance wp43 wp40) 80)
    (= (distance wp43 wp41) 69.7209)
    (= (distance wp43 wp42) 91.5478)
    (= (distance wp43 wp43) 0)
    (= (distance wp43 wp44) 14.8661)
    (= (distance wp43 wp45) 13.4536)
    (= (distance wp43 wp50) 131.529)
    (= (distance wp43 wp51) 134.019)
    (= (distance wp43 wp52) 130.694)
    (= (distance wp43 wp53) 186.815)
    (= (distance wp43 wp54) 190.318)
    (= (distance wp43 wp55) 184.448)
    (= (distance wp43 wp60) 330.606)
    (= (distance wp44 wp0) 297.054)
    (= (distance wp44 wp1) 259.673)
    (= (distance wp44 wp10) 306.534)
    (= (distance wp44 wp11) 305.748)
    (= (distance wp44 wp12) 107.62)
    (= (distance wp44 wp13) 144.298)
    (= (distance wp44 wp14) 333.624)
    (= (distance wp44 wp2) 273.587)
    (= (distance wp44 wp3) 266.515)
    (= (distance wp44 wp30) 365.015)
    (= (distance wp44 wp31) 354.154)
    (= (distance wp44 wp32) 375.618)
    (= (distance wp44 wp33) 311.257)
    (= (distance wp44 wp34) 300.832)
    (= (distance wp44 wp35) 321.409)
    (= (distance wp44 wp4) 261.293)
    (= (distance wp44 wp40) 91.5478)
    (= (distance wp44 wp41) 80)
    (= (distance wp44 wp42) 102)
    (= (distance wp44 wp43) 14.8661)
    (= (distance wp44 wp44) 0)
    (= (distance wp44 wp45) 20)
    (= (distance wp44 wp50) 130.694)
    (= (distance wp44 wp51) 131.529)
    (= (distance wp44 wp52) 130.015)
    (= (distance wp44 wp53) 184.448)
    (= (distance wp44 wp54) 186.815)
    (= (distance wp44 wp55) 182.165)
    (= (distance wp44 wp60) 330.274)
    (= (distance wp45 wp0) 278.928)
    (= (distance wp45 wp1) 245.744)
    (= (distance wp45 wp10) 286.92)
    (= (distance wp45 wp11) 286.779)
    (= (distance wp45 wp12) 91.3345)
    (= (distance wp45 wp13) 150.937)
    (= (distance wp45 wp14) 334.103)
    (= (distance wp45 wp2) 259.634)
    (= (distance wp45 wp3) 252.962)
    (= (distance wp45 wp30) 345.537)
    (= (distance wp45 wp31) 334.701)
    (= (distance wp45 wp32) 356.103)
    (= (distance wp45 wp33) 292.645)
    (= (distance wp45 wp34) 282.312)
    (= (distance wp45 wp35) 302.695)
    (= (distance wp45 wp4) 247.051)
    (= (distance wp45 wp40) 71.7008)
    (= (distance wp45 wp41) 60)
    (= (distance wp45 wp42) 82)
    (= (distance wp45 wp43) 13.4536)
    (= (distance wp45 wp44) 20)
    (= (distance wp45 wp45) 0)
    (= (distance wp45 wp50) 133.57)
    (= (distance wp45 wp51) 136.015)
    (= (distance wp45 wp52) 131.24)
    (= (distance wp45 wp53) 189.687)
    (= (distance wp45 wp54) 193.132)
    (= (distance wp45 wp55) 186.29)
    (= (distance wp45 wp60) 331.423)
    (= (distance wp50 wp0) 280.357)
    (= (distance wp50 wp1) 203.517)
    (= (distance wp50 wp10) 327.753)
    (= (distance wp50 wp11) 306.628)
    (= (distance wp50 wp12) 146.7)
    (= (distance wp50 wp13) 49.2037)
    (= (distance wp50 wp14) 204.064)
    (= (distance wp50 wp2) 215.451)
    (= (distance wp50 wp3) 205.959)
    (= (distance wp50 wp30) 368.409)
    (= (distance wp50 wp31) 357.653)
    (= (distance wp50 wp32) 379.442)
    (= (distance wp50 wp33) 300.666)
    (= (distance wp50 wp34) 289.864)
    (= (distance wp50 wp35) 311.803)
    (= (distance wp50 wp4) 207.685)
    (= (distance wp50 wp40) 164.012)
    (= (distance wp50 wp41) 157.864)
    (= (distance wp50 wp42) 171.234)
    (= (distance wp50 wp43) 131.529)
    (= (distance wp50 wp44) 130.694)
    (= (distance wp50 wp45) 133.57)
    (= (distance wp50 wp50) 0)
    (= (distance wp50 wp51) 14.8661)
    (= (distance wp50 wp52) 14.8661)
    (= (distance wp50 wp53) 58.3095)
    (= (distance wp50 wp54) 65.4294)
    (= (distance wp50 wp55) 54.4151)
    (= (distance wp50 wp60) 200)
    (= (distance wp51 wp0) 291.858)
    (= (distance wp51 wp1) 216.032)
    (= (distance wp51 wp10) 339.475)
    (= (distance wp51 wp11) 318.782)
    (= (distance wp51 wp12) 157.232)
    (= (distance wp51 wp13) 52.5547)
    (= (distance wp51 wp14) 207.087)
    (= (distance wp51 wp2) 227.794)
    (= (distance wp51 wp3) 218.335)
    (= (distance wp51 wp30) 379.442)
    (= (distance wp51 wp31) 368.409)
    (= (distance wp51 wp32) 390.217)
    (= (distance wp51 wp33) 311.803)
    (= (distance wp51 wp34) 300.666)
    (= (distance wp51 wp35) 322.621)
    (= (distance wp51 wp4) 220.214)
    (= (distance wp51 wp40) 171.234)
    (= (distance wp51 wp41) 164.012)
    (= (distance wp51 wp42) 178.281)
    (= (distance wp51 wp43) 134.019)
    (= (distance wp51 wp44) 131.529)
    (= (distance wp51 wp45) 136.015)
    (= (distance wp51 wp50) 14.8661)
    (= (distance wp51 wp51) 0)
    (= (distance wp51 wp52) 22)
    (= (distance wp51 wp53) 54.4151)
    (= (distance wp51 wp54) 58.3095)
    (= (distance wp51 wp55) 50.636)
    (= (distance wp51 wp60) 200.552)
    (= (distance wp52 wp0) 269.928)
    (= (distance wp52 wp1) 195.167)
    (= (distance wp52 wp10) 318.752)
    (= (distance wp52 wp11) 297.358)
    (= (distance wp52 wp12) 142.555)
    (= (distance wp52 wp13) 63.8905)
    (= (distance wp52 wp14) 205.915)
    (= (distance wp52 wp2) 207.051)
    (= (distance wp52 wp3) 197.712)
    (= (distance wp52 wp30) 357.653)
    (= (distance wp52 wp31) 346.625)
    (= (distance wp52 wp32) 368.409)
    (= (distance wp52 wp33) 289.864)
    (= (distance wp52 wp34) 278.718)
    (= (distance wp52 wp35) 300.666)
    (= (distance wp52 wp4) 199.234)
    (= (distance wp52 wp40) 157.864)
    (= (distance wp52 wp41) 151.605)
    (= (distance wp52 wp42) 164.012)
    (= (distance wp52 wp43) 130.694)
    (= (distance wp52 wp44) 130.015)
    (= (distance wp52 wp45) 131.24)
    (= (distance wp52 wp50) 14.8661)
    (= (distance wp52 wp51) 22)
    (= (distance wp52 wp52) 0)
    (= (distance wp52 wp53) 65.4294)
    (= (distance wp52 wp54) 72.1388)
    (= (distance wp52 wp55) 58.3095)
    (= (distance wp52 wp60) 200.552)
    (= (distance wp53 wp0) 315.911)
    (= (distance wp53 wp1) 228.077)
    (= (distance wp53 wp10) 373.259)
    (= (distance wp53 wp11) 347.017)
    (= (distance wp53 wp12) 202.289)
    (= (distance wp53 wp13) 63.4114)
    (= (distance wp53 wp14) 160.318)
    (= (distance wp53 wp2) 237.947)
    (= (distance wp53 wp3) 228.077)
    (= (distance wp53 wp30) 407.462)
    (= (distance wp53 wp31) 396.933)
    (= (distance wp53 wp32) 418.254)
    (= (distance wp53 wp33) 337.343)
    (= (distance wp53 wp34) 326.743)
    (= (distance wp53 wp35) 348.254)
    (= (distance wp53 wp4) 233.094)
    (= (distance wp53 wp40) 222.036)
    (= (distance wp53 wp41) 216.012)
    (= (distance wp53 wp42) 228.869)
    (= (distance wp53 wp43) 186.815)
    (= (distance wp53 wp44) 184.448)
    (= (distance wp53 wp45) 189.687)
    (= (distance wp53 wp50) 58.3095)
    (= (distance wp53 wp51) 54.4151)
    (= (distance wp53 wp52) 65.4294)
    (= (distance wp53 wp53) 0)
    (= (distance wp53 wp54) 14.8661)
    (= (distance wp53 wp55) 14.8661)
    (= (distance wp53 wp60) 152.971)
    (= (distance wp54 wp0) 327.171)
    (= (distance wp54 wp1) 240.687)
    (= (distance wp54 wp10) 384.452)
    (= (distance wp54 wp11) 358.723)
    (= (distance wp54 wp12) 211.618)
    (= (distance wp54 wp13) 70.8661)
    (= (distance wp54 wp14) 166.148)
    (= (distance wp54 wp2) 250.5)
    (= (distance wp54 wp3) 240.687)
    (= (distance wp54 wp30) 418.254)
    (= (distance wp54 wp31) 407.462)
    (= (distance wp54 wp32) 428.823)
    (= (distance wp54 wp33) 348.254)
    (= (distance wp54 wp34) 337.343)
    (= (distance wp54 wp35) 358.893)
    (= (distance wp54 wp4) 245.671)
    (= (distance wp54 wp40) 228.869)
    (= (distance wp54 wp41) 222.036)
    (= (distance wp54 wp42) 235.593)
    (= (distance wp54 wp43) 190.318)
    (= (distance wp54 wp44) 186.815)
    (= (distance wp54 wp45) 193.132)
    (= (distance wp54 wp50) 65.4294)
    (= (distance wp54 wp51) 58.3095)
    (= (distance wp54 wp52) 72.1388)
    (= (distance wp54 wp53) 14.8661)
    (= (distance wp54 wp54) 0)
    (= (distance wp54 wp55) 22)
    (= (distance wp54 wp60) 155.824)
    (= (distance wp55 wp0) 305.616)
    (= (distance wp55 wp1) 219.157)
    (= (distance wp55 wp10) 364.476)
    (= (distance wp55 wp11) 337.879)
    (= (distance wp55 wp12) 197.641)
    (= (distance wp55 wp13) 70.8661)
    (= (distance wp55 wp14) 160.627)
    (= (distance wp55 wp2) 228.932)
    (= (distance wp55 wp3) 219.157)
    (= (distance wp55 wp30) 396.933)
    (= (distance wp55 wp31) 386.172)
    (= (distance wp55 wp32) 407.462)
    (= (distance wp55 wp33) 326.743)
    (= (distance wp55 wp34) 315.854)
    (= (distance wp55 wp35) 337.343)
    (= (distance wp55 wp4) 224.129)
    (= (distance wp55 wp40) 216.012)
    (= (distance wp55 wp41) 209.914)
    (= (distance wp55 wp42) 222.036)
    (= (distance wp55 wp43) 184.448)
    (= (distance wp55 wp44) 182.165)
    (= (distance wp55 wp45) 186.29)
    (= (distance wp55 wp50) 54.4151)
    (= (distance wp55 wp51) 50.636)
    (= (distance wp55 wp52) 58.3095)
    (= (distance wp55 wp53) 14.8661)
    (= (distance wp55 wp54) 22)
    (= (distance wp55 wp55) 0)
    (= (distance wp55 wp60) 151.529)
    (= (distance wp60 wp0) 350.143)
    (= (distance wp60 wp1) 251.831)
    (= (distance wp60 wp10) 432.46)
    (= (distance wp60 wp11) 392.455)
    (= (distance wp60 wp12) 318.624)
    (= (distance wp60 wp13) 205.964)
    (= (distance wp60 wp14) 40.5216)
    (= (distance wp60 wp2) 253.809)
    (= (distance wp60 wp3) 245.803)
    (= (distance wp60 wp30) 442.408)
    (= (distance wp60 wp31) 433.493)
    (= (distance wp60 wp32) 451.637)
    (= (distance wp60 wp33) 372.022)
    (= (distance wp60 wp34) 363.347)
    (= (distance wp60 wp35) 381.079)
    (= (distance wp60 wp4) 257.552)
    (= (distance wp60 wp40) 344.819)
    (= (distance wp60 wp41) 341.937)
    (= (distance wp60 wp42) 348.312)
    (= (distance wp60 wp43) 330.606)
    (= (distance wp60 wp44) 330.274)
    (= (distance wp60 wp45) 331.423)
    (= (distance wp60 wp50) 200)
    (= (distance wp60 wp51) 200.552)
    (= (distance wp60 wp52) 200.552)
    (= (distance wp60 wp53) 152.971)
    (= (distance wp60 wp54) 155.824)
    (= (distance wp60 wp55) 151.529)
    (= (distance wp60 wp60) 0)


    (= (total_distance) 0)

)
(:goal (and
    (valve_closed v1)
    (valve_closed v2)
    (valve_closed v3)
    (valve_closed v4)
    (bla_cleaned t1)
    (bla_cleaned t2)
    (bla_cleaned t3)
    (bla_cleaned t4)
    (recovered auv0 wp10)
))
(:metric minimize (total-time))
)
