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
            body { -webkit-text-size-adjust: 100%; background: #eee; }
            h1 { margin-top: 0; line-height: .8 !important; }
            section a { font-size: 13px !important; }
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
    , node "script" [async True, src "https://www.googletagmanager.com/gtag/js?id=UA-112022455-1"] []
    , node "script" [] [text """
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());
        gtag('config', 'UA-112022455-1');
      """]
    , stylesheet
    , h1 [Styles.heading]
      [ span [Styles.headingName] [text "Mitya"]
      , span [Styles.headingSurname] [text "Teryaew"]
      ]
    , div [Styles.cv]
      [ div [Styles.cvItem]
        [ a [href "pdf/teryaew__cv_2018_en.pdf", Styles.cvLink] [text "CV"]
        , span [Styles.cvLang] [text "(in english)"]
        ]
      , div [Styles.cvItem]
        [ a [href "pdf/teryaew__cv_2018_ru.pdf", Styles.cvLink] [text "CV"]
        , span [Styles.cvLang] [text "(на русском)"]
        ]
      ]
    , section [Styles.socials]
      [ span [] (List.map renderLink socialLinks) ]
    ]

renderLink : LinkEntry -> Html msg
renderLink {url, title} =
  a [href url, rel "noopener noreferrer", target "_blank", Styles.socialLink] [text title]
