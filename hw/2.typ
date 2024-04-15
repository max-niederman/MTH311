#import "../lib.typ": *

#show: homework.with(title: "Math 311 Homework #2")

= 1.4.10

_Proposition_:
For $x, y, z in RR$,
- If $0 <= x < epsilon$ for all $epsilon > 0$, then $x = 0$.
- In general, $y <= z$ is equivalent to the statement that $y < z + epsilon$ for all $epsilon > 0$.

_Proof_:

=== Statement Two (Implication)

By contradiction, assume that $y <= z$ but there exists some $epsilon > 0$ such that $y >= z + epsilon$.

By (O3),
$
epsilon &> 0 \
z + epsilon &> z "."
$

If $y >= z + epsilon$, then either $y > z + epsilon$ or $y = z + epsilon$ by definition. If $y = z + epsilon$, then $y > z$ by the above inequality. If $y > z + epsilon$, then we have $y > z$ by (O2).

In either case, we have a contradiction to the assumption that $y <= z$. Therefore, $y <= z$ implies that $y < z + epsilon$ for all $epsilon > 0$.

=== Statement Two (Converse)

By (O1), exactly one of $y < z$, $y = z$, or $y > z$ is true.

If $y > z$, then
$
y > z \
y - z > 0 "."
$

So, by substituting $y - z$ for $epsilon$ in the premise, we have
$
y < z + (y - z) \
y < y "."
$

Which is a contradiction, so either $y < z$ or $y = z$.
Hence, $y <= z$ by definition.

=== Statement One

By substituting zero for $z$ and $x$ for $y$ in statement two,
we find that
$
x <= 0
&<==> x < 0 + epsilon "for all" epsilon > 0 \
&<==> x < epsilon "for all" epsilon > 0 "."
$

And we are given that $x < epsilon$ for all $epsilon > 0$,
so we can conclude that $x <= 0$.

However, we are also given that $0 <= x$,
so $x = 0$.

#sym.qed

= 1.5.5

== (a)

_Proposition_:
If $A$ is bounded below, $-A$ is bounded above.

_Proof_:

Let $L$ be a lower bound of $A$.

Then, for all $a in A$, $L &<= a$. Negating this with Proposition 1.4.1 gives $-L &>= -a$.

Therefore, $-L$ is an upper bound of $-A$,
because every element in $-A$ is the opposite of some element in $A$.

Hence, $-A$ is bounded above.

#sym.qed

== (b)

_Proposition_:
If $A$ is bounded below, then $A$ has an infimum in $RR$ and $inf A = -sup(-A)$.

_Proof_:

By (a), $-A$ is bounded above and the completeness axiom guarantees that $-A$ has a supremum in $RR$.

The supremum is an upper bound, so
$
forall x in -A, &space sup(-A) >= x \
forall x in {-a | a in A}, &space sup(-A) >= x \
forall a in A, &space sup(-A) >= -a \
forall a in A, &space -sup(-A) <= a "."
$

Therefore, $-sup(-A)$ is a lower bound of $A$.

Now suppose that $L > -sup(-A)$ is another lower bound of $A$.
By the same logic as in (a), $-L$ is an upper bound of $-A$.
However, negating the inequality $-L &> -sup(-A)$ gives $L < sup(-A)$,
so $L$ is less than the supremum of $-A$,
contradicting the definition of the supremum.

Therefore, there exist no such lower bounds $L$,
and $-sup(-A)$ is the infimum of $A$.

#sym.qed

= 1.5.6

== (a)

_Proposition_:
If $t > 0$ and $A$ is bounded above, then $t A$ is bounded above and $sup(t A) = t sup A$.

_Proof_:

By the definition of the supremum, for all $a in A$, $a &<= sup A$.
Because $t > 0$, we can multiply both sides by $t$ to get $t a &<= t sup A$.
As elements of $t A$ take the form $t a$, $t sup A$ is an upper bound of $t A$.

