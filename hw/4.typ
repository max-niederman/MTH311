#import "../lib.typ": *

#show: homework.with(title: "Math 311 Homework 4")

= 3.3.1 (b)

Take $epsilon > 0$ as given and let $delta = min{epsilon/12, 6}$.

Now, suppose we have $x$ such that $ abs(x - 3) < delta "." $

From its definition, we have $delta <= epsilon/12$.
Therefore, we have $abs(x - 3) <= epsilon/12$.
Multiplying both sides by twelve yields $12abs(x - 3) <= epsilon$.

We will now show that $abs(x + 3) < 12$.
Again, from the definition of $delta$, we have $delta <= 6$.
And from the premise that $abs(x - 3) < delta$, we know that
$
-delta < x - 3 &< delta \
-6 < x - 3 &< 6 quad \
0 < x + 3 &< 12 \
abs(x + 3) &< 12
$

Therefore, we can substitute $abs(x + 3)$ for $epsilon$ to get
$
abs(x + 3) abs(x - 3) &< epsilon \
abs(x^2 - 9) &< epsilon \
abs((x^2 + 1) - (3^2 - 1)) &< epsilon \
abs(f(x) - f(3)) &< epsilon "."
$

Therefore, $f$ is continuous at $x_0 = 3$ by definition.

#sym.qed

= 3.3.2 (d)

Consider any $x_0 in [0, oo)$.
Let $epsilon > 0$ be given and define $delta = epsilon sqrt(x_0)$.

Then for any $x in [0, oo)$ such that $ 0 < abs(x - x_0) < delta "," $
we have $x != x_0$ and $abs(x - x_0) < epsilon sqrt(x_0)$.

Adding $epsilon sqrt(x)$ to the right side of the inequality yields
$abs(x - x_0) < epsilon(sqrt(x) + sqrt(x_0))$.
Square roots of real numbers are nonnegative, so we have
$ abs(x - x_0) < epsilon abs(sqrt(x) + sqrt(x_0)) "." $

Now we factor the left-hand side of the inequality as a difference of squares:
$ abs(sqrt(x) + sqrt(x_0)) abs(sqrt(x) - sqrt(x_0)) < epsilon abs(sqrt(x) + sqrt(x_0)) "." $

Note that either
+ $x_0 = 0$, in which case $x > 0$ (since $x in [0, oo)$ and $x != x_0$) and we have $sqrt(x) + sqrt(x_0) > 0$, or
+ $x_0 > 0$, in which case $sqrt(x_0) > 0$ and $sqrt(x) >= 0$, so we also have $sqrt(x) + sqrt(x_0) > 0$.

Therefore, we can divide both sides of the inequality by $abs(sqrt(x) + sqrt(x_0))$ to get
$ abs(sqrt(x) - sqrt(x_0)) < epsilon "." $

So, by definition, the square root is continuous at any $x_0 in [0, oo)$.

#sym.qed

= 3.3.3 (b)

The domain of $f$ is $RR$, which contains all its limiting points.
Therefore, $f$ is continuous at some point $x_0 in RR$ if and only if
$ lim_(x->x_0) f(x) = f(x_0) "." $

At $x_0 = 0$, we have by L'hôpital's rule that
$
   lim_(x->x_0) f(x)
=& lim_(x->x_0) abs((sin x) / x) \
=& lim_(x->x_0) (cos x) / 1 \
=& lim_(x->x_0) (cos x) / 1 \
=& lim_(x->x_0) cos x
$

And since $cos$ is continuous at $x_0 = 0$, we have
$ lim_(x->x_0) f(x) = cos 0 = 1 = f(0) "." $

Therefore, $f$ is continuous at $x_0 = 0$.

For any $x_0 != 0$, we know that
$ lim_(x -> x_0) x = x_0 != 0 "," $
so we can apply Theorem 3.3.3 to find that the quotient of $sin x$ and $x$ is continuous at $x_0$:

#lemma[
   _Lemma_:

   If any function $f : D -> RR$ is continuous at $x_0 in D$,
   the function $ f_a (x) = abs(f(x)) $
   is also continuous at $x_0$.

   _Proof_: 

   Let $epsilon > 0$ be given.

   Then, because $f$ is continuous at $x_0$, there exists $delta > 0$ such that for any $x in D$,
   $ abs(x - x_0) < delta "implies" abs(f(x) - f(x_0)) < epsilon "." $

   And by the reverse triangle inequality, we have
   $ abs(abs(f(x)) - abs(f(x_0))) <= abs(f(x) - f(x_0)) < epsilon "." $

   Therefore, $f_a$ is continuous at $x_0$ by definition.

   #sym.qed
]

