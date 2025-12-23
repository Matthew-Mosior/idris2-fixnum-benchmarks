module Bits16

export
loop16add : (Nat, Bits16) -> Bits16
loop16add (0    , n) = n
loop16add ((S k), n) = loop16add (k, (n + cast k))

export
loop16sub : (Nat, Bits16) -> Bits16
loop16sub (0    , n) = n
loop16sub ((S k), n) = loop16sub (k, (n - cast k))

export
loop16mul : (Nat, Bits16) -> Bits16
loop16mul (0    , n) = n
loop16mul ((S k), n) = loop16mul (k, (n * cast (S k)))
