{- 
 - Solution to Project Euler problem 19
 - By Nayuki Minase
 - 
 - http://nayuki.eigenstate.org/page/project-euler-solutions
 - https://github.com/nayuki/Project-Euler-solutions
 -}


main = putStrLn (show ans)
ans = length [(y, m) | y <- [1901..2000], m <- [1..12], dayOfWeek y m 1 == 0]

dayOfWeek year month day = mod (y + (div y 4) - (div y 100) + (div (13 * m + 2) 5) + day + 2) 7
    where m1 = mod (month - 3) 4800
          y  = mod (year + (div m1 12)) 400
          m  = mod m1 12
