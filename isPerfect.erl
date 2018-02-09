-module(isPerfect).
-export([factors/1, isPerfect/1, perfectNumbers/2]).

%A is starting point, B is end point
range(A, B) ->
    lists:seq(A,B).

factors(N) ->
    [X || X <- range(1, N-1), N rem X =:= 0].

addFactors(M) ->
	lists:foldl(fun(X, Y) -> X + Y end, 0, factors(M)).

checkIfSame(F, F) ->
	true;
checkIfSame(_,_) ->
	false.

isPerfect (F) ->
	checkIfSame(F, addFactors(F)).


perfectNumbers (A, B) ->
	[X || X <- range(A, B), isPerfect(X)].
	