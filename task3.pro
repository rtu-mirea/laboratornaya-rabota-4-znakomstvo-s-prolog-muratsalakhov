domains
s=symbol
predicates
nondeterm parent(s,s)
nondeterm female(s)
nondeterm male(s)
nondeterm mother(s,s)
nondeterm father(s,s)
nondeterm ancestor(s,s)
nondeterm child(s,s)
nondeterm brother(s,s)
nondeterm sister(s,s)
nondeterm grandfather(s,s)
nondeterm grandmother(s,s)
nondeterm cousin(s,s)
clauses
parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).
female(pam).
female(liz).
female(ann).
female(pat).
male(tom).
male(bob).
male(jim).
brother(bob,liz).
sister(liz,bob).
cousin(liz,pat).
cousin(liz,ann).
grandfather(tom,pat).
grandfather(tom,ann).
grandfather(bob,jim).
grandmother(pam,pat).
grandmother(pam,ann).
child(Y,X):- parent(X,Y).
mother(X,Y):- parent(X,Y),female(X).
father(X,Y):- parent(X,Y),male(X).
ancestor(X,Z):- parent(X,Z).
ancestor(X,Z):- parent(X,Y),ancestor(Y,Z).
goal
grandmother(X, pat).
