-module(quicksort).
-export([quicksort/1]).

quicksort([]) -> [];
quicksort([H|T]) ->
	Lesser = lists:filter(fun(Elem) -> Elem < H end, T),
	Greater = lists:filter(fun(Elem) -> Elem >= H end, T),
	quicksort(Lesser) ++ [H] ++ quicksort(Greater).
