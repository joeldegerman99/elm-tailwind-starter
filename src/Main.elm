module Main exposing (main)

import Browser
import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (class)


main : Program () Int Msg
main =
    Browser.sandbox { init = init, update = update, view = view }


init : Int
init =
    0


type Msg
    = Increment
    | Decrement


update : Msg -> number -> number
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1


view : Int -> Html Msg
view model =
    div []
        [ button [ onClick Decrement,class "bg-red-400 rounded py-2 px-5" ] [ text "-" ]
        , div [] [ text (String.fromInt model) ]
        , div [] [ text "Hello, World!"] 
        , p [class "text-red-400"] [ text "This is a paragraph" ]
        , button [ onClick Increment ] [ text "+" ]
        ]
