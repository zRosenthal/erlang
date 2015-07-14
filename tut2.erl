%%tut2.erl - working with tuples, lists, and io formatting

-module(tut2).
-export([format_temps/1]).

%%only function that is exported
format_temps([]) ->
		ok;
format_temps([City| Rest]) ->
		print_temp(convert_to_celsius(City)),
		format_temps(Rest).

convert_to_celsius({Name, {c, Temp}}) ->
		{Name, {c, Temp}};
convert_to_celsius({Name, {f, Temp}}) ->
		{Name, {c, (Temp -32) * 5 / 9}}.

print_temp({Name, {c, Temp}}) ->
		io:format("~-15w ~10w- c~n", [Name, Temp]).
