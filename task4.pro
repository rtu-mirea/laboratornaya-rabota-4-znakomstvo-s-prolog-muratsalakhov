domains
s=symbol
i=integer
predicates
nondeterm person(s)
nondeterm likes(s,s)
nondeterm has_money(s,i)
nondeterm can_buy(s,s)
nondeterm car(s)
nondeterm price(s,i)
nondeterm for_sale(s)
clauses
person(bob).
person(john).
person(daniel).
has_money(bob, 1000).
has_money(john, 2000).
has_money(daniel, 5000).
likes(bob, subaru).
likes(bob, ford).
likes(bob, mercedez).
likes(bob, lamborghini).
likes(john, ford).
likes(john, mercedez).
likes(daniel, mercedez).
likes(daniel, lamborghini).
car(subaru).
car(ford).
car(mercedez).
car(lamborghini).
price(subaru, 500).
price(ford, 1000).
price(mercedez, 2000).
price(lamborghini, 4000).
for_sale(subaru).
for_sale(ford).
for_sale(mercedez).
for_sale(lamborghini).

can_buy(X,Y) :- person(X), car(Y), for_sale(Y), likes(X,Y), has_money(X, Z), price(Y, W), Z>=W.

goal
can_buy(bob, lamborghini).
