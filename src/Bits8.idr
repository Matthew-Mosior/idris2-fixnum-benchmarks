module Bits8

export
loop8add : (Nat, Bits8) -> Bits8
loop8add (0    , n) = n
loop8add ((S k), n) = loop8add (k, (n + cast k))

export
loop8sub : (Nat, Bits8) -> Bits8
loop8sub (0    , n) = n
loop8sub ((S k), n) = loop8sub (k, (n - cast k))

export
loop8mul : (Nat, Bits8) -> Bits8
loop8mul (0    , n) = n
loop8mul ((S k), n) = loop8mul (k, (n * cast (S k)))
