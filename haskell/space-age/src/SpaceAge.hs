module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune

earthPeriod :: Float
earthPeriod = 365.25

getPlanetSeconds :: Planet -> Float
getPlanetSeconds Mercury = getSeconds (0.24084670 * earthPeriod)
getPlanetSeconds Venus   = getSeconds (0.61519726 * earthPeriod)
getPlanetSeconds Earth   = getSeconds (1.00000000 * earthPeriod)
getPlanetSeconds Mars    = getSeconds (1.88081580 * earthPeriod)
getPlanetSeconds Jupiter = getSeconds (11.8626150 * earthPeriod)
getPlanetSeconds Saturn  = getSeconds (29.4474980 * earthPeriod)
getPlanetSeconds Uranus  = getSeconds (84.0168460 * earthPeriod)
getPlanetSeconds Neptune = getSeconds (164.791320 * earthPeriod)

getSeconds :: Float -> Float
getSeconds days = days * 24 * 60 * 60

ageOn :: Planet -> Float -> Float
ageOn planet seconds = seconds / getPlanetSeconds planet 
