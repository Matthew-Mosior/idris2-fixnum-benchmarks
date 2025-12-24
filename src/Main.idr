module Main

import Bits8
import Bits16
import Bits32
import Int8
import Int16
import Int32

import Profile
import System

bench : Benchmark Void
bench =
  Group "Fixnum operations benchmarking"
    [ Group "Addition"
        [ Group "Bits8"
            [ Single "Addition over Bits8"  (basic loopbits8add (32, 2))
            ]
        , Group "Int8"
            [ Single "Addition over Int8"  (basic loopint8add (32, 2))
            ]
        , Group "Bits16"
            [ Single "Addition over Bits16" (basic loopbits16add (362, 194))
            ]
        , Group "Int16"
            [ Single "Addition over Int16" (basic loopint16add (362, 194))
            ]
        , Group "Bits32"
            [ Single "Addition over Bits32" (basic loopbits32add (92682, 65574))
            ]
        , Group "Int32"
            [ Single "Addition over Int32" (basic loopint32add (92682, 65574))
            ]
        ]    
    , Group "Subtraction"
        [ Group "Bits8"
            [ Single "Subtraction over Bits8"   (basic loopbits8sub (23, 255))
            ]
        , Group "Int8"
            [ Single "Subtraction over Int8"   (basic loopint8sub (23, 255))
            ]
        , Group "Bits16"
            [ Single "Subtraction over Bits16" (basic loopbits16sub (362, 65535))
            ]
        , Group "Int16"
            [ Single "Subtraction over Int16" (basic loopint16sub (362, 65535))
            ]
        , Group "Bits32"
            [ Single "Subtraction over Bits32" (basic loopbits32sub (92682, 4294967295))
            ]
        , Group "Int32"
            [ Single "Subtraction over Int32" (basic loopint32sub (92682, 4294967295))
            ]
        ]
    , Group "Multiplication"
        [ Group "Bits8"
            [ Single "Multplication over Bits8"   (basic loopbits8mul (5, 2))
            ]
        , Group "Int8"
            [ Single "Multplication over Int8"   (basic loopint8mul (5, 2))
            ]
        , Group "Bits16"
            [ Single "Multiplication over Bits16" (basic loopbits16mul (8, 1))
            ]
        , Group "Int16"
            [ Single "Multiplication over Int16" (basic loopint16mul (8, 1))
            ]
        ]
    ]

main : IO ()
main = runDefault (const True) Details show bench
