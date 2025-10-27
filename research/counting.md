# Counting system

each letter is assigned to a specific syllable

00: aa
01: ab
02: ac
03: ad
04: ae
05: af
06: ag
07: ah
08: ai
09: aj
10: ba
11: bb
12: bc
13: bd
14: be
15: bf
16: bg
17: bh
18: bi
19: bj
20: ca
21: cb
22: cc
23: cd
.
.
.
96: jg
97: jh
98: ji
99: jj

67: gh

"amount of power of 100"
|00: kb (word for time 100^1; "100^01" "100^ab": kb)
|0000: kc (word for time 100^2)
|000000: kd (word for time 100^3)
|00000000: ke (word for time 100^4)

400 - 4'00: 04 |00
4'000 - 40'00: 40 |00
40'000 - 4'00'00: 04 |0000
400'002 - 40'00'02: 40 |0000 02
4'000'000 - 04'00'00'00: 04 |000000
40'000'000 - 40'00'00'00: 40 |000000
155'000'000 - 15'50'00'00'00: 15 50 |000000
400'000'000 - 04'00'00'00'00: 04 |00000000
4'000'000'000 - 40'00'00'00'00: 40 |00000000
4'000'210'000 - 40 |00000000 21 |0000
9'900'000'000 - 99'00'00'00'00: 99 |00000000
9'999'999'999 - 99'99'99'99'99: 99 99 99 99 99

aj jj jj jj

after using a |0000 type multiplier, the following number is assumed to be additionned to the total; only allowed for a smaller number after that

it is allowed to say any number by using a sequence of base 100 number words, but if the precision is not required it is better to use the |0000 type multipliers
if a number contains a 00 group, it is better to use a |0000 type multiplier e.g. 43'001'122 - 43'00'11'22: 43 |000000 11 22 (not 43 00 11 22)

## Decimals

.: ka (word for decimal marker)

then the numbers two by two using the counting system base 100

very rarely but still ok to use the |0000 type multipliers

no prefacing 00, prefacing zero is implied: 0.56 is .56

0.04: . 04
3.14: 03 . 14
624.9503: 06 24 . 95 03

## Decimal exponent notation

0^: kk (word for "times 10 power" x10^, or concatenate with X number of zeros)

it is prefered for the exponent to be an even number

9x10^15: 90 0^ 14 or (09 0^ 15 but more for direct translation)
62.34x10^14: 62 . 34 0^ 14

this notation is used for large numbers that don't require much precision, like numbers >= 10'000'000'000

10'000'000'000: 01 0^ 10
85'000'000'000'000: 85 0^ 12
85'345'000'000'000: 85 34 50 0^ 8 or 08 . 53 45 0^ 12

the same system is used for representing numbers using the sientific notation

4.67e7: 04 . 67 0^ 07
