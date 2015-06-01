-module(afile_client).
-export([ls/1, get_file/2]).

ls(Server) ->
  Server ! {self(), list_dir},
  receive
    {Server, FileList} ->
      FileList
  end.

get_file(Server, File) ->
  Server ! {self(), {getFile, File}},
  receive
    {Server, Content} ->
      Content
  end.
