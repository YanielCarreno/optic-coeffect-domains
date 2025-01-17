(define (knowledge offshore_energy_platform)
  (:problem oep_06)
  (:unknown-literals

     (path_free wpGF-1 pathGF-1-GF-0)
     (path_free wpGF-1 pathGF-1-GF-2)
     (path_free wpGF-2 pathGF-2-GF-1)
     (path_free wpGF-2 pathGF-2-GF-3)
     (path_free wpGF-2 pathGF-2-GF-15)
     (path_free wpGF-4 pathGF-4-GF-5)
     (path_free wpGF-4 pathGF-4-GF-6)
     (path_free wpGF-14 pathGF-14-GF-13)
     (path_free wpGF-14 pathGF-14-GF-15)
     (path_free wpGF-15 pathGF-15-GF-14)
     (path_free wpGF-15 pathGF-15-GF-2)
     (path_free wpGF-15 pathGF-15-GF-4)

  )
  (:knowledge-updates

    (oneof (path_free wpGF-1 pathGF-1-GF-0) (not (path_free wpGF-1 pathGF-1-GF-0)) )
    (oneof (path_free wpGF-1 pathGF-1-GF-2) (not (path_free wpGF-1 pathGF-1-GF-2)) )
    (oneof (path_free wpGF-2 pathGF-2-GF-1) (not (path_free wpGF-2 pathGF-2-GF-1)) )
    (oneof (path_free wpGF-2 pathGF-2-GF-3) (not (path_free wpGF-2 pathGF-2-GF-3)) )
    (oneof (path_free wpGF-2 pathGF-2-GF-15) (not (path_free wpGF-2 pathGF-2-GF-15)) )
    (oneof (path_free wpGF-4 pathGF-4-GF-5) (not (path_free wpGF-4 pathGF-4-GF-5)) )
    (oneof (path_free wpGF-4 pathGF-4-GF-6) (not (path_free wpGF-4 pathGF-4-GF-6)) )
    (oneof (path_free wpGF-14 pathGF-14-GF-13) (not (path_free wpGF-14 pathGF-14-GF-13)) )
    (oneof (path_free wpGF-14 pathGF-14-GF-15) (not (path_free wpGF-14 pathGF-14-GF-15)) )
    (oneof (path_free wpGF-15 pathGF-15-GF-14) (not (path_free wpGF-15 pathGF-15-GF-14)) )
    (oneof (path_free wpGF-15 pathGF-15-GF-2) (not (path_free wpGF-15 pathGF-15-GF-2)) )
    (oneof (path_free wpGF-15 pathGF-15-GF-4) (not (path_free wpGF-15 pathGF-15-GF-4)) )

  )
)
