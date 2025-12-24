module Int32

export
loopint32add : (Nat, Int32) -> Int32
loopint32add (0    , n) = n
loopint32add ((S k), n) = loopint32add (k, (n + cast k))

export
loopint32sub : (Nat, Int32) -> Int32
loopint32sub (0    , n) = n
loopint32sub ((S k), n) = loopint32sub (k, (n - cast k))

export
loopint32mul : (Nat, Int32) -> Int32
loopint32mul (0    , n) = n
loopint32mul ((S k), n) = loopint32mul (k, (n * cast (S k)))
