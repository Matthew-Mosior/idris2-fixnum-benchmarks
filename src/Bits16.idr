module Bits16

export
loopbits16add : (Nat, Bits16) -> Bits16
loopbits16add (0    , n) = n
loopbits16add ((S k), n) = loopbits16add (k, (n + cast k))

export
loopbits16sub : (Nat, Bits16) -> Bits16
loopbits16sub (0    , n) = n
loopbits16sub ((S k), n) = loopbits16sub (k, (n - cast k))

export
loopbits16mul : (Nat, Bits16) -> Bits16
loopbits16mul (0    , n) = n
loopbits16mul ((S k), n) = loopbits16mul (k, (n * cast (S k)))
