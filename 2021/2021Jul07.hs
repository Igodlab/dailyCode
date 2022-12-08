-- You are given an array of integers. Return the largest product that can be made by multiplying any 3 integers in the array.
-- 
-- Example:
-- 
-- [-4, -4, 2, 8] should return 128 as the largest product can be made by multiplying -4 * -4 * 8 = 128.
-- 
-- Here's a starting point:
-- 

maximum_product_of_three :: (Ord a) => [Integer] -> Integer
maximum_product_of_three l = case l of
    []        -> error "list length has to be >= 3"
    (x:[])    -> error "list length has to be >= 3"
    (x:y:[])  -> error "list length has to be >= 3"
    (x:y:z:_) -> maximum [(l !! i)*(l !! j)*(l !! k) | i <- ll, j <- ll, k <- ll, i /= j && i /= k && j /= k] 
  where 
    ll = [0..(-1)+length l]

lst = [-4, -4, 2, 8]
