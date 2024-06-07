function mFDKEL
  local Port
     type address
          address.list(Port.annotation(
          match template
             x := 1:39512
             y := 1:39512
             z := 1:39512  
          end match)
          when white_reduce then
             x := 9512
             y := 9512
             z := 9512
          end when;)
     end type
  end Port        
end mFDKEL;