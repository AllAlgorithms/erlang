% Factorial
%
% The factorial of a non-negative integer n, denoted by n!, is the product of all
% positive integers less than or equal to n. For example: 5! = 5 x 4 x 3 x 2 x 1 = 120.
%
%   -https://github.com/AllAlgorithms/algorithms/tree/master/math/factorial

-module(factorial).

-export([factorial/1]).

-include_lib("eunit/include/eunit.hrl").

factorial(N) ->
    factorial(N, 1).

factorial(N, _) when N < 0 -> error;
factorial(0, F) -> F;
factorial(N, F) -> factorial(N-1, N*F).

factorial_test_() ->
    [
     ?_assertEqual(1, factorial(0)),
     ?_assertEqual(1, factorial(1)),
     ?_assertEqual(6, factorial(3)),
     ?_assertEqual(120, factorial(5)),
     ?_assertEqual(error, factorial(-5)),
     ?_assertEqual(error, factorial(3.14))
    ].
