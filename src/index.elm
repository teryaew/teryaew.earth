import Html exposing (..)
import Html.Attributes exposing (..)

stylePage : Attribute msg
stylePage =
  style
    [ ("box-sizing", "border-box")
    , ("display", "flex")
    , ("flex-direction", "column")
    , ("align-items", "center")
    , ("justify-content", "center")
    , ("height", "100%")
    , ("color", "rgba(0, 0, 0, .8)")
    , ("font-family", "BlinkMacSystemFont, -apple-system, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', 'Roboto Rouble', sans-serif")
    , ("font-size", "16px")
    , ("border", "50px solid azure")
    ]

styleHeading : Attribute msg
styleHeading =
  style
    [ ("font-size", "30px")
    ]

styleSubHeading : Attribute msg
styleSubHeading =
  style
    [ ("margin-bottom", "40px")
    , ("font-family", "Georgia, serif")
    , ("font-style", "italic")
    , ("font-size", "18px")
    ]

styleSocialLink : Attribute msg
styleSocialLink =
  style
    [ ("color", "rgba(0, 0, 0, .8)")
    , ("margin-left", "5px")
    ]

socialLinks : List LinkEntry
socialLinks =
  [ { url = "https://www.facebook.com/teryaew", title = "fb" }
  , { url = "https://www.facebook.com/teryaew", title = "gh" }
  , { url = "https://twitter.com/teryaew", title = "tw" }
  , { url = "https://vk.com/mitya.teryaew", title = "vk" }
  ]

type alias LinkEntry =
  { url : String
  , title : String
  }

main : Html msg
main =
  div [stylePage]
    [ h1 [styleHeading] [text "Mitya Teryaew"]
    , h2 [styleSubHeading] [text "Hack the system!"]
    , section []
        [ span [] (List.map renderLink socialLinks) ]
    ]

renderLink : LinkEntry -> Html msg
renderLink {url, title} =
  a [href url, rel "noopener noreferrer", target "_blank", styleSocialLink] [text title]
