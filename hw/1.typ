#import "../lib.typ": *

#show: homework.with(title: "Math 311 Homework #1")

= 1.3.1 (a)

_Proposition:_ For all $n in NN$,
$ 1^2 + 2^2 + ... + n^2 = (n(n+1)(2n+1))/6 "." $

_Proof:_

If $n = 1$, then
$
1^2 + 2^2 + ... + n^2
&= 1^2 \
&= 1 \
&= 6/6 \
&= (1(2)(3))/6 \
&= (n(n + 1)(2n + 1))/6
"."
$

So the proposition is true for $n = 1$, our base case.

Assume that the proposition is true for some $k in NN$.
That is,
$ 1^2 + 2^2 + ... + k^2 = (k(k+1)(2k+1))/6 "." $

Adding $(k+1)^2$ to both sides of the equation and simplifying algebraically, we get:
$
 & 1^2 + 2^2 + ... + k^2 + (k+1)^2 \
=& (k(k+1)(2k+1))/6 + (k+1)^2 \
=& (k(k+1)(2k+1) + 6(k+1)^2)/6 \
=& ((k+1)(k(2k+1) + 6(k+1)))/6 \
$
$
=& ((k+1)(2k^2 + k + 6k + 6))/6 \
=& ((k+1)(2k^2 + 7k + 6))/6 \
=& ((k+1)(k + 2)(2k + 3))/6 \
=& ((k+1)((k+1)+1)(2(k+1) + 1))/6 "."
$

So the proposition is true for $n = k + 1$ also.
Therefore, by the principle of induction, the proposition is true for all $n in NN$.

#sym.qed

= 1.3.2 (b)

_Proposition:_ For all $n in NN$, $3$ divides $7^n - 1$.

_Proof:_

The proposition applies to $n = 1$, our base case,
because $ 7^1 - 1 = 6 = 2 dot 3 "." $

Now suppose that 3 divides $7^k - 1$ for some $k in NN$.
Then there exists some $q in ZZ$ such that
$ 7^k - 1 = 3q "." $

Multiplying both sides by $7$ and then adding $6$ gives
$
7(7^k - 1) &= 7(3q)  \
7^(k + 1) - 7 &= 3(7q) \
7^(k + 1) - 1 &= 3(7q) + 6 \
&= 3 (7q + 2) "." \
$

Hence, $3$ divides $7^(k+1) - 1$.
By the principle of induction, the proposition is true for all $n in NN$.

#sym.qed

= 1.3.3 (a--c)

== (a)

_Proposition:_ For all $n in NN$, $1 + 3n <= 4^n$.

_Proof:_

If $n = 1$, then $1 + 3n = 4$, which is less than $4^n = 4$.

Take $k in NN$ such that $1 + 3k <= 4^k$.
Multiplying both sides by $4$ gives
$
4(1 + 3k) &<= 4^(k+1) \
4 + 12k &<= 4^(k+1) \
1 + 12k + 3 &<= 4^(k+1) "."
$

We know $k$ is positive, so
$ 1 + 3k + 3 <= 1 + 12k + 3 "." $

Therefore, by the transitive property of inequality,
$ 1 + 3(k+1) <= 4^(k+1) "." $

And by induction, we have $1 + 3n <= 4^n$ for all $n in NN$.

#sym.qed

== (b)

_Proposition:_ For all $n in NN$ such that $n >= 3$, $1 + 2n <= 2^n$.

_Proof:_

If $n = 3$, then $1 + 2n = 7$, which is less than $2^n = 8$.

Take $k in NN$ such that $k >= 3$ and $1 + 2k <= 2^k$.
Multiplying both sides by $2$ gives
$
2(1 + 2k) &<= 2^(k+1) \
2 + 4k &<= 2^(k+1) "."
$

We know $k >= 3$, so
$
6 &<= 2k \
1 &<= 2k \
3 &<= 2 + 2k \
3 + 2k &<= 2 + 4k \
1 + 2(k + 1) &<= 2 + 4k "."
$

Therefore, by the transitive property of inequality,
$ 1 + 2(k+1) <= 2^(k+1) "." $

And by induction, we have $1 + 2n <= 2^n$ for all $n in NN$ greater than or equal to $3$.

#sym.qed

== (c)

_Proposition:_ For all $n in NN$, $n^2 <= 3^n$.

_Proof:_

If $n = 1$, $n^2 = 1$ which is less than $3^n = 3$.

Otherwise, assume that $k^2 <= 3^k$ for some $k in NN$ greater than or equal to $2$.
Multiplying both sides by $3$ gives
$ 3k^2 <= 3^(k+1) "." $

We know $k >= 2$, so
$
1 <= 2k &<= k^2 \
4k &<= 2k^2 \
2k + 1 &<= 2k^2 "."
$

Adding $k^2$ to both sides gives
$
k^2 + 2k + 1 &<= 3k^2 \
(k + 1)^2 &<= 3k^2 "."
$

And therefore $(k+1)^2 <= 3^(k+1)$ by the transitive property of inequality.
Hence, $n^2 <= 3^n$ for all $n in NN$ by the principle of induction.

#sym.qed

= 1.3.4

_Proposition:_ For any $n in NN union {0}$ and real number $a != 1$,
$ sum_(k=0)^n a^k = (1 - a^(n + 1)) / (1 - a) "." $

_Proof:_

For $n = 0$, we have
$ sum_(k=0)^0 a^k = 1 = (1 - a^(0 + 1)) / (1 - a) "." $

Assume that the proposition holds for some $n in NN union {0}$.
Observe that
$
sum_(k=0)^(n + 1) a^k
&= 1 + sum_(k=0)^n a^(k + 1) \
&= 1 + a sum_(k=0)^n a^k \
&= 1 + a (1 - a^(n + 1)) / (1 - a) \
&= (1 - a + a - a^(n + 2)) / (1 - a) \
&= (1 - a^(n + 2)) / (1 - a) \
&= (1 - a^((n+1) + 1)) / (1 - a) "."
$

By the principle of induction, the proposition holds for all $n in NN union {0}$.

#sym.qed

= 1.3.6

_Proposition:_ For any real number $a >= -1$ and $n in NN$, $ (1+ a)^n >= 1 + n a^n "." $

_Proof:_

For $n = 1$, we have $(1 + a)^1 = 1 + a$ which is equal to $1 + 1 dot a^1 = 1 + a$.
Therefore, the proposition holds for $n = 1$.

Now assume that it holds for some $k in NN$.
That is,
$ (1+a)^k >= 1 + k a "." $

Because $a >= -1$, we can multiplying both sides by $1 + a$ to get
$
(1+a)^(k+1) >= (1 + a)(1 + k a) \
$

The square of any real number is nonnnegative, so $0 <= a^2$.
Because $k$ is a natural number, it is positive and we can multiply both sides to get
$ 0 <= k a^2 "." $

Then, adding $1 + k a + a$ and factoring yields
$
1 + k a + a &<= 1 + k a + a + k a^2 \
1 + (k + 1) a &<= (1 + a)(1 + k a) "."
$

So, by transitivity,
$ (1+a)^(k+1) >= 1 + (k + 1) a "." $

Therefore, the proposition holds for all $n in NN$ by the principle of induction.

#sym.qed