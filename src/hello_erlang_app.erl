-module(hello_erlang_app).
-behaviour(application).

-export([start/2]).
-export([stop/1]).

start(_Type, _Args) ->
    EV = os:getenv("PORT", "8080"),
    io:fwrite("~s ~s ~s ~s.\n", ["launched", "sample", "Erlang", EV]),
    PORT = list_to_integer(EV),
    Dispatch = cowboy_router:compile([
        {'_', [{"/", hello_handler, []}]}
    ]),
    {ok, _} = cowboy:start_clear(my_http_listener,
        [{port, PORT}],
        #{env => #{dispatch => Dispatch}}
    ),
    hello_erlang_sup:start_link().

stop(_State) ->
    ok.
