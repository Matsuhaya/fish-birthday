function birthday

  set name $argv[1]
  set name_length (string length $name)

  if test (string length $name) && test (echo $name | env LANG=C grep '^[[:cntrl:][:print:]]*$')

    set left_space_length (math 15 - (math -s0 $name_length/2))
    set left_str ' (     (   *     (('
    for i in (seq 1 $left_space_length)
      set left_str (string join '' $left_str ' ')
    end
    
    set right_space_length (math 16 - (math -s0 (math $name_length + 1) / 2 ))
    set right_str '))        )    ('
    for i in (seq 1 $right_space_length)
      set right_str (string join '' ' ' $right_str)
    end
    
    set name_line (string join $name $left_str $right_str)
    
    echo "
 )         *             !  !  !  !  !  !     (                   )
 (          (    *       |V||V||V||V||V||V|     )       )         (
  )   *      )           | || || || || || |    (       (   *       )
 (          (           (*******************)  *       *    )      *
  )          )  *       (        T O        )              (
 (     (    (       !   (    *         *    )   !           )    (
  )   * )    )     |V|  (   \|/       \|/   )  |V|    *    (      )
 (     (     *     | |  (<<<<<<<<<*>>>>>>>>>)  | |          )    (
  )     )        ((*******************************))       (  *   )
$name_line
  ) *   )     !  ((   *    *   *    *    *    *   ))  !    (      )
 (     (     |V| ((  \|/  \|/ \|/  \|/  \|/  \|/  )) |V|    )    (
 *)     )    | | ((^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^)) | |   (      )
 (     (  (***********************************************) )  * (
  )     ) (*      |   |   __    ___    ___               *)(      )
 (     (  (*      |   |  /  \  |   \  |   \    \  /      *) )    (
 *      ) (*      |---| |----| |___/  |___/     \/       *)(      )
       (  (*  *   |   | |    | |      |         /   *    *) )    (
        ) (* \|/  |   | |    | |      |        /   \|/   *) *     )
       (  (*                                             *)      (
  )  *  ) (*}+{}+{}+{}+{}+{}+{}+{}+{}+{}+{}+{}+{}+{}+{}+{*)       )
 (     (  (*}-{}-{}-{}-{}-{}-{}-{}-{}-{}-{}-{}-{}-{}-{}-{*)       *
  ) ((********************************************************))
 (  ((}*{}*{}*{}*{}*{}*{}*{}*{}*{}*{}*{}*{}*{}*{}*{}*{}*{}*{}*)) 
  ) ((      __                                                ))
 (  ((     |  \ _____  ___  _____        ___     __           ))
  ) ((     |__/   |   |   \   |   |   | |   \   /  \   \  /   ))
 (  ((     |  \   |   |___/   |   |---| |    > |----|   \/    ))
 *  ((  *  |__/ __|__ |  \    |   |   | |___/  |    |   /  *  ))
    (( \|/                                                \|/ ))
    ((}*{}*{}*{}*{}*{}*{}*{}*{}*{}*{}*{}*{}*{}*{}*{}*{}*{}*{}*))
 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  "
  else

    echo "名前を英語で入力しましょう"
    echo "例) birthday Mr.ABE"

  end
end