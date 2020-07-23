-module(dashboard_handler).


% -module(simple_server_http_pony).
% -behaviour(cowboy_http_handler).
-export([init/2,  terminate/2]).

init(Req, State) ->
io:format("~n hello there guys"),
    {ok, Body} = dashboard_handler_dtl:render([{pony_name, "Dazzleglow"}]),
    Headers = #{<<"content-type">> => <<"text/html">>},
 %    {ok, Req2} = cowboy_http_req:reply(200, Headers, Body, Req),


% Title = "Hello world!",
Req2 = cowboy_req:reply(200, Headers, Body, Req),



    {ok, Req2, State}.

terminate(_Req, _State) ->
ok.



% -export([init/2]).

% init(Req0, Opts) ->


% 	Req = cowboy_req:reply(200, #{
% 		<<"content-type">> => <<"text/plain">>
% 	}, <<"Hello world!">>, Req0),
% {ok, Req, Opts}.





% init({tcp, http}, Req, _Opts) ->
% {ok, Req, undefined_state}.















% -module(dashboard_handler).

% % -export([init/2]).

% % init(Req0, Opts) ->
% % 	Req = cowboy_req:reply(200, #{
% % 		<<"content-type">> => <<"text/plain">>
% % 	}, <<"Hello world!">>, Req0),
% % {ok, Req, Opts}.




% % -module(feed_update_handler).

% -export([init/2]).

% -export([content_types_provided/2]).
% -export([welcome/2]).
% -export([terminate/3]).

% %% Init
% init(Req0, Opts) ->
% 	{upgrade, protocol, cowboy_rest}.

% %% Callbacks
% content_types_provided(Req, State) ->
% 	{[		
% 		{<<"text/html">>, welcome}	
% 	], Req, State}.

% terminate(_Reason, _Req, _State) ->
% 	ok.

% %% API
% welcome(Req, State) ->
	



% 	{ok, Body} = dashboard_handler_dtl:render(
% 		[
% 			{<<"Params_movies_video">>,"hi"}
% 		]),
%     {Body, Req, State}
% .
