
:- main([o_utils]).

:- public('$orc_0_query'/4).

circuit(Specification,Solution) :- 
	num(Depth_limit), search(Depth_limit, 0, Specification, Solution).
 
search(_Depth_limit, _Depth, Table, Solution) :-
	signals(Solution, Table).

search(Depth_limit, Depth, Table, nand(Sl1,Sl2)) :-
	Depth < Depth_limit,
	D is Depth +1,
	search(Depth_limit, D, Sp1, Sl1),
	ngate(Table, Sp1, Sp2),
	search(Depth_limit, D, Sp2, Sl2).


signals( 0, [0,1,0,1,0,1,0,1]).
signals( 1, [0,0,1,1,0,0,1,1]).
signals( 2, [0,0,0,0,1,1,1,1]).
signals( v, [1,1,1,1,1,1,1,1]).
signals( i0, [1,0,1,0,1,0,1,0]).
signals( i1, [1,1,0,0,1,1,0,0]).
signals( i2, [1,1,1,1,0,0,0,0]).

ngate([], [], []).
ngate([1|T0], [0|T1], [_|T2]) :- ngate(T0,T1,T2).
ngate([1|T0], [1|T1], [0|T2]) :- ngate(T0,T1,T2).
ngate([0|T0], [1|T1], [1|T2]) :- ngate(T0,T1,T2).

num(0).
num(N) :- num(M), N is M+1.

query :- circuit([0,0,0,1,0,1,1,1],X), o_send_soln(X).

:- o_bfp.




