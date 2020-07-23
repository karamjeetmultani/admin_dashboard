-module(mvd_dashboard_app).
-behaviour(application).

-export([start/2]).
-export([stop/1]).

% start(_Type, _Args) ->
% 	mvd_dashboard_sup:start_link().

% stop(_State) ->
% 	ok.




start(_Type, _Args) ->
	Dispatch = cowboy_router:compile([
		{'_', [
			{"/", dashboard_handler, []}
		]}
	]),
	{ok, _} = cowboy:start_clear(http, [{port, 8080}], #{
		env => #{dispatch => Dispatch}
	}),
	mvd_dashboard_sup:start_link().

stop(_State) ->
ok = cowboy:stop_listener(http).