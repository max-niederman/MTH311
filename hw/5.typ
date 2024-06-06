#import "../lib.typ": *

#show: homework.with(title: "Math 311 Homework 5")

= 3.5.1

== 3.5.1 (a)

Let $epsilon > 0$ and $u, v in RR$ be given.

If $a = 0$, then
$
abs(f(u) - f(v))
&= abs((0)u + b - (0)v - b) \
&= abs(b - b) \
&= 0 \
&< epsilon "."
$

Otherwise, define $delta = epsilon / abs(a)$.
Then if $abs(u - v) < delta$, we have
$
abs(u - v) &< epsilon / abs(a) \
abs(a) abs(u - v) &< epsilon \
abs(a u - a v) &< epsilon \
abs(a u + b - a v - b) &< epsilon \
abs(f(u) - f(v)) &< epsilon "."
$

Therefore, $f$ is uniformly continuous on $RR$.

#sym.qed

== 3.5.1 (b)

Let $epsilon > 0$ be given, and define $delta = a^2 epsilon$.

Then for any $u, v in RR$ with $abs(u - v) < delta$,
we have $abs(u - v) < a^2 epsilon$.
Because $u$ and $v$ are greater than or equal to $a$, we can substite them into the inequality to get
$abs(u - v) < u v epsilon$.
Then we have
$
1 / (u v) abs(u - v) &< epsilon \
abs((u - v) / (u v)) &< epsilon quad "(because" u, v > 0 ")" \
abs(1 / u - 1 / v) &< epsilon \
abs(f(u) - f(v)) &< epsilon "."
$

Therefore, $f$ is by definition uniformly continuous on $[a, oo)$.

#sym.qed

= 4.1.2

== 4.1.2 (a)

The derivative of $f$ at $x_0$ is defined as
$
&lim_(x -> x_0) (f(x) - f(x_0)) / (x - x_0) \
= &lim_(x -> x_0) (m x + b - m x_0 - b) / (x - x_0) \
= &lim_(x -> x_0) (m x - m x_0) / (x - x_0) \
= &lim_(x -> x_0) m (x - x_0) / (x - x_0) \
= &lim_(x -> x_0) m \
= &m "."
$

That is, the derivative of $f$ is $m$ at any $x_0 in RR$.

== 4.1.2 (b)

The derivative of $f$ at $x_0 != 0$ is defined as
$
&lim_(x -> x_0) (f(x) - f(x_0)) / (x - x_0) \
= &lim_(x -> x_0) (1/x - 1/x_0) / (x - x_0) \
= &lim_(x -> x_0) ((x_0 - x)/(x x_0)) / (x - x_0) \
= &lim_(x -> x_0) 1/(x x_0) (x_0 - x) / (x - x_0) \
= &lim_(x -> x_0) (- 1/(x x_0)) \
= & -1/x_0^2 "."
$

So the derivative of $f$ is $-1/x^2$ at any $x_0 != 0$.

== 4.1.2 (c)

The derivative of $f$ at $x_0 > 0$ is defined as
$
&lim_(x -> x_0) (f(x) - f(x_0)) / (x - x_0) \
= &lim_(x -> x_0) (sqrt(x) - sqrt(x_0)) / (x - x_0) \
= &lim_(x -> x_0) (sqrt(x) - sqrt(x_0)) / ((sqrt(x) + sqrt(x_0))(sqrt(x) - sqrt(x_0))) \
= &lim_(x -> x_0) 1 / (sqrt(x) + sqrt(x_0)) \
= & 1 / (2 sqrt(x_0)) "."
$

Therefore the derivative of $f$ is $1 / (2 sqrt(x))$ at any $x_0 > 0$.

= 4.1.3

== 4.1.3 (a)

Let $epsilon > 0$ be given, and define $delta = epsilon$.
Then consider any $x in RR$ such that $0 < abs(x - 0) < delta$.

Then if $x > 0$ we have
$
abs(x - 0) &< epsilon \
abs(x) &< epsilon \
abs(x^2/x) &< epsilon \
abs(f(x)/x) &< epsilon \
$

And if $x < 0$ we have $f(x) &= 0$ so $abs(f(x)/x) = 0 < epsilon$.

Note that $x != 0$ because $0 < abs(x - 0)$.

In either case, $abs(f(x)/x) < epsilon$.
Since $f(0) = 0$, we also have $abs((f(x) - f(0))/(x - 0)) = abs(f(x)/x) < epsilon$.
Then by definition,
$ lim_(x->0) (f(x) - f(0))/(x - 0) = 0 "." $

So $f$ is differentiable at $0$.

#sym.qed

Furthermore, we can compute the derivative of $f$ at $x_0 in RR$.

If $x_0 > 0$, then also $x > 0$ for $x$ near $x_0$.
Then $f(x_0) = x_0^2$ and $f(x) = x^2$. Therefore the derivative of $f$ at $x_0$ is
the same as that of $x^2$ at $x_0$, which is $2 x_0$.

If $x_0 < 0$, then $f(x_0) = 0$ and $f(x) = 0$ for $x$ near $x_0$. Therefore the derivative of $f$ at $x_0$ is $0$.

