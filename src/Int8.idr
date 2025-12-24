module Int8

export
loopint8add : (Nat, Int8) -> Int8
loopint8add (0    , n) = n
loopint8add ((S k), n) = loopint8add (k, (n + cast k))

export
loopint8sub : (Nat, Int8) -> Int8
loopint8sub (0    , n) = n
loopint8sub ((S k), n) = loopint8sub (k, (n - cast k))

export
loopint8mul : (Nat, Int8) -> Int8
loopint8mul (0    , n) = n
loopint8mul ((S k), n) = loopint8mul (k, (n * cast (S k)))
