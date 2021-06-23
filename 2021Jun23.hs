-- Given a mathematical expression with just single digits, plus signs, negative signs, and brackets, evaluate the expression. Assume the expression is properly formed.
-- 
-- Example:
-- Input: - ( 3 + ( 2 - 1 ) )
-- Output: -4
--
--
-- we have run:
-- $ cabal install hint
-- 

import qualified Language.Haskell.Interpreter as Interp

eval x = Interp.runInterpreter $ Interp.setImports ["Prelude"] >> Interp.eval x
