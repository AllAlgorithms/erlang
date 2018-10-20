-module(insertsort).
-export([sort/1]).

sort([]) ->
    [];

sort([E]) ->
    [E];

sort(List) ->
    sort(List, []).

sort([], Collector) ->
    Collector;

sort(List, Collector) ->
    Max = lists:max(List),
    sort(lists:delete(Max, List), [Max] ++ Collector).

