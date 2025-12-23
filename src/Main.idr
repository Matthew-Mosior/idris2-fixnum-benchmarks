module Main

import Bits8
import Bits16
import Bits32

import Profile
import System

bench : Benchmark Void
bench =
  Group "Fixnum operations benchmarking"
    [ Group "Addition"
        [ Group "Bits8"
            [ Single "Addition over Bits8"  (basic loop8add (32, 2))
            ]
        , Group "Bits16"
            [ Single "Addition over Bits16" (basic loop16add (362, 194))
            ]
        , Group "Bits32"
            [ Single "Addition over Bits32" (basic loop32add (92682, 65574))
            ]
        ]    
    , Group "Subtraction"
        [ Group "Bits8"
            [ Single "Subtraction over Bits8"   (basic loop8sub (23, 255))
            ]
        , Group "Bits16"
            [ Single "Subtraction over Bits16" (basic loop16sub (362, 65535))
            ]
        , Group "Bits32"
            [ Single "Subtraction over Bits32" (basic loop32sub (92682, 4294967295))
            ]
        ]
    , Group "Multiplication"
        [ Group "Bits8"
            [ Single "Multplication over Bits8"   (basic loop8mul (5, 2))
            ]
        , Group "Bits16"
            [ Single "Multiplication over Bits16" (basic loop16mul (8, 1))
            ]
        ]
    ]

main : IO ()
main = runDefault (const True) Details show bench
