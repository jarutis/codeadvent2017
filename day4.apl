Input ← ⎕FIO[49] 'input/day4.txt' ⍝ Read lines into array

Unique ← {⍵/⍨(⍵⍳⍵)=⍳⍴⍵}              ⍝ 211 in https://aplwiki.com/FinnAplIdiomLibrary

{⍴⍵=⍴ Unique ⍵}¨{(⍵≠' ')⊂⍵}¨Input
