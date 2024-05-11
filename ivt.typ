#import "./lib.typ": *

#show: common.with(title: "Intermediate Value Theorem")

= Induction on the Nonnegative Reals

Let $A$ be a subset of $RR$ such that
- If $[0, x) subset.eq A$, then $x in A$.
- For any $a$ in $A$, there exists some $b in RR$ such that $a < b$ and $(a, b) subset.eq A$.

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
We then apply condition two to $inf A^c$ to find some $b in RR$ such that $inf A^c < b$ and $(inf A^c, b) subset.eq A$.
Taking the union of the two intervals, we have $[0, b) subset.eq A$, with $inf A^c < b$.

Now take some $x in A^c$.
It must be greater than or equal to $b$,
because if it were less than $b$, it would be in $[0, b)$ and therefore in $A$.
Therefore, $b$ is a lower bound on $A^c$,
which contradicts $inf A^c < b$.
Hence, the assumption that $A^c$ is nonempty must be false,
and $A supset.eq [0, oo)$.

#sym.qed

#colbreak()

= Increasing Nonnegative Domain

For any $L in RR$ and $b in [0, oo)$, and some function $f : RR -> RR$,
if $f$ is continuous on $[0, b]$ and
$f(0) <= L <= f(b)$,
then there exists some $c in [0, b]$ such that $f(c) = L$.

_Proof_:

Consider the set
$
B =
{ b in [0, oo) | &f "continuous on" [0, b] \
            &and f(0) <= L <= f(b) \
            &quad => exists c in [0, b], f(c) = L } "."
$
That is, the set of $b$ values for which the proposition holds w.r.t. $f$ and $L$.

== Limit Case

Assume that there is some $x$ such that $[0, b) subset.eq B$,
and furthermore that $f$ is continuous on $[0, b]$ and $f(0) <= L <= f(b)$.

If $L = f(b)$, then we have that there exists $c$ such that $f(c) = L$ trivially.

Otherwise, $L < f(b)$ and so $0 < f(b) - L$.
Then, because $f$ is continuous at $b$, we can apply the limit definition to find that there exists $delta > 0$ such that for all $x in RR$,
$ |b - x| < delta => |f(b) - f(x)| < f(b) - L "." $

Define $b' = max(0, b - delta/2)$.
Observe that
$
b - delta/2 &<= b' \
b - b' &<= delta/2 \
b - b' &< delta ","
$
and because $b' > b$,
$
abs(b - b') &< delta "."
$

Now we apply the limit to get
$
abs(f(b) - f(b')) &< f(b) - L \
f(b) - f(b') &< f(x) - L \
- f(b') &< - L \
L &< f(b') "."
$

We already know that $f(0) < L$, so
$ f(0) < L < f(b') "," $
and because $b' in [0, b)$,
we have $c in [0, b')$ such that
$ f(c) = L "." $
Furthermore, $[0, b')$ is a subset of $[0, b)$,
so that $c$ also satisfies the proposition for $b$.

== Successor Case

Assume that $b in B$.
That is, if $f$ is continuous on $[0, b]$ and $f(0) <= L <= f(b)$,
then there exists $c in [0, b]$ such that $f(c) = L$.


=== Case 1: $L <= f(b)$

Let $b' = b + 1$.
Consider any $x in (b, b')$,
and assume that $f$ is continuous on $[0, x]$ and $f(0) <= L <= f(x)$.

Because $x > b$, we have that $f$ is continuous on $[0, b]$ and $f(0) <= L$.
Furthermore, $L <= f(b)$, so the conditions for $b$ are satisfied.
Therefore, there exists $c in [0, b + 1]$ such that $f(c) = L$.

=== Case 2: $f(b) < L$, $f$ discontinuous at $b$

Let $b' = b + 1$.
For any $x in (b, b')$, we know that $f$ is not continuous on the interval $[0, x]$
because it is not continuous at $b in [0, x]$.
Therefore, it follows from the principle of explosion that the continuity of that interval
implies the existence of some $c in [0, x]$ such that $f(c) = L$.

=== Case 3: $f(b) < L$, $f$ continuous at $b$

Define $epsilon = L - f(b)$.
Because $L > f(b)$, we have $epsilon > 0$.

Applying the limit of $f$ at $b$, we find that there exists $delta > 0$ such that for all $x in RR$,
$ |b - x| < delta => |f(b) - f(x)| < epsilon "." $

Let $b' = b + delta$ and consider any $x in (b, b')$.

Then
$
b <& x      &<& b + delta \
0 <& x - b  &<& delta \
-delta <& x - b  &<& delta \
& abs(x - b) &<& delta \
& abs(b - x) &<& delta "."
$

Therefore,
$
abs(f(b) - f(x)) &< epsilon \
abs(f(x) - f(b)) &< epsilon \
f(x) - f(b) &< epsilon \
f(x) - f(b) &< L - f(b) \
f(x) &< L "."
$

So it would be a contradiction to have $L <= f(x)$.
Once again, the membership condition holds for $x$ by the principle of explosion.

== Conclusion

By applying the limit and successor cases to the induction result,
we have that $B supset.eq [0, b)$.
Because $B subset.eq [0, b)$ as well, we have that $B = [0, oo)$.
Hence, the proposition holds for all $b in [0, oo)$.

#sym.qed