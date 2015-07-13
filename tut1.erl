-module(tut1).
-export([fac/1, mult/2, choose/2]).

fac(1) ->
		1;
fac(N) ->
		N * fac(N-1).

mult(X,Y) ->
		X * Y.

choose(N, K) ->
		fac(N)/(fac(N-K)*fac(K)).
