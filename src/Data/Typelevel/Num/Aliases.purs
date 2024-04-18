module Data.Typelevel.Num.Aliases
  ( D10
  , D100
  , D11
  , D12
  , D13
  , D14
  , D15
  , D16
  , D17
  , D18
  , D19
  , D20
  , D21
  , D22
  , D23
  , D24
  , D25
  , D26
  , D27
  , D28
  , D29
  , D30
  , D31
  , D32
  , D33
  , D34
  , D35
  , D36
  , D37
  , D38
  , D39
  , D40
  , D41
  , D42
  , D43
  , D44
  , D45
  , D46
  , D47
  , D48
  , D49
  , D50
  , D51
  , D52
  , D53
  , D54
  , D55
  , D56
  , D57
  , D58
  , D59
  , D60
  , D61
  , D62
  , D63
  , D64
  , D65
  , D66
  , D67
  , D68
  , D69
  , D70
  , D71
  , D72
  , D73
  , D74
  , D75
  , D76
  , D77
  , D78
  , D79
  , D80
  , D81
  , D82
  , D83
  , D84
  , D85
  , D86
  , D87
  , D88
  , D89
  , D90
  , D91
  , D92
  , D93
  , D94
  , D95
  , D96
  , D97
  , D98
  , D99
  , d10
  , d11
  , d12
  , d13
  , d14
  , d15
  , d16
  , d17
  , d18
  , d19
  , d20
  , d21
  , d22
  , d23
  , d24
  , d25
  , d26
  , d27
  , d28
  , d29
  , d30
  , d31
  , d32
  , d33
  , d34
  , d35
  , d36
  , d37
  , d38
  , d39
  , d40
  , d41
  , d42
  , d43
  , d44
  , d45
  , d46
  , d47
  , d48
  , d49
  , d50
  , d51
  , d52
  , d53
  , d54
  , d55
  , d56
  , d57
  , d58
  , d59
  , d60
  , d61
  , d62
  , d63
  , d64
  , d65
  , d66
  , d67
  , d68
  , d69
  , d70
  , d71
  , d72
  , d73
  , d74
  , d75
  , d76
  , d77
  , d78
  , d79
  , d80
  , d81
  , d82
  , d83
  , d84
  , d85
  , d86
  , d87
  , d88
  , d89
  , d90
  , d91
  , d92
  , d93
  , d94
  , d95
  , d96
  , d97
  , d98
  , d99
  ) where

import Data.Typelevel.Num.Reps (type (:*), D0, D1, D2, D3, D4, D5, D6, D7, D8, D9)
import Data.Typelevel.Undefined (undefined)

type D10 = D1 :* D0
type D11 = D1 :* D1
type D12 = D1 :* D2
type D13 = D1 :* D3
type D14 = D1 :* D4
type D15 = D1 :* D5
type D16 = D1 :* D6
type D17 = D1 :* D7
type D18 = D1 :* D8
type D19 = D1 :* D9
type D20 = D2 :* D0
type D21 = D2 :* D1
type D22 = D2 :* D2
type D23 = D2 :* D3
type D24 = D2 :* D4
type D25 = D2 :* D5
type D26 = D2 :* D6
type D27 = D2 :* D7
type D28 = D2 :* D8
type D29 = D2 :* D9
type D30 = D3 :* D0
type D31 = D3 :* D1
type D32 = D3 :* D2
type D33 = D3 :* D3
type D34 = D3 :* D4
type D35 = D3 :* D5
type D36 = D3 :* D6
type D37 = D3 :* D7
type D38 = D3 :* D8
type D39 = D3 :* D9
type D40 = D4 :* D0
type D41 = D4 :* D1
type D42 = D4 :* D2
type D43 = D4 :* D3
type D44 = D4 :* D4
type D45 = D4 :* D5
type D46 = D4 :* D6
type D47 = D4 :* D7
type D48 = D4 :* D8
type D49 = D4 :* D9
type D50 = D5 :* D0
type D51 = D5 :* D1
type D52 = D5 :* D2
type D53 = D5 :* D3
type D54 = D5 :* D4
type D55 = D5 :* D5
type D56 = D5 :* D6
type D57 = D5 :* D7
type D58 = D5 :* D8
type D59 = D5 :* D9
type D60 = D6 :* D0
type D61 = D6 :* D1
type D62 = D6 :* D2
type D63 = D6 :* D3
type D64 = D6 :* D4
type D65 = D6 :* D5
type D66 = D6 :* D6
type D67 = D6 :* D7
type D68 = D6 :* D8
type D69 = D6 :* D9
type D70 = D7 :* D0
type D71 = D7 :* D1
type D72 = D7 :* D2
type D73 = D7 :* D3
type D74 = D7 :* D4
type D75 = D7 :* D5
type D76 = D7 :* D6
type D77 = D7 :* D7
type D78 = D7 :* D8
type D79 = D7 :* D9
type D80 = D8 :* D0
type D81 = D8 :* D1
type D82 = D8 :* D2
type D83 = D8 :* D3
type D84 = D8 :* D4
type D85 = D8 :* D5
type D86 = D8 :* D6
type D87 = D8 :* D7
type D88 = D8 :* D8
type D89 = D8 :* D9
type D90 = D9 :* D0
type D91 = D9 :* D1
type D92 = D9 :* D2
type D93 = D9 :* D3
type D94 = D9 :* D4
type D95 = D9 :* D5
type D96 = D9 :* D6
type D97 = D9 :* D7
type D98 = D9 :* D8
type D99 = D9 :* D9
type D100 = (D1 :* D0) :* D0

