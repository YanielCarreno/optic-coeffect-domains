    Time: (Action Name)                                                   [Duration]
   0.000: (navigation auv0 wp0 wp12)                                       [338.875]
 338.876: (navigation auv0 wp12 wp34)                                      [351.670]
 690.547: (target-approach auv0 wp34)                                       [15.000]
 705.548: (sense-valve auv0 camera0 v2 wp34)                                [50.000]
           <BRANCH, 1, true, (state_on v2)>
 755.549:      (close-bop auv0 arm0 v2 wp34)                                [15.000]
 770.550:      (navigation auv0 wp34 wp32)                                 [153.378]
 923.929:      (target-approach auv0 wp32)                                  [15.000]
 938.930:      (navigation auv0 wp32 wp30)                                  [24.776]
 963.707:      (refuel-auv auv0 wp30)                                        [4.162]
 967.870:      (broadcast-data auv0 wp30)                                   [20.000]
 987.871:      (navigation auv0 wp30 wp32)                                  [24.776]
1012.648:      (sense-valve auv0 camera0 v1 wp32)                           [50.000]
               <BRANCH, 2, true, (state_on v1)>
1062.649:          (close-bop auv0 arm0 v1 wp32)                            [15.000]
1077.650:          (navigation auv0 wp32 wp0)                              [176.510]
1254.161:          (recover auv0 wp0)                                        [1.000]
               <BRANCH, 2, false, (state_on v1)>
1062.649:          (navigation auv0 wp32 wp0)                              [176.510]
1239.160:          (recover auv0 wp0)                                        [1.000]
          <BRANCH, 1, false, (state_on v2)>
 755.549:      (navigation auv0 wp34 wp32)                                 [153.378]
 908.920:      (target-approach auv0 wp32)                                  [15.000]
 923.921:      (navigation auv0 wp32 wp30)                                  [24.776]
 948.698:      (refuel-auv auv0 wp30)                                        [4.162]
 952.860:      (broadcast-data auv0 wp30)                                   [20.000]
 972.861:      (navigation auv0 wp30 wp32)                                  [24.776]
 997.638:      (sense-valve auv0 camera0 v1 wp32)                           [50.000]
               <BRANCH, 3, true, (state_on v1)>
1047.639:          (close-bop auv0 arm0 v1 wp32)                            [15.000]
1062.640:          (navigation auv0 wp32 wp0)                              [176.510]
1239.151:          (recover auv0 wp0)                                        [1.000]
                <BRANCH, 3, false, (state_on v1)>
1047.639:          (navigation auv0 wp32 wp0)                              [176.510]
1229.150:          (recover auv0 wp0)                                        [1.000]
