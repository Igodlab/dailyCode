-- Computerphile's safe div from YouTube
--


data Expr = Val Int | Div Expr Expr 

safediv :: Int -> Int -> Maybe Int
safediv x y = if y == 0 then 
    Nothing
  else
    Just (x `div` y)

eval :: Expr -> Maybe Int
eval (Val n) = return n
eval (Div x y) = do n <- eval x
                    m <- eval y
                    safediv n m
