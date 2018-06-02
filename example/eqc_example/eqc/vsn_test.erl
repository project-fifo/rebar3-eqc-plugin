-module(vsn_test).

-compile([export_all]).

-ifdef(TEST).
-ifdef(EQC).
-include_lib("eqc/include/eqc.hrl").

-ifdef(new_hash).
sha(Bin) ->
    crypto:hash(sha, Bin).
-else.
sha(Bin) ->
    crypto:sha(Bin).
-endif.

prop_true() ->
	?FORALL(V, true, V). 
-endif.
-endif.

