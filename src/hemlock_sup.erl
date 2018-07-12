-module(hemlock_sup).

-behaviour(supervisor).

-export([start_link/0]).
-export([init/1]).

-define(SERVER, ?MODULE).

%% API functions

start_link() ->
    supervisor:start_link({local, ?SERVER}, ?MODULE, []).

%% Callbacks

init([]) ->
    {ok, { {one_for_all, 0, 1}, []} }.
