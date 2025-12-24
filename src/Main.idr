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
  Group "fixnum"
    [ Group "addition"
        [ Single "Bits8"  (basic loopbits8add (32, 2))
        , Single "Int8"  (basic loopint8add (32, 2))
        , Single "Bits16" (basic loopbits16add (362, 194))
        , Single "Int16" (basic loopint16add (362, 194))
        , Single "Bits32" (basic loopbits32add (92682, 65574))
        , Single "Int32" (basic loopint32add (92682, 65574))
        ]    
    , Group "subtraction"
        [ Single "Bits8"   (basic loopbits8sub (23, 255))
        , Single "Int8"   (basic loopint8sub (23, 255))
        , Single "Bits16" (basic loopbits16sub (362, 65535))
        , Single "Int16" (basic loopint16sub (362, 65535))
        , Single "Bits32" (basic loopbits32sub (92682, 4294967295))
        , Single "Int32" (basic loopint32sub (92682, 4294967295))
        ]
    , Group "multiplication"
        [ Single "Bits8"   (basic loopbits8mul (5, 2))
        , Single "Int8"   (basic loopint8mul (5, 2))
        , Single "Bits16" (basic loopbits16mul (8, 1))
        , Single "Int16" (basic loopint16mul (8, 1))
        ]
    ]

main : IO ()
main = runDefault (const True) Details show bench
