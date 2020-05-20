**Review number 2**

Digital audio workstation plugins

Apply music filter to tracks

Band pass filter for artists

Takes a sound wave, an upper and lower value and filters any frequencies out of the specified range

Lower _then_ Upper

Default lower = 40
Default upper = 1000

Null values are sometimes found in the array. Any null/nil present should raise an error.

Verification of 44,100 frequencies should be run in 100ms.

Okay to overwrite the original soundwaves.

Input | Output
----- | -----
modulate([5,6,7,8,9], 3, 9) | [5,6,7,8,9]
modulate([5,6,7,8,9], 6, 9) | [6,6,7,8,9]
modulate([5,6,7,8,9], 5, 7) | [5,6,7,7,7]
modulate([30, 40, 50, 2000]) | [40, 40, 50, 1000]

modulate([5,6,7,8,9], 10, 1) | 'Error: impossible range specified'
modulate([5,6,7,nil,9]) | 'Error: corrupted input (nill values contained)'
