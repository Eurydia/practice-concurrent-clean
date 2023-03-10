module midterm_04_task_13

import StdEnv

//// Moving digit
/*13.
Complete the function Mover that takes three integers: init, digit and target
and calculates the amount of places the digit, that is equal to the digit in
the number init, has to be shifted to the right in order to get the target number.
It is guaranteed that the digit exists in init and has to be shifted to the right.
Example: 134442 3 144423 -> 4
The digit 3 exists in the init number, and it has to be moved 4 places
in order to get the target number.
*/


getIndex :: Int Int -> Int
getIndex xn n = sum (map isEqual [0..((length xs) - 1)])
where 
	xs = [(toInt d) - 48 \\ d <-: toString xn]
	isEqual :: Int -> Int
	isEqual index
	| (xs !! index) == n = index
	| otherwise = 0 
	
Mover :: Int Int Int -> Int
Mover x n y = (getIndex y n) - (getIndex x n)


//Start = Mover 123 2 132 // 1
//Start = Mover 134442 3 144423 // 4
Start = Mover 100020001 2 100002001 // 1