And we have already shown the derivative of $f$ at $0$ to be $0$.

Therefore the derivative of $f'$ is summarized as
$
f'(x) = cases(
  2 x &"if" x > 0,
  0   &"if" x <= 0,
)
$

== 4.1.3 (b)

From this definition it is easy to see that $f'$ is continuous everywhere:
- On $(oo, 0]$, $f'$ is a constant function, which is continuous.
- On $[0, oo)$, $f'$ is a linear function, which is continuous.
- These intervals intersect at $0$. That is, the left and right limits of $f'$ at $0$ are both $0$ and therefore $f'$ is continuous at $0$.

However, it is not differentiable at $0$ because
$
&lim_(x -> 0^-) (f'(x))/x = lim_(x -> 0^-) 0/x = 0, "but" \
&lim_(x -> 0^+) (f'(x))/x = lim_(x -> 0^+) (2 x)/x = 2 "."
$

= 4.1.6 (b)

For any $x != 0$, $f$ is the product of two differentiable functions and therefore differentiable.

At $x = 0$, we can take the derivative as the following limit:
$
f'(0)
&= lim_(x -> 0) (f(x) - f(0)) / (x - 0) \
&= lim_(x -> 0) (x^2 sin(1/x)) / x \
&= lim_(x -> 0) (x sin(1/x)) "."
$

Note that $sin(1/x)$ is bounded between $-1$ and $1$, and $x$ goes to zero, so the product $x sin(1/x)$ goes to zero also.
This follows from the sequential characterization of limits and the result in Exercise 2.1.6;
i.e., for any sequence ${x_n}$ converging to $0$, the sequence $x_n sin(1/x_n)$ converges to $0$, so the limit of the function is $0$.
Therefore, $f$ has a derivative at $0$ also.

#sym.qed

= 4.1.7 (a)

Both $x^2$ and $x^3$ are differentiable at zero with derivative zero, so
$
lim_(x -> 0) (x^3 - 0) / (x - 0) = lim_(x -> 0) (x^2 - 0) / (x - 0) = 0 "."
$

That is, for any $epsilon > 0$ there exist $delta_2, delta_3 > 0$ such that for any $x in RR$,
- if $0 < abs(x - 0) < delta_2$ then $abs((x^2 - 0)/(x - 0) - 0) < epsilon$, and
- if $0 < abs(x - 0) < delta_3$ then $abs((x^3 - 0)/(x - 0) - 0) < epsilon$.

Now define $delta = min{delta_2, delta_3}$, and consider any $x$ such that $0 < abs(x - 0) < delta$.
Then we have that both $abs((x^2 - 0)/(x - 0) - 0) < epsilon$ and $abs((x^3 - 0)/(x - 0) - 0) < epsilon$. Therefore
$
abs((f(x) - 0)/(x - 0) - 0) < epsilon "."
$

That is,
$ lim_(x -> 0) (f(x) - 0) / (x - 0) = 0 "." $

So $f$ is differentiable at zero by definition, with zero derivative.

#sym.qed

= 4.2.2 (a)

Consider the function $f : [0, x] -> RR$ defined by $f(x) = sqrt(1 + x)$.

This function is differentiable because it is the composition of the differentiable functions $sqrt(x)$ and $1 + x$, so we can apply the Mean Value Theorem to find some $c in (0, x)$ such that
$ f'(c) = (f(x) - f(0))/(x - 0) "." $

Substituting in the formulae for $f$ and $f'$, we have
$
1/(2 sqrt(1 + c)) &= (sqrt(1 + x) - sqrt(1 + 0))/(x - 0) \
1/(2 sqrt(1 + c)) &= (sqrt(1 + x) - 1)/x \
1/(2 sqrt(1 + c)) x &= sqrt(1 + x) - 1 \
1 + 1/(2 sqrt(1 + c)) x &= sqrt(1 + x) "."
$

Now let's find the largest possible value of the left-hand side.
Note that $x > 0$ so and the square root maps positive real numbers like $1 + c$ to positive real numbers, so both factors of the second term are positive.
We therefore maximize the left-hand side by minimizing the denominator, which is increasing in $c$.
Therefore,
$ 1 + 1/(2 sqrt(1 + c)) x < 1 + 1/(2 sqrt(1 + 0)) = 1 + 1/2 x "." $

Note that $c > 0$, so this is a strict inequality.

And the the left-hand side is equal to $sqrt(1 + x)$, so
$ sqrt(1 + x) < 1 + 1/2 x "." $

#sym.qed

= 4.2.2 (b)

Applying the Mean Value Theorem to the natural exponential function on the interval $[0, x]$ gives some $c in (0, x)$ such that
$
e^c &= (e^x - e^0)/(x - 0) \
e^c &= (e^x - 1)/x \
x e^c &= e^x - 1 \
x e^c + 1 &= e^x "."
$

The exponential function is increasing and $c > 0$, so $e^c > e^0 = 1$.
Multiplying in $x$ (which is positive) and adding $1$ gives
$
x &< x e^c \
x + 1 &< x e^c + 1 = e^x "."
$

So $x + 1 < e^x$.

#sym.qed