Now suppose that $N < t sup A$ is another upper bound of $t A$.
That is, $x <= N$ for all $x in t A$.
Each element $a in A$ has a corresponding element $t a in t A$,
so $t a <= N$ for all $a in A$.
Dividing both sides by $t$ gives $a <= N / t$ for all $a in A$,
so $N / t$ is an upper bound of $A$.
However, dividing both sides by $t$ also gives $N / t < sup A$,
contradicting the definition of the supremum.

Therefore, any upper bound of $t A$ must be greater than or equal to $t sup A$,
which is an upper bound, so $sup(t A) = t sup A$.

#sym.qed

== (b)

_Proposition_:
If $t < 0$ and $A$ is bounded above, then $t A$ is bounded below and $inf(t A) = t sup A$.

_Proof_:

By the definition of the supremum, for all $a in A$, $a &<= sup A$.
Because $t < 0$, we can multiply both sides by $t$ and flip the inequality to get $t a &>= t sup A$.
As elements of $t A$ take the form $t a$, $t sup A$ is a lower bound of $t A$.

Now suppose that $L > t sup A$ is another lower bound of $t A$.
That is, $x >= L$ for all $x in t A$.
Each element $a in A$ has a corresponding element $t a in t A$,
so $t a >= L$ for all $a in A$.
Dividing both sides by $t$ gives $a >= L / t$ for all $a in A$,
so $L / t$ is a lower bound of $A$.
However, dividing both sides by $t$ also gives $L / t < sup A$,
contradicting the definition of the supremum.

Therefore, any lower bound of $t A$ must be less than or equal to $t sup A$,
which is a lower bound, so $inf(t A) = t sup A$.

#sym.qed

= 1.5.8

_Proposition_:
Let $A, B subset RR$ be nonempty and bounded below.
Then $A subset B$ implies that $inf A >= inf A$.

_Proof_:

The infimum of $B$ is a lower bound of $B$.
That is, $inf B <= b$ for all $b in B$.
Because $A subset B$, $a in A$ implies $a in B$,
so $inf B <= a$ for all $a in A$.
Therefore, $inf B$ is a lower bound of $A$.

And by definition, $inf A$ is greater than or equal to all lower bounds of $A$,
so $inf A >= inf B$.

#sym.qed

= 1.6.1

== (a)

_Proposition_: The set
$ { 1 + (-1)^n/n : n in NN } $
is bounded above and below,
with a supremum of $3/2$ and an infimum of $0$.

_Proof_:

=== Lower Bound

Observe that
$ abs((-1)^1/1) = 1 <= 1  "." $

Now suppose that for some $k in NN$,
$ abs((-1)^k/k) <= 1 "." $
Then by Proposition 1.4.2, we have 
$
abs(-(-1)^k/k) <= 1 \
abs((-1)^(k+1)/k) <= 1 "."
$

Because $k in NN$,
$
0 <& k &<& k + 1 \
0 <& k/(k + 1) &<& 1 \
0 <& abs(k/(k + 1)) &<& 1 "."
$

Multiplying this into the previous inequality gives
$
abs((-1)^(k+1)/k) abs(k / (k + 1)) &<= abs(k / (k + 1)) \
abs((-1)^(k+1)/k k / (k + 1)) &<= abs(k / (k + 1)) space &"(by Prop. 1.4.2)" \
abs((-1)^(k+1)/(k + 1)) &<= abs(k / (k + 1)) \
abs((-1)^(k+1)/(k + 1)) &<= 1  &"(by transitivity)" \
$

It therefore follows from the principle of induction that $abs((-1)^n/n) <= 1$ for all $n in NN$.

By Proposition 1.4.2, this implies
$ -1 <= (-1)^n/n <= 1 "." $

We can now add one to each side of the first inequality to get
$ 0 <= 1 + (-1)^n/n ", for all" n in NN "." $

Therefore, zero is a lower bound of the set.

=== Infimum

Zero is also an element of the set (for $n = 1$),
so it is the infimum of the set.

To see why, suppose by contradiction that $L > 0$ is a greater lower bound of the set.
But then $L$ is greater than an element of the set, so it is not a lower bound at all.

=== Upper Bound

