#import "../lib.typ": *

#show: homework.with(title: "Math 311 Homework 3")

= General Results

== Dominance of Higher Powers

_Proposition_:

For any $n in NN$, let $P$ be a polynomial of order $n - 1$.
Then there exists a real number $M$ such that for all $x > M$,
$ x^n > abs(P(x)) "." $

_Proof_:

=== Base Case

For $n = 1$, the polynomial is of order zero.
I.e., it is a constant function $P(x) = a_0$ for some $a_0 in RR$.

If we have $x > abs(a_0)$, then $x > abs(P(x))$,
so we can take $M = abs(a_0)$ and the base case holds.

=== Inductive Step

Assume the proposition holds for some $k in NN$.

Let $P$ be a polynomial of order $k$ with real coefficients $a_0$ through $a_k$.
Then we define $Q$ as a polynomial of order $k - 1$ consisting of all but the highest-order term of $P$:
$ Q(x) = sum_(i = 0)^(k - 1) a_i x^i $

By the inductive hypothesis, there exists a real number $L$ such that for all $x > L$,
$ x^k > abs(Q(x)) "." $

And by the Archimedean Property of the reals, there exists a real number $M$ such that
$ M > max{0, L, abs(a_k) + 1} "." $

Then for all $x > M$,
we have $x > abs(a_k) + 1$.
Because $x > 0$,
we can multiply both sides by $x^k$ to find that $x^(k+1) > (abs(a_k) + 1)x^k = abs(a_k) x^k + x^k$.

And because $x > L$, we have $x^k > abs(Q(x))$.
It follows that
$
x^(k+1) &> abs(a_k x^k) + abs(Q(x)) \
x^(k+1) &> abs(a_k x^k + Q(x)) \
x^(k+1) &> abs(P(x)) "."
$

So the proposition holds for $k + 1$ as well.
By the principle of induction, the proposition holds for all $n in NN$.

#sym.qed


== Limits of Certain Rational Functions

_Proposition_:

Suppose that $P$ and $Q$ are polynomials of order $k$,
with real coefficients $p_0$ through $p_k$ and $q_0$ through $q_k$ respectively
such that $q_k != 0$.

Then the limit of the rational function $P(x) / Q(x)$ as $x$ approaches infinity is equal to the ratio of the leading coefficients of $P$ and $Q$.
That is,

$ lim_(x -> oo) P(x) / Q(x) = p_k / q_k "." $

_Proof_:

Take $epsilon > 0$ as given.

Define $r_i = abs(q_k p_i - p_k q_i)$ for all $0 <= i <= k$.

By the previous lemma, we know there exists a real number $M$ such that for all $x > M$,
$ x^k > abs(sum_(i = 0)^(k - 1) (2 q_i/q_k) x^i) "." $

Similarly, there exists $M'$ such that for all $x > M'$,
$ x^(k-1) > abs(sum_(i = 0)^(k - 2) r_i x^i) "." $

By the Archimedean Property, there exists a natural number $N$ such that
$
N > max{
  2 (r_(k-1) + 1) / (q_k^2 epsilon),
  M,
  M',
  0
}
$

Then consider any $n > N$.

Because $n > N$, we have
$ 2 (r_(k-1) + 1) / (q_k^2 epsilon) < n "." $

Both $epsilon$ and $n$ are positive, so we can rearrange to get
$
2 (r_(k-1) + 1) / (q_k^2 n) &< epsilon \
(r_(k-1) + 1) / (1/2 q_k^2 n) &< epsilon \
((r_(k-1) + 1) n^(k-1)) / (1/2 q_k^2 n^k) &< epsilon \
((r_(k-1) + 1) n^(k-1)) / (q_k^2 (1 - 1/2) n^k) &< epsilon \
((r_(k-1) + 1) n^(k-1)) / (q_k^2 (n^k - 1/2 n^k)) &< epsilon "."
$


By the triangle inequality,
$
|n^k - 1/2 n^k| &<= |n^k| + |1/2 n^k| \
$

Observe also that, because $n > N > M$,
we have
$
abs(sum_(i = 0)^(k - 1) (2 q_i/q_k) n^i) &< n^k \
abs(sum_(i = 0)^(k - 1) q_i/q_k n^i) &< 1/2 n^k "."
$

That is, the absolute value of the sum is strictly less than $1/2 n^k$.
Therefore, we have
$
((r_(k-1) + 1) n^(k-1)) / (q_k^2 (n^k - abs(sum_(i=0)^(k-1) q_i/q_k n^i)))
< ((r_(k-1) + 1) n^(k-1)) / (q_k^2 (n^k - 1/2 n^k)) "."
$

