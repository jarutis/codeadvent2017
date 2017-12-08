⎕IO ← 0                         ⍝ Set indexing start to zero

Input ← ⎕FIO[26] 'input/day1.txt' ⍝ Read entire file as byte vector
Data ← '0123456789' ⍳ Input       ⍝ Convert to digit array (needs IO ← 0 to work)

f ← {+/⍵/⍨⍵=⍺⌽⍵}                ⍝ Solve the puzzle

⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝
⍝           ⍺⌽⍵  ⍝ Rotate right argument (⍵) by left argument (⍺) places
⍝         ⍵=     ⍝ Find places where rotated vector matches original
⍝      ⍵/        ⍝ Select only elements from ⍵ where above expression is true
⍝        ⍨       ⍝ Swap arguments to / operator to filter ⍵ by ⍵=⍺⌽⍵.
⍝                  Otherwise the program would look {+/(⍵=⍺⌽⍵)/⍵}
⍝                  Not sure if this trick is usefull apart code golf
⍝    +/          ⍝ Reduce vector by summing its elements
⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝

1 f Data                        ⍝ Part A
((⍴ Data) ÷ 2) f Data           ⍝ Part B
