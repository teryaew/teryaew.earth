import Html exposing (..)
import Html.Attributes exposing (..)

import Styles

type alias LinkEntry =
  { url : String
  , title : String
  }

stylesheet =
  let
    tag = "style"
    attrs = []
    children =
      [ text "body { height: 100%; }" ]
  in
    node tag attrs children

socialLinks : List LinkEntry
socialLinks =
  [ { url = "https://www.facebook.com/teryaew", title = "Facebook" }
  , { url = "https://www.github.com/teryaew", title = "GitHub" }
  , { url = "https://twitter.com/teryaew", title = "Twitter" }
  , { url = "https://vk.com/mitya.teryaew", title = "VKontakte" }
  ]

main : Html msg
main =
  div [Styles.page]
    [ stylesheet
    , h1 [Styles.heading]
      [ span [Styles.headingName] [text "Mitya"]
      , span [Styles.headingSurname] [text "Teryaew"]
      ]
    , a [href "#", Styles.cv] [text "CV"]
    , section [Styles.socials]
      [ span [] (List.map renderLink socialLinks) ]
    ]

renderLink : LinkEntry -> Html msg
renderLink {url, title} =
  a [href url, rel "noopener noreferrer", target "_blank", Styles.socialLink] [text title]
