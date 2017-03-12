module Main exposing (..)

-- package imports

import Html exposing (..)
import Html.Attributes exposing (class, src)


-- MODEL


type alias Model =
    String


init : ( Model, Cmd Msg )
init =
    ( "Hello", Cmd.none )



-- MESSAGES


type Msg
    = NoOp



-- VIEW


titleView : Html Msg
titleView =
    h1 [ class "title" ] [ text "Sagan Pup" ]


imageView : String -> Html Msg
imageView url =
    img [ src url, class "image" ]
        []


imageListView : Model -> Html Msg
imageListView model =
    let
        images =
            [ "https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fanimalsbreeds.com%2Fwp-content%2Fuploads%2F2015%2F01%2FCarolina-Dog.jpg&f=1"
            , "https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fmedia-cache-ec0.pinimg.com%2F736x%2F9b%2F2c%2Fea%2F9b2cea574c4ebdd7e39e67cf25a25322.jpg&f=1"
            , "https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.dogforums.com%2Fattachments%2Fgeneral-dog-forum%2F124954d1386987405-carolina-dogs-image.jpg&f=1"
            , "https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fmedia-cache-ec0.pinimg.com%2F736x%2F92%2F21%2Ff2%2F9221f2dccac6d85a7cac0f3e4f2f0471.jpg&f=1"
            , "https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fmedia-cache-ec0.pinimg.com%2F736x%2F9b%2F2c%2Fea%2F9b2cea574c4ebdd7e39e67cf25a25322.jpg&f=1"
            , "https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.dogforums.com%2Fattachments%2Fgeneral-dog-forum%2F124954d1386987405-carolina-dogs-image.jpg&f=1"
            , "https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fmedia-cache-ec0.pinimg.com%2F736x%2F92%2F21%2Ff2%2F9221f2dccac6d85a7cac0f3e4f2f0471.jpg&f=1"
            , "https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fanimalsbreeds.com%2Fwp-content%2Fuploads%2F2015%2F01%2FCarolina-Dog.jpg&f=1"
            ]
    in
        div [ class "image-container" ] <| List.map imageView images


view : Model -> Html Msg
view model =
    div [ class "content" ]
        [ titleView
        , imageListView model
        ]



-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- MAIN


main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
