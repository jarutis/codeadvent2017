⎕IO←0

Input ← ⎕FIO[26] 'input/day9.txt'

p0←{⍵/⍨~ '!!' ⎕RE['/g'] ⍵}      ⍝ Eliminate double exclamation marks
p1←{⍵/⍨{~⍵∨¯1⌽⍵}{⍵∊'!'}⍵}       ⍝ Eliminate exclamation mark with succeding char
p2←{(~'<.*?>' ⎕RE['/g'] ⍵)/⍵}   ⍝ Eliminate garbage
p3←{((+\⍵∊'{')-+\⍵∊'}')∧⍵∊'{'}
a←{+/ p3 p2 p1 p0 ⍵}

a Input


p2b←{('<.*?>' ⎕RE['/g'] ⍵)/⍵}   ⍝ Extract garbage
p3b←{2×+/⍵∊'>'}                 ⍝ Number of garbage expression symbols
b←{{(⍴⍵) - p3b ⍵} p2b p1 p0 ⍵}

b Input
