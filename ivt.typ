#import "./lib.typ": *

#show: common.with(title: "Intermediate Value Theorem")

= Induction on the Nonnegative Reals

Let $A$ be a subset of $RR$ such that
- If $[0, x) subset.eq A$, then $x in A$.
- For any $a$ in $A$, there exists some $b in RR$ such that $a < b$ and $[a, b) subset.eq A$.

Then $A supset.eq [0, oo)$.

_Proof_:

Consider the set $A^c = [0, oo) backslash A$,
and assume by contradiction that it is nonempty.

It is bounded below by zero, as all elements of $[0, oo)$ are nonnegative.
Therefore, $inf A^c$ exists and is a nonnegative real number.

Numbers in the interval $[0, inf A^c)$ cannot be in $A^c$,
as $inf A^c$ is a lower bound on $A^c$.
However, such numbers are in $[0, oo)$ and thus also in $[0, oo) backslash A^c = A$.
That is, $[0, inf A^c) subset.eq A$.

By condition one, we have $[0, inf A^c] subset.eq A$.
We then apply condition two to $inf A^c$ to find some $b in RR$ such that $inf A^c < b$ and $[inf A^c, b) subset.eq A$.
Taking the union of the two intervals, we have $[0, b) subset.eq A$, with $inf A^c < b$.

Now take some $x in A^c$.
It must be greater than or equal to $b$,
because if it were less than $b$, it would be in $[0, b)$ and therefore in $A$.
Therefore, $b$ is a lower bound on $A^c$,
which contradicts $inf A^c < b$.
Therefore, the assumption that $A^c$ is nonempty must be false,
and $A supset.eq [0, oo)$.

#sym.qed