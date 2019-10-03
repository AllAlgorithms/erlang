-module(binarySearch).
-export([binarySearch/4]).

binarySearch(_, Low, Hi, _) when Low > Hi -> 0;
binarySearch(L, X, Low, Hi) ->
    Mid = (Low + Hi) div 2,
    VAL = element(Mid, L),
    if
        VAL > X -> binarySearch(L, X, Low, Mid-1);
        VAL < X -> binarySearch(L, X, Mid+1, Hi);
        true    -> Mid
    end.