And by transitivity,
$
((r_(k-1) + 1) n^(k-1)) / (q_k^2 (n^k - abs(sum_(i=0)^(k-1) q_i/q_k n^i))) < epsilon "."
$

Both $n_k$ and $n_k - 1/2n_k$ (the smallest value the second factor of the denominator can take on) are positive, so we can add absolute value signs to get
$
((r_(k-1) + 1) n^(k-1)) / (q_k^2 abs(abs(n^k) - abs(sum_(i=0)^(k-1) q_i/q_k n^i))) < epsilon "."
$

Applying the reverse triangle inequality, we have
$
abs(abs(n^k) - abs(sum_(i=0)^(k-1) q_i/q_k n^i))
&<= abs(n^k + sum_(i=0)^(k-1) q_i/q_k n^i) \
&<= abs(sum_(i=0)^k q_i/q_k n^i) "."
$

So
$
((r_(k-1) + 1) n^(k-1)) / (q_k^2 abs(sum_(i=0)^(k-1) q_i/q_k n^i))
< ((r_(k-1) + 1) n^(k-1)) / (q_k^2 abs(abs(n^k) - abs(sum_(i=0)^(k-1) q_i/q_k n^i)))
","
$
and by transitivity,
$ ((r_(k-1) + 1) n^(k-1)) / (q_k^2 abs(sum_(i=0)^(k-1) q_i/q_k n^i)) < epsilon "." $

Because $n > N > M'$, we have
$
abs(sum_(i = 0)^(k - 2) r_i n^i) &< n^(k - 1) \
sum_(i = 0)^(k - 2) r_i n^i &< n^(k - 1) "." 
$
Therefore, we have
$
(r_(k-1) n^(k - 1) + sum_(i = 0)^(k - 2) r_i n^i) / (q_k^2 abs(sum_(i=0)^(k-1) q_i/q_k n^i))
< ((r_(k-1) + 1) n^(k-1)) / (q_k^2 abs(sum_(i=0)^(k-1) q_i/q_k n^i))
< epsilon "."
$

Or, by joining the first term into the sum,
$
(sum_(i = 0)^(k - 1) r_i n^i) / (q_k^2 abs(sum_(i=0)^(k-1) q_i/q_k n^i)) < epsilon "."
$

Furthermore, note that $r_k$ must be zero because $r_k = abs(q_k p_k - p_k q_k) = 0$.
Therefore we have
$ (sum_(i = 0)^k r_i n^i) / (q_k^2 abs(sum_(i=0)^(k-1) q_i/q_k n^i)) < epsilon "." $

Expanding the numerator, we can see that it is a sum of absolute values:
$ (sum_(i = 0)^k abs(q_k p_i - p_k q_i) n^i) / (q_k^2 abs(sum_(i=0)^(k-1) q_i/q_k n^i)) < epsilon "." $

We can therefore use the triangle inequality to get a new numerator less than or equal to the original:
$ abs(sum_(i = 0)^k (q_k p_i - p_k q_i) n^i) / (q_k^2 abs(sum_(i=0)^(k-1) q_i/q_k n^i)) < epsilon "." $

Now we can factor the numerator in terms of $q_k$ and $p_k$, finding
$ abs(q_k sum_(i = 0)^k p_i n^i - p_k sum_(i = 0)^k q_i n^i) / (q_k^2 abs(sum_(i=0)^(k-1) q_i/q_k n^i)) < epsilon "." $

Because $q_k != 0$, $q_k^2$ is positive and we can bring it into the absolute value in the denominator and simplify to get
$ abs(q_k sum_(i = 0)^k p_i n^i - p_k sum_(i = 0)^k q_i n^i) / abs(q_k sum_(i=0)^(k-1) q_i n^i) < epsilon "." $

The quotient of the absolute values is the absolute value of the quotient,
and each of these sums are the polynomials $P(x)$ and $Q(x)$, so we have
$ abs((q_k P(x) - p_k Q(x)) / (q_k Q(x))) < epsilon "." $

Finally, we can rearrange to get
$
abs((q_k P(x)) / (q_k Q(x)) - (p_k Q(x)) / (q_k Q(x))) &< epsilon \
abs(P(x) / Q(x) - p_k / q_k) &< epsilon "."
$

Which is the definition of
$ lim_(n->oo) P(x) / Q(x) = p_k / q_k "." $

#sym.qed

= 2.1.1

== (d)

== (e)

== (f)

= 2.1.2

== (e)

== (g)

== (h)

= 2.1.3

= 2.1.6

= 2.1.8

= 2.1.9