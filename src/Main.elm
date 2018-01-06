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
      [ text """
          html, body { height: 100%; }
          @media screen and (max-width: 768px) {
            body { background: #eee; }
            h1 { line-height: .8 !important; }
          }
        """
      ]
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
    [ node "meta"
        [ name "viewport"
        , content "width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
        ] []
    , stylesheet
    , h1 [Styles.heading]
      [ span [Styles.headingName] [text "Mitya"]
      , span [Styles.headingSurname] [text "Teryaew"]
      ]
    , a [href "pdf/teryaew__cv_2017.pdf", Styles.cv] [text "CV"]
    , section [Styles.socials]
      [ span [] (List.map renderLink socialLinks) ]
    ]

renderLink : LinkEntry -> Html msg
renderLink {url, title} =
  a [href url, rel "noopener noreferrer", target "_blank", Styles.socialLink] [text title]
