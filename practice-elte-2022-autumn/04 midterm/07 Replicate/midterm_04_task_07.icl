module midterm_04_task_07

import StdEnv

//// Replicate
/*7.
Given a list of tuples, where each tuple contains a string and a number N.
For each tuple generate a list that contains N copies of the given string.
For negative number N generate empty list.
Example: the tuple ("ab", 3) should be replaced with ["ab","ab","ab"].

*/

copy :: (String, Int) -> [String]
copy t = [s \\ _ <- [1..n]]
where
	s = fst t
	n = snd t

stringCopy :: [(String,Int)] -> [[String]]
stringCopy ts = map copy ts


//Start = stringCopy [("X",3),("AA",2)] // [["X","X","X"],["AA","AA"]]
//Start = stringCopy [("Clean", 1),("?!",0),("Empty",-1)] // [["Clean"],[],[]]
Start = stringCopy [] // []