Consider the subset where $n$ is even.
Then $(-1)^n = 1$ and the set becomes
$ { 1 + 1/(2n) : n in NN } "." $

This does not change the upper-boundedness or supremum of the set,
because the even terms are strictly greater than the odd terms.
To see why, observe that for any $n in NN$:
+ If $n$ is odd, then
  $
  -1 &< 0 \
  -1/n &< 0 \
  (-1)^n/n &< 0 "."
  $
+ If $n$ is even, then
  $
  0 &< 1 \
  0 &< 1/n \
  0 &< (-1)^n/n "."
  $

Note also that $1 + 1/(2n)$ is strictly decreasing in $n$,
so the element where $n = 1$, which is $3/2$, is an upper bound.

=== Supremum

We've shown an upper bound which is an element of the set,
so it follows by similar logic to the infimum that $3/2$ is the supremum.

#sym.qed

== (b)

_Proposition_: The set
$ { (3n)/(n+4) : n in NN } $
is bounded above and below,
with a supremum of $3$ and an infimum of $3/5$.

_Proof_:

=== Infimum

First, let us show that $(3n) / (n + 4)$ is monotonically increasing in $n$:
$
0 &< 4 \
n^2 + 5n &< n^2 + 5n + 4 \
n(n + 5) &< (n + 1)(n + 4) \
$

And $n$ is a natural number and therefore positive, so
we can divide by $(n + 4)(n + 5)$ to get
$
n / (n + 4) &< (n + 1) / (n + 5) \
3n / (n + 4) &< 3(n + 1) / (n + 5) \
(3n) / (n + 4) &< (3(n + 1)) / ((n + 1) + 4) "."
$

Hence, the element corresponding to $n = 1$ is the minimum, and therefore the infimum, of the set:
$ (3(1)) / ((1) + 4) = 3/5 "." $

=== Supremum

Observe that
$
0 &< 12 \
3n &< 3n + 12 \
3n &< 3(n + 4) \
(3n)/(n+4) &< 3 \
$

So $3$ is an upper bound of the set.

Now suppose by contradiction that there exists some $L < 3$ which is also an upper bound of the set.

Define $epsilon = 3 - L$ so that $epsilon > 0$,
and let $n = max(1, ceil(12/epsilon - 4))$ so that $n in NN$ is greater than or equal to $12/epsilon - 4$.

Then consider the element corresponding to $n$.
Because of the definition of $n$, we have

$
n &> 12/epsilon - 4 \
n + 4 &> 12/epsilon \
epsilon(n + 4) &> 12 \
epsilon &> 12/(n + 4) \
3 - epsilon &< 3 - 12/(n + 4) \
3 - epsilon &< (3(n + 4) - 12)/(n + 4) \
3 - epsilon &< (3n) / (n + 4) \
3 - (3 - L) &< (3n) / (n + 4) \
L &< (3n) / (n + 4) "."
$

So there is an element of the set greater than $L$,
contradicting the assumption that $L$ is an upper bound.
Therefore, there exists no upper bound less than $3$,
and $3$ is the supremum of the set.

#sym.qed

== (c)

TODO

== (d)

TODO

= 1.6.3

_Proposition_:
For any $x in RR$ and $n in NN$, there exists $r in QQ$ such that $|x - r| < 1/n$.

_Proof_:

Because $n$ is positive, we can divide both sides of $0 < 1$ to get $0 < 1/n$.
Similarly, we can divide both sides of $-1 < 0$ to find $-1/n < 0$,
and by transitivity we have $-1/n < 1/n$.

Adding $x$ to both sides of the second inequality gives
$ x - 1/n < x + 1/n "." $

We can now apply the density of the rationals to find that there exists $r in QQ$ such that
$ x - 1/n < r < x + 1/n "." $

Now, subtracting $x$ from all sides gives
$ -1/n < r - x < 1/n "," $
which is equivalent by Proposition 1.4.2 to
$
|r - x| &< 1/n \
|-(r - x)| &< 1/n \
|x - r| &< 1/n "."
$

#sym.qed