Applying the lemma, we find that $abs((sin x)/x)$ is also continuous at $x_0$.

Therefore, $f$ is continuous everywhere on $RR$.

= 3.3.3 (c)

$f$ is not continuous at $x_0 = 0$, because the left and right limits of $f$ at $x_0 = 0$ are not equal:

From the left, we have
$
   lim_(x->0^-) f(x)
=& lim_(x->0^-) (sin x) / abs(x) \
=& lim_(x->0^-) (sin x) / (-x) \
=& lim_(x->0^-) (cos x) / (-1) \
=& -1 "."
$

But from the right, we have
$
   lim_(x->0^+) f(x)
=& lim_(x->0^+) (sin x) / abs(x) \
=& lim_(x->0^+) (sin x) / x \
=& lim_(x->0^-) (cos x) / 1 \
=& 1 "."
$

Everywhere else (if $x_0 != 0$), we know that
$ lim_(x -> x_0) abs(x) != 0 "," $
so we can apply Theorem 3.3.3 to find that the quotient of $sin x$ and $abs(x)$ is continuous at $x_0$.

Therefore, $f$ is continuous everywhere on $RR$ except at $x_0 = 0$.

= 3.3.5 (a)

Suppose that $f$ is continuous at any $x_0 in RR$.

=== Case 1: $x_0 in QQ$

Then $f(x_0) = 1$.

For any $n in NN$, we know by the density of the irrationals that there exists
$a_n in QQ^c$ such that
$ x_0 - 1/n < a_n < x_0 "." $

Consider such a sequence ${a_n}$.
By the squeeze theorem, $a_n --> x_0$.
And since $f$ is continuous at $x_0$, we have $f(a_n) --> f(x_0)$.

However, $f(a_n) = -1$ for all $n in NN$ because $a_n$ is irrational.
Therefore, $f(x_0) = -1$, which is a contradiction.

=== Case 2: $x_0 in QQ^c$

Then $f(x_0) = -1$.

For any $n in NN$, we know by the density of the rationals that there exists
$a_n in QQ$ such that
$ x_0 - 1/n < a_n < x_0 "." $

Consider such a sequence ${a_n}$.
By the squeeze theorem, $a_n --> x_0$.
And since $f$ is continuous at $x_0$, we have $f(a_n) --> f(x_0)$.

However, $f(a_n) = 1$ for all $n in NN$ because $a_n$ is rational.
Therefore, $f(x_0) = 1$, which is a contradiction.

Hence, $f$ is not continuous at any $x_0 in RR$.

#sym.qed

= 3.3.5 (b)

=== Case 1: $x_0 = 0$

Note that, for any $x in RR$, we have $abs(f(x)) <= abs(x)$.
This is because
+ If $x in QQ$, then $f(x) = x$ so $abs(f(x)) = abs(x) <= abs(x)$.
+ If $x in.not QQ$, then $f(x) = 0$ so $abs(f(x)) = 0 <= abs(x)$.

Now suppose $epsilon > 0$ is given, and let $delta = epsilon$.
Then for any $x in RR$ such that $abs(x - 0) < delta = epsilon$, we have
$ abs(f(x) - f(0)) = abs(f(x)) <= abs(x) < epsilon "." $

So by definition $f$ is continuous at $x_0 = 0$.

=== Case 2: $x_0 != 0$ and $x_0 in QQ$

Then $f(x_0) = x_0 != 0$.

In the same way as for the last problem, we can find a sequence ${a_n}$ consisting of elements of $QQ^c$ such that $a_n --> x_0$.

Now suppose by contradiction that $f$ is continuous at $x_0$.
Then $f(a_n) --> f(x_0)$.
But $f(a_n) = 0$ for all $n in NN$ because $a_n$ is irrational,
so $f(x_0) = 0$, which is a contradiction.

=== Case 3: $x_0 != 0$ and $x_0 in QQ^c$

Then $f(x_0) = 0$.

In the same way as for the last problem, we can find a sequence ${a_n}$ consisting of elements of $QQ$ such that $a_n --> x_0$.

Now suppose by contradiction that $f$ is continuous at $x_0$.
Then $f(a_n) --> f(x_0)$.
But $f(a_n) = a_n$ for all $n in NN$ because $a_n$ is rational,
so $a_n --> f(x_0)$.
Therefore, $f(x_0) = x_0 != 0$, which is a contradiction.

Hence, $f$ is continuous only at $x_0 = 0$.

#sym.qed

= 3.3.10

Let $x in RR$ be given.

For any $n in NN$, we know by the density of the rationals that there exists
$x_n in QQ$ such that
$ x - 1/n < x_n < x "." $

