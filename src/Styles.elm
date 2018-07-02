module Styles exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)

page : Attribute msg
page =
  style
    [ ("box-sizing", "border-box")
    , ("overflow", "hidden")
    , ("display", "flex")
    , ("flex-direction", "column")
    , ("align-items", "center")
    , ("justify-content", "center")
    , ("height", "100%")
    , ("color", "rgba(10, 20, 20, .8)")
    , ("font-family", "BlinkMacSystemFont, -apple-system, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif")
    , ("font-size", "16px")
    ]

heading : Attribute msg
heading =
  style
    [ ("display", "flex")
    , ("margin", "-8vh 0 0")
    , ("flex-direction", "column")
    , ("justify-content", "center")
    , ("font-size", "20vw")
    , ("font-weight", "900")
    , ("line-height", ".397")
    ]

headingName : Attribute msg
headingName =
  style
    [ ("position", "relative")
    , ("color", "rgba(255, 255, 255, 1)")
    , ("text-shadow", "0 0 1000px rgba(10, 20, 20, .8)")
    ]

headingSurname : Attribute msg
headingSurname =
  style
    [ ("position", "relative")
    , ("color", "rgba(255, 255, 255, .86)")
    , ("text-shadow", "0 0 1000px rgba(10, 20, 20, .9)")
    ]

socials : Attribute msg
socials =
  style
    [ ("position", "absolute")
    , ("display", "flex")
    , ("align-items", "center")
    , ("bottom", "25px")
    ]

socialLink : Attribute msg
socialLink =
  style
    [ ("margin-left", "20px")
    , ("color", "rgba(10, 20, 20, .8)")
    , ("font-family", "monospace")
    , ("font-size", "16px")
    ]

cv : Attribute msg
cv =
  style
    [ ("position", "absolute")
    , ("top", "20px")
    , ("right", "22px")
    ]

cvItem : Attribute msg
cvItem =
  style
    [ ("line-height", "1.4")
    , ("text-align", "right")
    ]

cvLink : Attribute msg
cvLink =
  style
    [ ("display", "inline-block")
    , ("margin-right", "0px")
    , ("color", "rgba(10, 20, 20, .8)")
    , ("font-family", "monospace")
    , ("font-size", "16px")
    ]

cvLang : Attribute msg
cvLang =
  style
    [ ("display", "inline-block")
    , ("margin-left", "6px")
    , ("color", "rgba(10, 20, 20, .8)")
    , ("font-family", "Georgia, Times, 'Times New Roman', serif")
    , ("font-size", "13px")
    , ("font-style", "italic")
    ]
