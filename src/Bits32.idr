module Bits32

export
loop32add : (Nat, Bits32) -> Bits32
loop32add (0    , n) = n
loop32add ((S k), n) = loop32add (k, (n + cast k))

export
loop32sub : (Nat, Bits32) -> Bits32
loop32sub (0    , n) = n
loop32sub ((S k), n) = loop32sub (k, (n - cast k))

export
loop32mul : (Nat, Bits32) -> Bits32
loop32mul (0    , n) = n
loop32mul ((S k), n) = loop32mul (k, (n * cast (S k)))
