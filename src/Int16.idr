module Int16

export
loopint16add : (Nat, Int16) -> Int16
loopint16add (0    , n) = n
loopint16add ((S k), n) = loopint16add (k, (n + cast k))

export
loopint16sub : (Nat, Int16) -> Int16
loopint16sub (0    , n) = n
loopint16sub ((S k), n) = loopint16sub (k, (n - cast k))

export
loopint16mul : (Nat, Int16) -> Int16
loopint16mul (0    , n) = n
loopint16mul ((S k), n) = loopint16mul (k, (n * cast (S k)))
