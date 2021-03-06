%%%-------------------------------------------------------------------
%%% @author grzegorz
%%% @copyright (C) 2018, The Company Ltd
%%% @doc
%%%
%%% @end
%%% Created : 28. May 2018 16:13
%%%-------------------------------------------------------------------
-module(s3_chunk_client).
-author("grzegorz").

%% API
-export([write/2, read/1, delete/1]).

%%====================================================================
%% API
%%====================================================================

%% -------------------------------------------------------------------
%% @doc write chunk
%% -------------------------------------------------------------------
-spec write(binary(), binary()) -> ok.
write(Key, Data) ->
  s3_chunk_server:write(Key, Data).


%% -------------------------------------------------------------------
%% @doc read chunk
%% -------------------------------------------------------------------
-spec read(binary()) -> binary().
read(Key) ->
  s3_chunk_server:read(Key).

%% -------------------------------------------------------------------
%% @doc delete chunk
%% -------------------------------------------------------------------
-spec delete(binary()) -> ok.
delete(Key) ->
  s3_chunk_server:delete(Key).