d10 :: D10
d10 = undefined

d11 :: D11
d11 = undefined

d12 :: D12
d12 = undefined

d13 :: D13
d13 = undefined

d14 :: D14
d14 = undefined

d15 :: D15
d15 = undefined

d16 :: D16
d16 = undefined

d17 :: D17
d17 = undefined

d18 :: D18
d18 = undefined

d19 :: D19
d19 = undefined

d20 :: D20
d20 = undefined

d21 :: D21
d21 = undefined

d22 :: D22
d22 = undefined

d23 :: D23
d23 = undefined

d24 :: D24
d24 = undefined

d25 :: D25
d25 = undefined

d26 :: D26
d26 = undefined

d27 :: D27
d27 = undefined

d28 :: D28
d28 = undefined

d29 :: D29
d29 = undefined

d30 :: D30
d30 = undefined

d31 :: D31
d31 = undefined

d32 :: D32
d32 = undefined

d33 :: D33
d33 = undefined

d34 :: D34
d34 = undefined

d35 :: D35
d35 = undefined

d36 :: D36
d36 = undefined

d37 :: D37
d37 = undefined

d38 :: D38
d38 = undefined

d39 :: D39
d39 = undefined

d40 :: D40
d40 = undefined

d41 :: D41
d41 = undefined

d42 :: D42
d42 = undefined

d43 :: D43
d43 = undefined

d44 :: D44
d44 = undefined

d45 :: D45
d45 = undefined

d46 :: D46
d46 = undefined

d47 :: D47
d47 = undefined

d48 :: D48
d48 = undefined

d49 :: D49
d49 = undefined

d50 :: D50
d50 = undefined

d51 :: D51
d51 = undefined

d52 :: D52
d52 = undefined

d53 :: D53
d53 = undefined

d54 :: D54
d54 = undefined

d55 :: D55
d55 = undefined

d56 :: D56
d56 = undefined

d57 :: D57
d57 = undefined

d58 :: D58
d58 = undefined

d59 :: D59
d59 = undefined

d60 :: D60
d60 = undefined

d61 :: D61
d61 = undefined

d62 :: D62
d62 = undefined

d63 :: D63
d63 = undefined

d64 :: D64
d64 = undefined

d65 :: D65
d65 = undefined

d66 :: D66
d66 = undefined

d67 :: D67
d67 = undefined

d68 :: D68
d68 = undefined

d69 :: D69
d69 = undefined

d70 :: D70
d70 = undefined

d71 :: D71
d71 = undefined

d72 :: D72
d72 = undefined

d73 :: D73
d73 = undefined

d74 :: D74
d74 = undefined

d75 :: D75
d75 = undefined

d76 :: D76
d76 = undefined

d77 :: D77
d77 = undefined

d78 :: D78
d78 = undefined

d79 :: D79
d79 = undefined

d80 :: D80
d80 = undefined

d81 :: D81
d81 = undefined

d82 :: D82
d82 = undefined

d83 :: D83
d83 = undefined

d84 :: D84
d84 = undefined

d85 :: D85
d85 = undefined

d86 :: D86
d86 = undefined

d87 :: D87
d87 = undefined

d88 :: D88
d88 = undefined

d89 :: D89
d89 = undefined

d90 :: D90
d90 = undefined

d91 :: D91
d91 = undefined

d92 :: D92
d92 = undefined

d93 :: D93
d93 = undefined

d94 :: D94
d94 = undefined

d95 :: D95
d95 = undefined

d96 :: D96
d96 = undefined

d97 :: D97
d97 = undefined

d98 :: D98
d98 = undefined

d99 :: D99
d99 = undefined
