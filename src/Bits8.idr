module Bits8

export
loopbits8add : (Nat, Bits8) -> Bits8
loopbits8add (0    , n) = n
loopbits8add ((S k), n) = loopbits8add (k, (n + cast k))

export
loopbits8sub : (Nat, Bits8) -> Bits8
loopbits8sub (0    , n) = n
loopbits8sub ((S k), n) = loopbits8sub (k, (n - cast k))

export
loopbits8mul : (Nat, Bits8) -> Bits8
loopbits8mul (0    , n) = n
loopbits8mul ((S k), n) = loopbits8mul (k, (n * cast (S k)))
