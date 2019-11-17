module Bob
  ( responseFor
  ) where

import qualified Data.Char as C
import           Data.Text (Text)
import qualified Data.Text as T

responseFor :: Text -> Text
responseFor xs
  | isEmpty = T.pack "Fine. Be that way!"
  | isAllUpper && isQuestion = T.pack "Calm down, I know what I'm doing!"
  | isAllUpper = T.pack "Whoa, chill out!"
  | isQuestion = T.pack "Sure."
  | otherwise = T.pack "Whatever."
  where
    filtered = T.filter (not . C.isSpace) xs
    isAllUpper = hasLetters && T.all (not . C.isLower) filtered
    hasLetters = T.any C.isLetter xs
    isQuestion = T.last filtered == '?'
    isEmpty = filtered == T.empty
