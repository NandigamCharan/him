module Main exposing (..)

import Html exposing (Html, Attribute, div, input, text)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)
import Browser
import Time

-- MAIN

main = 
    text "hello world"
-- Browser.sandbox { init= init, update = update, view = view }


-- Model


type alias User = 
    { id: String
    , name: String
    }

type alias Message = 
    { message: String
    , time: Time.Posix
    , user: User
    }

type alias Model = List String

init : Model
init = [] 

-- UPDATE 

type Msg = Change String 

update : Msg -> Model -> Model
update msg model = 
    case msg of 
        Change newContent ->
            newContent::model



-- VIEW

view : Model -> Html Msg
view model = 
    text "hello"