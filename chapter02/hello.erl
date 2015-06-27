-module(hello).
-export([start/0, start/1]).

start() ->
  io:format("Hello, World!~n").
start(Name) ->
  Res = "Hello, " ++ Name ++ "!~n",
  io:format(Res).
