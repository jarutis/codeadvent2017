Input ← ⎕FIO[26] 'input/day2.txt' ⍝ Read entire file
Data ← 16 16 ⍴ ⍎ Input            ⍝ Convert to vector by executing (⍎) and reshape

⍝ Solution to part A
a ← {+/(⌈/⍵)-⌊/⍵}

⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝
⍝            ⌊/⍵  ⍝ Take minimum of each matrix ⍵ row
⍝       ⌈/⍵       ⍝ Take maximum of each matrix ⍵ row
⍝           -     ⍝ Substract minimum from maximum
⍝    +/           ⍝ Reduce by summing
⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝

a Data

⍝ Solution to part B

b ← {+/{1~⍨⍵/⍨⍵=⌊⍵}¨{,⍵∘.÷⍵}¨,/⍵}

⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝
⍝                            ,/⍵  ⍝ Convert matrix to nested arrays
⍝                   {      }¨     ⍝ Apply lambda to each element
⍝                     ⍵∘.÷⍵       ⍝ Vector outer product
⍝                    ,            ⍝ Flatten result matrix to a vector
⍝      {          }¨              ⍝ Apply lambda to each element
⍝             ⍵=⌊⍵                ⍝ Find whole number index
⍝          ⍵/¨                    ⍝ Select whole numbers from ⍵
⍝       1~⍨                       ⍝ Remove 1s
⍝    +/                           ⍝ Reduce by summing
⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝

b Data
