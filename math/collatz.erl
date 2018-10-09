-module(collatz).

-export([seq/1]).
-include_lib("eunit/include/eunit.hrl").

seq(Start) -> collatz(Start, []).

collatz(1, List) -> lists:reverse([1 | List]);
collatz(N, List) when N band 1 == 0 -> collatz(N div 2, [N | List]);
collatz(N, List) when N band 1 == 1 -> collatz(3*N + 1, [N | List]).

seq_test_() ->
    [
     ?_assertEqual([13,40,20,10,5,16,8,4,2,1], seq(13)),
     ?_assertEqual([10,5,16,8,4,2,1], seq(10))
    ].
