# Gandhi-Family-Tree-Prolog

This a Prolog program that I have created as an assignment for my CS312 Artificial Intelligence Course. You can run this code using any prolog compiler.

This program contains a knowledge base system of Gandhi Family Relations, and uses facts and rules to create a Family tree of any member of the Gandhi family,

run() command can be used to see the instructions and details

Write `tree(<name>).` to view family tree of any member of the Gandhi family!

For example, type `tree(rahul).` to see the family tree of Rahul Gandhi

Iterable family members are rahul, sonia, rajiv, priyanka, feroze, indira.

NOTE: Enter names of people in small case only

NOTE: PRESS ; AFTER EACH RELATION TO DISPALY THE NEXT RELATION

Example output

```
?- tree(rahul).

Father: rajiv
true ;

Mother: sonia
true ;

Sibling: priyanka
true ;

Grandfather: feroze
true ;

Grandmother: indira
true ;

Uncle/Aunt: sanjay
true ;
false.
```
