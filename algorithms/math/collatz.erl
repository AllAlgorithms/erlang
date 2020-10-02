% Collatz conjecture
%
% The Collatz conjecture is a conjecture in mathematics that concerns a sequence defined as follows:
%
% * Start with any positive integer n.
% * Then each term is obtained from the previous term as follows:
%   * if the previous term is even, the next term is one half the previous term.
%   * If the previous term is odd, the next term is 3 times the previous term plus 1.
%
% The conjecture is that no matter what value of n, the sequence will always reach 1.
%
%   -https://github.com/AllAlgorithms/algorithms/tree/master/math/collatz-sequence

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
