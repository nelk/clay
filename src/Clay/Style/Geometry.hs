{-# LANGUAGE OverloadedStrings, GeneralizedNewtypeDeriving #-}
module Clay.Style.Geometry where

import Prelude hiding (Left, Right)

import Clay.Core.Property
import Clay.Core.Rule
import Clay.Style.Size
import Clay.Style.Common

-------------------------------------------------------------------------------

newtype Position = Position Value
  deriving Val

instance Other   Position where other   = Position
instance Inherit Position where inherit = Position "inherit"

static, absolute, fixed, relative :: Position

static   = Position "static"
absolute = Position "absolute"
fixed    = Position "fixed"
relative = Position "relative"

position :: Position -> Css
position = key "position"

-------------------------------------------------------------------------------

size, top, left, bottom, right :: Size -> Css

size      = key "size"
top       = key "top"
left      = key "left"
bottom    = key "bottom"
right     = key "right"

width, height, minWidth, minHeight :: Size -> Css

width     = key "width"
height    = key "height"
minWidth  = key "min-width"
minHeight = key "min-height"

-------------------------------------------------------------------------------

padding, margin :: Size -> Size -> Size -> Size -> Css

padding = key4 "padding"
margin  = key4 "margin"

paddingTop, paddingLeft, paddingRight, paddingBottom :: Size -> Css

paddingTop    = key "padding-top"
paddingLeft   = key "padding-left"
paddingRight  = key "padding-right"
paddingBottom = key "padding-bottom"

marginTop, marginLeft, marginRight, marginBottom :: Size -> Css

marginTop     = key "margin-top"
marginLeft    = key "margin-left"
marginRight   = key "margin-right"
marginBottom  = key "margin-bottom"
