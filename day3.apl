⎕IO←0

Start ← 368078

f ← {1+⌊2÷⍨1-⍨⌊(⍵-1)*0.5}       ⍝ Find rectangular in which the number resides
g ← {(1+⍵×2)*2}                 ⍝ Find largest number in that rectangular
h ← {⍺-⍨⍵-⍺×2×(⍳4)}             ⍝ Find numbers on axis
a ← {(f ⍵)+⌊/|⍵-(f ⍵)h(g f ⍵)}  ⍝ Distance equals to rectangular number plus
                                ⍝ the smallest distance from axis

a Start

