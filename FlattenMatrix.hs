module FlattenMatrix where

x0 = [2,3..11]
x1 = [[2,-1,1], [5,6,7]]
x2 = [[[1.0,11.0,111.0],[2.0,22.0,222.0],[3.0,33.0,333.0]],[[0.1,0.2,0.3],[10.0,20.0,30.0],[100.0,200.0,300.0]]]



flatten :: Num b => a -> [b]
flatten [] = []
flatten mat = case mat of
                [x]     -> [x]
                (m:ms)  -> flatten (m)
                


