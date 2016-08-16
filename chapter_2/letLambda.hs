module FunctionWithLet where

printInc2 n =
	(\plusTwo -> print plusTwo)(n + 2)
