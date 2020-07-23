-module(dashboard_handler).


-export([init/2,  terminate/2]).

init(Req, State) ->
	io:format("~n hello there guys~n"),
    {ok, Body} = dashboard_handler_dtl:render([{page_title, "Admin Dashboard"}]),
    Headers = #{<<"content-type">> => <<"text/html">>},
	Req2 = cowboy_req:reply(200, Headers, Body, Req),
    {ok, Req2, State}.

terminate(_Req, _State) ->
ok.

