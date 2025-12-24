module Bits32

export
loopbits32add : (Nat, Bits32) -> Bits32
loopbits32add (0    , n) = n
loopbits32add ((S k), n) = loopbits32add (k, (n + cast k))

export
loopbits32sub : (Nat, Bits32) -> Bits32
loopbits32sub (0    , n) = n
loopbits32sub ((S k), n) = loopbits32sub (k, (n - cast k))

export
loopbits32mul : (Nat, Bits32) -> Bits32
loopbits32mul (0    , n) = n
loopbits32mul ((S k), n) = loopbits32mul (k, (n * cast (S k)))
