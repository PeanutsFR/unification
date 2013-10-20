import Data.List
import Data.Char

module Term (
             Var,
             FuncSymb,
             Signature,
             Term,
             varToTerm,
             constructTerm,
             variables,
             sig,
             Substitution,
             identity,
             (*!),
             (@@)
             )
  where

  -- Var --

  data Var = String

  instance Eq Var

  instance Show Var where
    show (Var a) = a

  -- FuncSymb --

  data FuncSymb = Var | Function [FuncSymb]

  instance Eq FuncSymb

  instance Show FuncSymb where
    show (Var a) = a
    show (Function f l) = f ++ (show l)

  -- Signature --

  type Signature = [(FuncSymb, Int)]

  -- Term --

  data Term = V Var | Function FuncSymb [Term]

  instance Show Term where
    show (V Var a) = show (Var a)
    show (Function f l) = show(f) ++ show(l)

  -- Substitution --

  data Substitution = Substitution [(Var, Term)]

  instance Show Substitution

  -----

  varToTerm :: Var -> Term

--  constructTerm :: String -> [Term] -> Term

--  variables :: Term -> [Var]

--  sig :: Term -> Signature

--  identity :: Substitution

 -----

 varToTerm a = V a