Consider such a sequence ${x_n}$.
By the squeeze theorem, $x_n --> x$.

Both $f$ and $g$ are continuous at $x$, so
$ f(x_n) &--> f(x) \ g(x_n) &--> g(x) "." $

And because $x_n$ is rational, we have $f(x_n) = g(x_n)$.
That is, the sequences are identical, and therefore converge to the same value, $f(x) = g(x)$.

#sym.qed

= 3.4.1

Consider the function $f_gamma : D -> RR$ defined by
$ f_gamma (x) = f(x) - gamma "." $

Note that $f$ is continuous on $D$ by Theorem 3.3.3 (considering $gamma$ as a constant function $D -> RR$).

We have that $f(c) > gamma$, so
subtracting $gamma$ from both sides gives $f_gamma (c) < 0$.
Now we can apply Lemma 3.4.3 to find that there exists $delta > 0$ such that
$f_gamma (x) > 0$ for every $x in D$ such that $abs(x - c) < delta$.

Now consider any $x in (c - delta, c + delta) sect D$.
Then
$
c - delta < x <& c + delta \
-delta < x - c <& delta \
abs(x - c) <& delta "."
$

Implying that $f_gamma (x) > 0$.
Finally, adding $gamma$ to both sides gives $f(x) > gamma$.

#sym.qed

= 3.4.2

Consider the function $f - g : [a, b] -> RR$ defined by
$ (f - g)(x) = f(x) - g(x) "." $

Since $f$ and $g$ are continuous on $[a, b]$, we can apply Theorem 3.3.3 to find that $f - g = f + (-1)g$ is continous on $[a, b]$ also.

We know that $f(a) > g(a)$ and $f(b) < g(b)$, so
$
f(a) &> g(a) &wide f(b) &< g(b) \
f(a) - g(a) &> 0 &wide f(b) - g(b) &< 0 \
(f - g)(a) &> 0 &wide (f - g)(b) &< 0 \
$

Therefore, by the Intermediate Value Theorem, there exists $x_0 in (a, b)$ such that $(f - g)(x_0) = 0$.

That is, $f(x_0) - g(x_0) = 0$. So $f(x_0) = g(x_0)$.

#sym.qed

= 3.4.3

Consider the identity and cosine functions on $RR$.

Note that
- $id(0) = 0 < 1 = cos(0)$ and
- $id(pi) = pi > -1 = cos(pi)$.

Both the identity and cosine functions are continuous on $RR$,
so we can apply the solution to the last problem to find that there exists $x in (0, pi)$ such that $id(x) = cos(x)$.

That is, there exists $x in RR$ such that $x = cos(x)$.

#sym.qed

= 3.4.5

== 3.4.5 (a)

Consider the sequence ${x_n}$ defined by
$
x_1 &= a \
x_(n+1) &= f(x_n) "."
$

We will now show that either the sequence is convergent and the limit is a fixed point,
or it "crosses the diagonal" on the graph of $f$ and the point where it crosses is a fixed point.

=== Case 1: ${x_n}$ Increasing

The sequence ${x_n}$ is bounded above by $b$, so if it is increasing then by the Monotone Convergence Theorem it converges to some $x in [a, b]$.

By the continuity of $f$, we have
$
x_n &--> x \
f(x_n) &--> f(x) "."
$

Now consider the subsequence skipping the first element, ${x_(n+1)}$.
By definition, $x_(n+1) = f(x_n)$, so this is the same as the sequence ${f(x_n)}$.
Subsequences of a convergent sequence converge to the same limit, so $ f(x_n) --> x "." $

The limit of a sequence is unique, so $f(x) = x$.

=== Case 2: ${x_n}$ Non-Increasing

Then there exists $N in NN$ such that $x_N > x_(N+1)$.
That is, $x_N > f(x_N)$.

If $f(a) = a$, then we are done. Otherwise, we have $a < f(a)$. 

As in the last problem, we apply the solution to Exercise 3.4.2
to find $x in [a, x_N]$ such that
$ id(x) = f(x) "." $

That is, $f(x) = x$.

#sym.qed

== 3.4.5 (b)

By part (a), we know that $f$ has at least one fixed point.

Now let $x, y in [a, b]$ be two fixed points of $f$,
and suppose by contradiction that $x != y$.

Then by the premise, we have
$ abs(f(x) - f(y)) < abs(x - y) "." $

Substituting $x$ for $f(x)$ and $y$ for $f(y)$, we have
$ abs(x - y) < abs(x - y) "." $

Which is a contradiction.
Therefore, $x = y$ and $f$ has exactly one fixed point.

#sym.qed