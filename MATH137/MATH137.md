MATH 137
========
Calculus I:

    Section 003

Instructor:

    Name: Sean Spezaile
    Email: sspezail@uwaterloo.ca
    Office: M3 2128
    Advising Hours: Monday, Wednesday at 12:00-13:30, MC 4023
    Office hours: starts week 3, details TBA ;wip

$$
\newcommand{\set}[1]{\left\{ #1 \right\}}
\newcommand{\abs}[1]{\left| #1 \right|}
\newcommand{\mb}[1]{\mathbb{#1}}
\newcommand{\dee}{\operatorname{d}}
$$

# 9/9/13

Preliminaries
-------------

Ben's email: wangtianhui.ben@gmail.com

Integers: $\mb{Z} = \ldots, -2, -1, 0, 1, 2, \ldots$

Rational  numbers: $\mb{Q} = \frac{p}{q}, p \in \mb{Z}, q \in \mb{Z}$

Irrational numbers: cannot be expressed as ratio, non-terminating and non-repeating decimal expansions - $\pi$, $e$, $\sqrt{2}$, $ln(2)$.

Real number (denoted $\mb{R}$): contains $\mb{Z}$, $\mb{Q}$, and irrationals; any number with decimal expansion as opposed to complex/imaginary numbers.

Complex number (denoted $\mb{C}$): contains real and imaginary parts.

Intervals/Sets
--------------

$[a, b]$ - inclusive (closed) interval from $a$ to $b$.

$(a, b]$ - left exclusive (left open) interval from $a$ to $b$, not including $a$.

$[a, b)$ - right exclusive (right open) interval from $a$ to $b$, not including $b$.

$x \in (a, b)$ - $x$ is an element of $(a, b)$ and $\set{x \in R ~ \middle| ~ a < x < b}$.

Infinity can be used as an interval endpoint, but is always excluded as it is a limit, not a number: $[4, \infty)$.

Inequalities
------------

$\Leftrightarrow$ - if and only if; first implies second, and second implies first.

Solve $6 < 1 - 3x \le 10$:

>$$
6 < 1 - 3x \le 10 \\
\text{Isolate } x: 5 < -3x \le 9 \\
-5 > 3x \ge -9 \\
-5/3 > x \ge -3
$$

Solve $\frac{1}{x} < 2$:

>$$
\frac{1}{x} < 2 \\
\text{When } x > 0, 1 < 2x, x \ne 0, \text{ then } x > \frac{1}{2} \\
\text{When } x < 0, 1 > 2x, x \ne 0, \text{ then } x < \frac{1}{2} \\
\text{If } x > 0 \text{ and } x > \frac{1}{2}, \text{ then } x > \frac{1}{2} \\
\text{If } x < 0 \text{ and } x < \frac{1}{2}, \text{ then } x < 0 \\
\text{Therefore, } x \in (-\infty, 0) \cup (1/2, \infty)
$$

Absolute Value
--------------
Distance between number and 0 on the real number line.

$$
\abs{x} = \begin{cases}
    x,  &\text{if } x >= 0 \\
    -x, &\text{if } x < 0
\end{cases}
$$

$\abs{x-a}$ is the distance between $x$ and $a$ on the real number line:

$$
\abs{x} = \begin{cases}
    x-a, &\text{if } x >= 0 \\
    a-x, &\text{if } x < 0
\end{cases}
$$

Solve by considering both cases. Deal with each case separately.

Solve $\abs{2x-3} < 4$:

> $$
\text{Open the inequality: } -4 < 2x-3 < 4 \\
\abs{f} < g \implies -g < f < g \\
-1 < 2x < 7 \implies -\frac{1}{2} < x < \frac{7}{2}
$$

Simplify $\abs{x} + y \le 1$:

> $$
y \le 1 - \abs{x} \\
y \le \begin{cases}
    1 - x &\text{if } x \ge 0 \\
    1 + x &\text{if } x < 0 \\
\end{cases} \\
$$

# 11/9/13

Functions
---------

A **function** is a rule that assigns a single output to an input.

    x (independent variable) -> f -> f(x) or y (dependent variable)

A function maps values in the set known as a domain into values in the set known as a range.

Domain: set of allowable values for the independent variable.

Common exclusions from domains:

* Dividing by 0.
* Log of non-positive number.
* Even root of negative number.

A function has an inverse if and only if every unique value of the independent variable in the domain has a unique value of the dependent variable - i.e., "one-to-one".

Range: set of possible values for the dependent variable.

Finding the range can be significantly more difficult than finding the domain, which is simply a matter of looking at the function.

$$
f(x) = \sqrt{x - 1} \\
\text{Restriction: } x > 1 \\
\mb{D} = [1, \infty) \\
\mb{R} = [0, \infty)
$$

$$
f(x) = \frac{1}{1 - x^2} \\
\text{Restriction: } x \ne 0 \\
\mb{D} = (\infty, -1) \cup (-1, 1) \cup (1, \infty) \\
\mb{R} = (-\infty, 0) \cup [1, \infty)
$$

A **true function** must have a unique output for each input. Graphically, the vertical line test passes for all points (vertical line drawn on graph will only intersect it at most once if it is a graph of a true function).

Non-functions can be described using functions by combining multiple functions into one:

Unit circle: $y = \pm \sqrt{x^2+y^2}$

This can be written as two functions: $y = -\sqrt{x^2+y^2}$ and $y = \sqrt{x^2+y^2}$.

Horizontal line test: a function is one-to-one if any horizontal line drawn on its graph intersects it at most once.

Function examples:

* Polynomial: $x^n$, n is a positive integer (domain real numbers)
* Rational: $f(x)/g(x)$ (domain real numbers such that $g(x) \ne 0$)
* Trigonometric/Inverse trigonometric
* Exponential: $x^n$, $x$ is a positive real number (domain real numbers)
* Logarithm: $\log(x)$ (domain positive real numbers)

# 13/9/13

Transformations
---------------

Sketch $y = x^2$, $y = x^2-1$, $y = (x + 1)^2$:

;wip

Given fuunction $f(x)$:

* $f(x)+c$ is a vertical translation $c$ units upward.
* $f(x+c)$ is a horizontal translation $c$ units to the left.
* $cf(x)$ is a vertical stretch by a factor of $c$.
* $f(cx)$ is a horizontal compression by a factor of $c$.
* $-f(x)$ is a reflection along the x-axis.
* $f(-x)$ is a reflection along the y-axis.
* $\abs{f(x)}$ is a reflection of all parts of the function below the x-axis along the x-axis.
* $f(\abs{x})$ is a reflection of all parts of the function to the right of the y-axis along the y-axis replacing what was on the left.

Compositions
------------

Given two functions $f(x)$ and $g(x)$:

$f \circ g$ (equivalent to $f(g(x))$) is a composition of $f$ and $g$.

The domain of $f \circ g$ is all values of $x$ in the domain of $g$ for which $g(x)$ is in the domain of $f$.

Given $f(x) = \frac{1}{x}, g(x) = \sqrt{1 - x}$, find $f \circ g$:

>$f \circ g$ is equivalent to $\frac{1}{\sqrt{1 - x}}$.  
>Restriction on square root: $1 - x \ge 0$, so $x \le 1$.  
>Restriction on division: $g(x) \ne 0$, so $x \ne 1$.  
>Domain of $f \circ g$: $(-\infty, 1] \cup ((-\infty, 1) \cup (1, \infty))$ is equal to $(-\infty, 1)$.

# 16/9/13

Symmetry
--------

A function is **even** if $f(-x) = f(x)$ - the function is symmetric about the y-axis.

Examples include $y = \abs{x}$ and $y = x^2$.

A function is **odd** if $f(-x) = -f(x)$.

Examples include $y = x$ and $y = \sin(x)$.

One-to-one Functions
--------------------

A function is known as one-to-one on an interval if it never takes the same value twice - it passes the horizontal line test.

Methematically, for any two numbers $x_1 \in I, x_2 \in I$, $f(x_1) \ne f(x_2)$ whenever $x_1 \ne x_2$.

Graphically, when we take the inverse of a function, we reflect it along the line $y = x$. So the horizontal line test is actually the vertical line test of the inverse.

A function is **monotonically increasing** on an interval $I$ if for any $x_1 \in I, x_2 \in I$, $x_1 < x_2 \Leftrightarrow f(x_1) < f(x_1)$.

Likewise, a function is **monotonically decreasing** on an interval $I$ if for any $x_1 \in I, x_2 \in I$, $x_1 < x_2 \Leftrightarrow f(x_1) > f(x_1)$.

A function that is monotonically increasing or monotonically decreasing on an interval is always one-to-one oon that interval.

Show that $f(x) = x^2$ is not one-to-one over $\mb{R}$ but is over $[0, \infty)$:

> Counterexample: Since, $f(-1) = f(1)$, the function is not one-to-one.  
> We can prove the latter statement by proving that the function is increasing over the interval.  
> Let $x_1 \in [0, \infty)$ and $x_2 \in [0, \infty)$ represent two arbitrary values such that $x_1 < x_2$.  
> Then $f(x_2) - f(x_1) = x_2^2 - x_1^2 = (x_2 - x_1)(x_1 + x_2)$.  
> Both terms are always positive, so $f(x_2) - f(x_1) > 0$ and $f(x_2) > f(x_1)$.  
> Therefore, the function is monotonically increasing.  

Inverse
-------

A function has an inverse if and only if it is one-to-one. By definition:

Let $f(x)$ be a one-to-one function with domain $A$ and range $B$.

The inverse function of $f(x)$, denoted $f^{-1}(x)$, is defined by $f^{-1}(y) = x \Leftrightarrow f(x) = y$.

The range of the inverse is the domain of the function, and the domain of the inverse is the range of the function.

An inverse of a function "undoes" the operation applied by the function. In other words, the cancellation equations $\forall x \in A, f^{-1}(f(x)) = x$ and $\forall x \in B, f(f^{-1}(x)) = x$ hold for all functions with inverses.

Note that $f^{-1}(x)$ is not the same as $f(x)^{-1}$ - the former is the inverse and the latter is the reciprocal.

The inverse is found by swapping the variables and isolating variables.

If a function is not one-to-one over $\mb{R}$, we may restrict the domain to a region where it is, and define the inverse there. This is useful with things like trigonometric functions, for example.

Find the inverse of $f(x) = \sqrt{10 - 3x}$:

$\mb{D} = (-\infty, \frac{10}{3}]$

$\mb{R} = [0, \infty)$

> $$
x = \sqrt{10 - 3 f^{-1}(x)} \\
x^2 = 10 - 3 f^{-1}(x) \\
x^2 - 10 = -3 f^{-1}(x) \\
\frac{10 - x^2}{3} = f^{-1}(x) \\
\mb{D} = [0, \infty) \\
\mb{R} = (-\infty, \frac{10}{3}]
$$

Graphically, if the point $(a, b)$ is on the graph of $f(x)$, then $(b, a)$ is on the graph of $f^{-1}(x)$. Using this information, we can sketch the inverse of a graph by reflecting it along the line $y = x$.

#18/9/13

The Constant e
--------------

$e$ is a constant used in many places in mathematics. It is approximately equal to 2.718.

There are several ways to define $e$:

* As a limit: $e = \displaystyle\lim_{x \to \infty}{(1 + \frac{1}{x})^n}$.
* As an infinite series: $e = \sum\limits_{n = 0}^\infty \frac{1}{n!}$.
* Graphically with tangents: of all exponential equations of the form $y = a^x, a > 0$, only where $a = e$ does the tangent of the graph have a slope of 1 at $x = 0$.
* Also, $a = e$ is the only value for which $\displaystyle\lim_{h \to 0} \frac{a^h - 1}{h} = 1$.

Exponentials/Logarithms
-----------------------

The function $f(x) = e^x$ is called the natural exponential function, just as $f(x) = \ln(x)$ is called the natural logarithm.

Sketch $f(x) = 3 + 2e^x$:

* Start with graph of $f(x) = e^x$.
* Reflect the graph along the Y axis.
* Stretch graph vertically by a factor of 2.
* Move the graph up by 3 units.

The function $f(x) = a^x$ is either increasing for $a > 1$ or decreasing for $0 < a < 1$, and therefore has an inverse. This inverse is called $\log_a(x)$. $\log_a(x) = y \Leftrightarrow a^y = x$.

The domain of $f(x) = a^x$ is $\mb{R}$, and the range is $\set{ y \in \mb{R} \middle| x > 0}$. Therefore, the domain of $f(x) = log_a(x)$ is $\set{ y \in \mb{R} \middle| x > 0}$ and the range is $\mb{R}$.

$\ln(e) = \log_e(x)$

$\ln(e) = 1$

$\log_a(x^r) = r \log_a(x^r)$. So $\log(\sqrt{x}) = \frac{1}{2} \log(x)$.

Find the inverse of $f(x) = e^{2x + 1}$:

>$$
x = e^{2 f^{-1}(x) + 1} \\
\ln(x) = 2 f^{-1}(x) + 1 \\
f^{-1}(x) = \frac{1}{2} \ln(x) - \frac{1}{2} \\
$$

# 20/9/13

Trignomonetric Functions
------------------------

Angles are measured in radians. Radians are the ratio of the associated arc and the radius: $\theta = \frac{a}{r}$.

For a full circle, $a = 2 \pi r$, so $\theta = \frac{2 \pi r}{r} = 2 \pi$.

| Radians           | Degrees |
|-------------------|---------|
| $\pi$             | 180     |
| $\frac{\pi}{2}$   | 90      |
| $\frac{\pi}{3}$   | 60      |
| $\frac{\pi}{4}    | 45      |
| $\frac{pi}{6}     | 30      |

These are based on the special triangles:

* Right triangle with side lengths $1, 1, \sqrt{2}$.
* Right triangle with side lengths $1, \sqrt{3}, 2$

Parametric equations of unit circle ($x^2 + y^2 = 1$):

* Cosine: $x = \cos \theta$
* Sine: $y = \sin \theta$

$$
x^2 + y^2 = 1 \\
\sin^2 \theta + \cos^2 \theta = 1 \\
$$

### Properties

Bounds: $-1 \le \sin \theta \le 1$, $-1 \le \cos \theta \le 1$

Periodicity: $\sin(\theta + 2 \pi k) = \sin \theta, k \in \mb{Z}$, $\cos(\theta + 2 \pi k) = \cos \theta, k \in \mb{Z}$

Odd/even: $\sin(-\theta) = -\sin(\theta)$ - odd function, $\cos(-\theta) = \cos(\theta)$ - even function

Sign: $\cos$ is positive to the right of the y-axis, $\sin$ is positive above the x-axis

Other trigoometric functions:

* Tangent: $\tan \theta = \frac{\sin \theta}{\cos \theta}$
* Cosecant $\csc \theta = \frac{1}{\sin \theta}$
* Secant: $\sec \theta = \frac{1}{\cos \theta}$
* Cotangent: $\cot \theta = \frac{\cos \theta}{\sin \theta}$

### Identities

Square Identity: $\sin^2 \theta + \cos^2 \theta = 1$

Addition formulas: $\sin(x + y) = \sin x \cos y + \cos x \sin y$, $\cos(x + y) = \cos x \cos y - \sin x \sin y$

Find the subtraction formulas:

> $$
\sin(x - y) = \sin x \cos(-y) + \cos x \sin(-y) \\
\sin(x - y) = \sin x \cos y - \cos x \sin y \\
\cos(x - y) = \cos x \cos(-y) - \sin x \sin(-y) \\
\cos(x - y) = \cos x \cos y + \sin x \sin y \\
$$

Inverse Trigonometric Functions
-------------------------------

Trignometric functions are periodic. Therefore, they are not one-to-one on the real number line and cannot have an inverse on this interval.

However, they are one-to-one if we restrict the domain. Conventionally, we use $[-\frac{\pi}{2}, \frac{\pi}{2}]$ for sine and $[0, \pi]$ for cosine.

The inverse of the sine function is denoted $x = \arcsin \theta$, or $x = \sin^{-1} \theta$ - "the angle whose sine is $x$ in the restricted domain". Its domain is $[-1, 1]$ and its range is $[-\frac{\pi}{2}, \frac{\pi}{2}]$.

The inverse of the cosine function is denoted $\arccos \theta$, or $\cos^{-1} \theta$ - "the angle whose cosine is x in the restricted domain". Its domain is $[-1, 1]$ and its range is $[0, \pi]$.

The inverse of the tangent function is denoted $\arctan \theta$, or $\tan^{-1} \theta$ - "the angle whose tangent is x in the restricted domain". Its domain is $\mb{R}$ and its range is $(-\frac{\pi}{2}, \frac{\pi}{2})$.

Evaluate $\cos(\arctan \sqrt{3})$:

> $$
\frac{\sqrt{3}}{1} = \frac{\text{opposite}}{\text{adjacent}} \\
\text{opposite} = \sqrt{3} \\
\text{adjacent} = 1 \\
\text{hypotenuse} = \sqrt{\text{opposite}^2 + \text{adjacent}^2} \\
\cos(\arctan \sqrt{3}) = \frac{\text{adjacent}}{\text{hypotenuse}} = \frac{1}{\sqrt{\text{opposite}^2 + \text{adjacent}^2}} \\
\cos(\arctan \sqrt{3}) = \frac{1}{\sqrt{3 + 1}} = \frac{1}{2} \\
$$

Simplify $\sin(\arctan x)$

> $$
\frac{x}{1} = \frac{\text{opposite}}{\text{adjacent}} \\
\text{opposite} = x \\
\text{adjacent} = 1 \\
\text{hypotenuse} = \sqrt{\text{opposite}^2 + \text{adjacent}^2} \\
\sin(\arctan x) = \frac{\text{opposite}}{\text{hypotenuse}} = \frac{x}{\sqrt{\text{opposite}^2 + \text{adjacent}^2}} \\
\sin(\arctan x) = \frac{x}{\sqrt{x^2 + 1}} \\
$$

Evaluate $\arccos \left( \sin \left( -\frac{\pi}{3} \right) \right)$:

           pi/6
            |\
            | \ 2
    sqrt(3) |  \
            |___\
        pi/2  1  pi/3

> $$
\sin \left( \frac{-\pi}{3} \right) = \frac{\text{opposite}}{\text{hypotenuse}} = -\frac{\sqrt{3}}{2} \\
\text{opposite} = \sqrt{3} \\
\text{hypotenuse} = 2 \\
\text{adjacent} = \sqrt{\text{hypotenuse}^2 - \text{opposite}^2} = \sqrt{4 - 3} = 1 \\
\arccos \left( \sin \left(-\frac{\pi}{3} \right) \right) = \pi - \frac{\pi}{6} = \frac{5 \pi}{6} \\ ;wip: how do I trignometry
$$

# 23/9/13

Hyperbolic Functions
--------------------

The **hyperbolic functions** are expressible as combinations of exponential functions.

* $\sinh x = \frac{e^x - e^{-x}}{2}$ ("sinch ex") - hyperbolic sine function. Domain and range is $\mb{R}$.
* $\cosh x = \frac{e^x + e^{-x}}{2}$ ("cosh ex") - hyperbolic cosine function. Domain is $\mb{R}$ and range is $[1, \infty]$.
* $\tanh x = \frac{e^x - e^{-x}}{e^x + e^{-x}} = \frac{\sinh x}{\cosh x}$ - hyperbolic tangent function. Domain is $\mb{R}$ and range is $(-1, 1)$.

There are also hyperbolic secant, cosecant, and cotangent functions, but they are rarely used.

* Hyperbolic sin is an odd function: $\sinh(-x) = \frac{e^{-x} - e^x}{2} = -\sinh x$. As $x \to \infty$, $\sinh x$ approaches $\frac{1}{2} e^x$ asymptotically. As $x \to -\infty$, $\sinh x$ approaches $-\frac{1}{2} e^{-x}$ asymptotically.
* Hyperbolic cosine is an even function: $\cosh(-x) = \frac{e^{-x} + e^x}{2} = \cosh x$. As $x \to \infty$, $\sinh x$ approaches $\frac{1}{2} e^x$ asymptotically. As $x \to -\infty$, $\sinh x$ approaches $\frac{1}{2} e^{-x}$ asymptotically.
* Hyperbolic tangent is an odd function: $\tanh(-x) = \frac{e^{-x} - e^x}{e^{-x} + e^x} = -\tanh x$. As $x \to \infty$, $\tanh x$ approaches 1 asymptotically. As $x \to -\infty$, $\tanh x$ approaches -1 asymptotically.

If we let $x = \cosh t$ and $y = \sinh t$, then $x^2 - y^2 = 1$. This is a hyperbola. The graph appears as an hourglass shape.

# 25/9/13

Inverse Hyperbolic Functions
----------------------------

Hyperbolic sine is one-to-one over $\mb{R}$.

To find the inverse functions, we solve for $y$ where $x = \sinh y = \frac{e^y - e^{-y}}{2}$:

> $$
\begin{align}
x = \sinh y &= \frac{e^y - e^{-y}}{2} \\
2x &= e^y - e^{-y} \\
0 &= e^y - 2x - e^{-y} \\
0 &= e^y e^y - e^y 2x - e^y e^{-y} \\
(e^y)^2 - 2x e^y - 1 &= 0 \\
e^y &= \frac{2x \pm \sqrt{(-2x)^2 - 4(1)(-1)}}{2} = x \pm \sqrt{x^2 + 1} \\
\text{Since } x - \sqrt{x^2 + 1} < 0 \text{, } e^y &= x - \sqrt{x^2 + 1} \text{ is extraneous.} \\
e^y &= x + \sqrt{x^2 + 1} \\
y &= \ln(x + \sqrt{x^2 + 1}) \\
\end{align}
$$

With this technique, we discover the inverses of the hyperbolic functions are:

* $\sinh^{-1} x = \ln(x + \sqrt{x^2 + 1})$
* $\cosh^{-1} x = \ln(x + \sqrt{x^2 - 1}), x \ge 1$
* $\tanh^{-1} x = \frac{1}{2} \ln(\frac{1 + x}{1 - x}), -1 < x < 1$

Limits
------

Limits are a core concept in calculus, because they appear in the definitions of derivatives and definite integrals, the two main branches of calculus.

A limit does not depend on what the value of the function is at the point it is approaching. Consider the following function:

$$
g(x) = \begin{cases}
3x - 1 &\text{if } x \ne 1 \\
0      &\text{if } x = 1
\end{cases}
$$

When we say the limit of $f(x)$ is $L$ as $x \to a$, we mean $f(x)$ gets closer and closer to $L$ as $x$ gets closer and closer to $a$.

The precise definition of a limit:

> Let $f$ be a function defined on an open interval that contains the number $a$, except possibly at $a$ itself.  
> Then we say the **limit** of $f(x)$ as $x$ approaches $a$ is $L$, if for every number $\epsilon > 0$ there exists a number $\delta > 0$ such that $0 < \abs{x - a} < \delta \implies \abs{f(x) - L} < \epsilon$.
> We write this as $\displaystyle\lim_{x \to a} f(x) = L$, or $f(x) \to L$ as $x \to a$.  

$\epsilon$ is Epsilon (Greek) and is associated with error.

$\delta$ is Delta (Greek) and is associated with difference.

The key point is that the limit exists if the distance between $f(x)$ and $L$ (the error, $\epsilon$) **can be made as small as needed** by making the distance between $x$ and $a$ (the difference, $\delta$) sufficiently small. However, $x \ne a$.

$$a - \delta < x < a + \delta \implies L - \epsilon < f(x) < L + \epsilon$$

$\delta$ depends on $\epsilon$.

# 27/9/13

Geometry and intuition are useful tools, but do not prove anything.

Consider $f(x) = \sin\left(\frac{1}{x}\right)$. The graph has higher and higher frequency oscillations as it approaches 0 from either direction, to a limit of infinity.

Consider the following function:

$$
f(x) = \begin{cases}
3x - 1 &\text{if }x \ne 1 \\
0      &\text{if } x = 1
\end{cases}
$$

How close must $x$ be to 1 to ensure that $h(x)$ is within 0.1 of 2?

> 0.1 plays the role of $\epsilon$.  
> We need to find the corresponding value of $\delta > 0$ such that $0 < \abs{x - 1} < \delta \implies \abs{h(x) - 2} < 0.1$.  
> So $\abs{3x - 1 - 2} < 0.1$, or $3 \abs{x - 1} < 0.1$.  
> So $\abs{x - 1} < \frac{0.1}{3}$, or $\frac{1}{30}$.  

To prove that a limit exists, we need to use an arbitrary $\epsilon > 0$:

> We need to find the corresponding value of $\delta > 0$ such that $0 < \abs{x - 1} < \delta \implies \abs{h(x) - 2} < \epsilon$.  
> So $\abs{3x - 1 - 2} < \epsilon$, or $3 \abs{x - 1} < \epsilon$.  
> So $\abs{x - 1} < \frac{\epsilon}{3}$.  
> So if we choose $\delta = \frac{\epsilon}{3}$, then we know that $0 < \abs{x - 1} < \delta \implies \abs{h(x) - 2} < \epsilon$.  
> Therefore, the limit exists, by definition.

### Heaviside Function

$$
H(x) = \begin{cases}
1 &\text{if } x \ge 0 \\
0 &\text{if } x < 0
\end{cases}
$$

Prove that the limit does not exist at $x = 0$:

> Proof by contradiction.  
> Suppose the limit does exist.  
> So $\forall \epsilon > 0, \exists \delta > 0, 0 < \abs{x} < \delta \implies \abs{H(x) - L} < \epsilon$.  
> Consider $\epsilon = 0.2$.  
> So $0 < \abs{x} < \delta \implies L - 0.2 < H(x) < L + 0.2$.  
> So the distance between $L - 0.2$ and $L + 0.2$ is 0.4.  
> Let $-\delta < x_1 < 0$ and $0 < x_2 < \delta$.  
> So it must be that $H(x_1) = 0$ and $H(x_2) = 1$.  
> So the distance between the two is 1.  
> But the distance between the two must be less than 0.4.  
> Therefore, the limit cannot exist for $\epsilon \le \frac{1}{2}$.  

# 30/9/13

Limit Laws/Theorems
-------------------

For complicated functions it is often impractical to use the definition to prove limits. Instead, we use limit laws, which can be proved from the definition.

### Limit sum law

If $\lim_{x \to a} f(x) = L$ and $\lim_{x \to a} g(x) = M$, then $\lim_{x \to a} (f(x) + g(x)) = L + M$.

Proof:

> If $\lim_{x \to a} (f(x) + g(x)) = L + M$, then $\forall \epsilon > 0, \exists \delta > 0, 0 < \abs{x - a} < \delta \implies \abs{(f(x) + g(x)) - (L + M)} < \epsilon$.  
> Clearly, $0 < \abs{x - a} < \delta \implies \abs{(f(x) + g(x)) - (L + M)} < \epsilon$ is equivalent to $0 < \abs{x - a} < \delta \implies \abs{(f(x) - L) + (g(x) - M)} < \epsilon$.  
> By the triangle inequality, $\abs{(f(x) - L) + (g(x) - M)} \le \abs{f(x) - L} + \abs{g(x) - M}$.  
> We want to make each term less than $\frac{\epsilon}{2}$, so later we can add them together to get $\epsilon$.  
> Since $\epsilon$ is arbitrary, $\forall \epsilon > 0, \exists \delta_1 > 0$, $0 < \abs{x - a} < \delta_1 \implies \abs{f(x) - L} < \frac{\epsilon}{2}$.  
> In the same way, $\forall \epsilon > 0, \exists \delta_2 > 0$, $0 < \abs{x - a} < \delta_2 \implies \abs{g(x) - M} < \frac{\epsilon}{2}$.  
> Choose $\delta$ as the smaller of $\delta_1$ and $\delta_2$.  
> Assume $0 < \abs{x - a} < \delta$.  
> So $0 < \abs{x - a} < \delta_1$, $0 < \abs{x - a} < \delta_2$.  
> Clearly, $\abs{f(x) - L} + \abs{g(x) - M} < \frac{\epsilon}{2} + \frac{\epsilon}{2}$.  
> So $\abs{(f(x) + g(x)) - (L + M)} < \epsilon$.  
> Therefore, by the definition of the limit, $\lim_{x \to a} (f(x) + g(x)) = L + M$.  

### Limit difference law

If $\lim_{x \to a} f(x) = L$ and $\lim_{x \to a} g(x) = M$, then $\lim_{x \to a} (f(x) - g(x)) = L - M$.

### Limit constant multiple law

If $\lim_{x \to a} f(x) = L$, then $\lim_{x \to a} (c \cdot f(x)) = cL$.

### Limit product law

If $\lim_{x \to a} f(x) = L$ and $\lim_{x \to a} g(x) = M$, then $\lim_{x \to a} (f(x) \cdot g(x)) = L \cdot M$.

### Limit quotient law

If $\lim_{x \to a} f(x) = L$ and $\lim_{x \to a} g(x) = M$, then $\lim_{x \to a} \frac{f(x)}{g(x)} = \frac{L}{M}$.

### Limit power law

If $\lim_{x \to a} f(x) = L$, then $\lim_{x \to a} f(x)^n = L^n$.

### Limit constant law

If $c$ is a constant, $\lim_{x \to a} c = c$.

### Limit identity law

$\lim_{x \to a} x = x$.

Evaluate $\lim_{x \to 7} \frac{\sqrt{x + 2} - 3}{x - 7}$:

> $$
\begin{align}
\lim_{x \to 7} \frac{\sqrt{x + 2} - 3}{x - 7} &= \lim_{x \to 7} \frac{\sqrt{x + 2} - 3}{x - 7} \frac{\sqrt{x + 2} + 3}{\sqrt{x + 2} + 3} \\
&= \lim_{x \to 7} \frac{x - 7}{(x - 7)(\sqrt{x + 2} + 3)} \\
&= \lim_{x \to 7} \frac{1}{\sqrt{x + 2} + 3} \\
&= \frac{1}{6} \\
\end{align}
$$

Squeeze Theorem
---------------

If $f(x) \le g(x) \le h(x)$ for all $x$ in an interval containing $a$ (except possibly at $a$), and $\lim_{x \to a} f(x) = \lim_{x \to a} h(x) = L$, then $\lim_{x \to a} g(x) = L$.

;wip: prove it with a technique similar to the sum law (answer is also in textbook)

This also works for one-sided limits. It is usually used on bounded functions like sine or cosine.

Consider $\lim_{x \to 0} x \sin\left(\frac{1}{x}\right)$. $\lim_{x \to 0} \sin\left(\frac{1}{x}\right)$ does not exist, but we know that $\sin\left(\frac{1}{x}\right)$ is bounded: $-1 \le \sin\left(\frac{1}{x}\right) \le 1$.

So $-x \le x \sin\left(\frac{1}{x}\right) \le x$. Since $\lim_{x \to 0} (-x)$ and $\lim_{x \to 0} x = 0$, then by the squeeze theorem, $\lim_{x \to 0} x \sin\left(\frac{1}{x}\right) = 0$.

One sided limits
----------------

Find $\lim_{x \to 0} \frac{\abs{x}}{x}$:

> Clearly, this is equivalent to $\begin{cases}
\frac{x}{x} &\text{if } x \ge 0 \\
\frac{-x}{x} &\text{if } x < 0 \\
\end{cases}$.  
> Clearly, this is equivalent to $\begin{cases}
1 &\text{if } x > 0 \\
-1 &\text{if } x < 0 \\
\end{cases}$. 
> Since the left side limit does not equal the right side limit, the limit does not exist.  

Approaching from either side gives different results. This leads to the idea of a one sided limit.

$\lim_{x \to a^-} f(x)$ is the left side limit - approaching $a$ from below/left.

$\lim_{x \to a^+} f(x)$ is the right side limit - approaching $a$ from above/right.

$$\lim_{x \to a} f(x) = L \Leftrightarrow \lim_{x \to a^-} f(x) = \lim_{x \to a^+} f(x) = L$$

The limit exists if and only if the limits on either side exist.

# 2/10/13

Vertical Asymptotes
-------------------

At vertical asymptotes, the limit approaches positive or negative infinity.

Consider $f(x) = \frac{1}{x^2}$ near $x = 0$. As $x \to 0$, $f(x)$ grows without bound.

We say that $f(x) \to \infty$ as $x \to a$, or $\lim_{x \to a} f(x) = \infty$, if for every $M > 0$ there exists $\delta > 0$ such that $f(x) > M$ whenever $0 < \abs{x - a} < \delta$.

In other words, the value of $f(x)$ can become arbitrarily large for some value of $x$ close enough to $a$.

Likewise, with a downwards asymptote like $f(x) = -\frac{1}{x^2}$ near $x = 0$, the same behavior applies, except $f(x) \to -\infty$ as $x \to a$, or $\lim_{x \to a} f(x) = -\infty$.

Given $f(x) = e^{\frac{1}{x^2}}$, determine how close must $x$ be to 0 so that $f(x) > 10^6$:

> In other words, find $\delta > 0$ such that $f(x) > 10^6$ when $0 < \abs{x} < \delta$.  
> Clearly, $f(x) = 10^6$ is equivalent to $\frac{1}{x^2} = 6 \ln(10)$, and $\frac{1}{x^2} = 6 \ln(10)$.
> So $x^2 = \frac{1}{6 \ln 10}$.  
> So $\abs{x} < \frac{1}{\sqrt{6 \ln 10}}$.  

In rational functions, vertical asymptotes usually occur when the denominator becomes 0.

Find the left and right hand limits of $f(x) = \frac{x^2 + 1}{3x - 2x^2}$ at each asymptote:

> Clearly, $f(x) = \frac{x^2 + 1}{x(-2x + 3)}$.
> So the asymptotes are at $x = 0$ and $x = \frac{3}{2}$.  
> As $x \to 0^-$, $x^2 + 1 > 0$, $x < 0$, and $-2x + 3 > 0$.  
> So $f(x) < 0$ for $x = 0^-$.  
> So $f(x) \to $
> ;wip: use the sign analysis with infinismals

Continuity
----------

We say $f(x)$ is continuous at $a$ if $\lim_{x \to a} f(x) = f(a)$.

If this is true for all $a \in I$, with $I$ being an interval, we say $f(x)$ is continuous on $I$.

This implies the following conditions must be met:

* $f(a)$ must be defined - $a$ must be in the domain of $f(x)$.
* The left and right limits are equal.

The most common discontinuities are:

* Infinite discontinuity - vertical asymptote: $\frac{1}{x}$.
* Removable discontinuity (hole) - where the limit exists but the function is not defined.
* Jump discontinuity - where the limit doesn't exist because the left and right limits are different.
* Wild oscillations discontinuity - where the function oscillates too much to have a limit: $f(x) = \sin \frac{1}{x}$

For removable discontinuities, we can remove the discontinuity by writing a related function filling in the undefined point:

$$
f(x) = x \sin \frac{1}{x} \\
\text{becomes } f(x) = \begin{cases}
x \sin \frac{1}{x} &\text{if } x \ne 0 \\
0 &\text{if } x = 0 \\
\end{cases}
$$

If $f(x)$ and $g(x)$ are continuous at $a$, then $f(x) \pm g(x)$, $f(x) g(x)$, and $\frac{f(x)}{g(x)}, g(x) \ne 0$ are also continuous at $a$.

Determine where $f(x) = \frac{\ln(x - 1) + \sqrt{16 - x^2}}{x^3 - 8}$ is continuous:

> $\ln(x - 1)$ is continuous for all $x \in (1, \infty)$.  
> $\sqrt{16 - x^2}$ is continuous for all $x \in (-4, 4)$.  
> The denominator must not be 0, so $x^3 - 8 \ne 0$, or $x \in (-\infty, 2) \cup (2, \infty)$.  
> The function is continuous over $x \in (1, \infty) \cap (-4, 4) \cap ((-\infty, 2) \cup (2, \infty))$, or $x \in (1, 2) \cup (2, 4)$.  

### Continuity theorem

If $f(x)$ is continuous at $x = b$, and $\lim_{x \to a} g(x) = b$, then $\lim_{x \to a} f(g(x)) = f(b)$.

In other words, the limit can be moved within compositions.

Evaluate $\lim_{x \to 0.5} \arcsin(\sqrt{1 - x^2})$:

> $$
\begin{align}
\lim_{x \to 0.5} \arcsin(\sqrt{1 - x^2}) &= \arcsin(\lim_{x \to 0.5} \sqrt{1 - x^2}) \\
&= \arcsin(\sqrt{\lim_{x \to 0.5} 1 - x^2}) \\
&= \arcsin(\sqrt{\lim_{x \to 0.5} 1 - x^2}) \\
&= \arcsin(\frac{\sqrt{3}}{2}) \\
&= \frac{\pi}{3} \\
\end{align}
$$

### Intermediate value theorem (IVT)

Suppose $f(x)$ is continuous over $[a, b]$ and $f(a) < n < f(b)$. Then there exists a number $c \in (a, b)$ such that $f(c) = n$.

In other words, for a function continuous on an interval, any value of the function in a range has a corresponding value of $x$.

This is used most often to find the roots of complicated equations - when $n = 0$.

This is an **existance theorem** - it tells us that a certain number with a certain property exists, but not its value.

Prove that $\ln x = 3 - 2x$ has at least one real root.

> Construct $f(x) = \ln x - (3 - 2x)$.  
> We want to prove there exists $x$ such that $f(x) = 0$.  
> Clearly, this is continuous over $x > 0$.  
> Construct $a = 1$, $b = 2$ (we could find these values using a graph).  
> Clearly, $f(x)$ is continuous over the interval.  
> Clearly, $f(1) = -1$ and $f(2) = \ln 2 - 1$.  
> Clearly, $f(1) < 0$ and $f(2) > 0$.  
> So by the IVT, there must exist $c \in [a, b]$ such that $f(c) = 0$.  
> So there must be a real root.  

This is a trancendental function and cannot be solved analytically.

### Bisection method

We can use the bisection to get a better approximation. Currently, we know the root is in $[1, 2]$.

We can divide $[a, b]$ into two equally sized intervals. Using IVT, we can determine that the root must be in one of the two intervals.

So we have made the possible interval smaller, and therefore gotten a better estimate.

This process can be repeated as many times as needed to get as good an estimate as needed.

Limits at Infinity
------------------

$\lim_{x \to \infty} f(x) = L$ means $\forall \epsilon > 0, \exists n > 0, x > n \implies \abs{f(x) - L} < \epsilon$.

So once $x$ exceeds some value $n$, $f(x)$ must stay within $\epsilon$ of $n$. Here, $n$ has a role similar to $\delta$.

$\lim_{x \to -\infty} f(x) = L$ means $\forall \epsilon > 0, \exists n < 0, x < n \implies \abs{f(x) - L} < \epsilon$.

Limit laws also apply as $x \to \pm \infty$, including the squeeze theorem.

Prove $\lim_{x \to \infty} \frac{1}{x^k} = 0, k > 0$:

> Let $\epsilon$ be an arbitrary positive real number.  
> Construct $n = \frac{1}{\sqrt[k]{\epsilon}}$.  
> Assume $x > n$.  
> So $x > \frac{1}{\sqrt[k]{\epsilon}}$.  
> So $\frac{1}{x} < \sqrt[k]{\epsilon}$.  
> So $\frac{1}{x^k} - 0 < \epsilon$.  
> Therefore, $\lim_{x \to \infty} \frac{1}{x^k} = 0, k > 0$.  

Infinite limit theorem: for $r \in \mb{Q}, r > 0$, when $x^r$ is defined, $\lim_{x \to \infty} \frac{1}{x^r} = 0$. In other words, when $r$ is rational and defined, $\lim_{x \to \infty} \frac{1}{x^r} = 0$.

Evaluate $\lim_{x \to \infty} \frac{x^2 + 2}{3x^2 - 4x}$:

$$
\begin{align}
\lim_{x \to \infty} \frac{x^2 + 2}{3x^2 - 4x} &= \lim_{x \to \infty} \frac{\frac{x^2 + 2}{x^2}}{\frac{3x^2 - 4x}{x^2}} \\
&= \lim_{x \to \infty} \frac{\frac{x^2}{x^2} + \frac{2}{x^2}}{\frac{3x^2}{x^2} - \frac{4x}{x^2}} \\
&= \lim_{x \to \infty} \frac{1 + \frac{2}{x^2}}{3 - \frac{4}{x}} \\
&= \frac{1 + 0}{3 - 0} \\
&= \frac{1}{3} \\
\end{align}
$$

Evaluate $\lim_{x \to \infty} (\sqrt{9x^2 + x} - 3x)$:

> $$
\begin{align}
\lim_{x \to \infty} (\sqrt{9x^2 + x} - 3x) &= \lim_{x \to \infty} (\sqrt{9x^2 + x} - 3x) \frac{\sqrt{9x^2 + x} + 3x}{\sqrt{9x^2 + x} + 3x} \\
&= \lim_{x \to \infty} \frac{9x^2 + x - 9x^2}{\sqrt{9x^2 + x} + 3x} \\
&= \lim_{x \to \infty} \frac{1}{\frac{\sqrt{9x^2 + x}}{x} + 3} \\
&= \lim_{x \to \infty} \frac{1}{\sqrt{\frac{9x^2 + x}{x^2}} + 3} \\
&= \lim_{x \to \infty} \frac{1}{\sqrt{\frac{x^2(9 + \frac{1}{x})}{x^2}} + 3} \\
&= \lim_{x \to \infty} \frac{1}{\sqrt{9} + 3} \\
&= \frac{1}{6} \\
\end{align}
$$

Evaluate $\lim_{x \to -\infty} \frac{-2}{x - \sqrt{x^2 - 2x}}$:

> ;wip

Evaluate $\lim_{x \to \infty}  e^{-x} \sin x$:

> $$
\begin{align}
-1 &\le \sin x \le 1 \\
e^{-x} &= \frac{1}{e^x} \\
\lim_{x \to \infty}  e^{-x} &= 0 \\
\text{By the squeeze theorem: } \lim_{x \to \infty}  e^{-x} \cdot -1 &\le \lim_{x \to \infty}  e^{-x} \sin x \le \lim_{x \to \infty}  e^{-x} \cdot 1 \\
0 \le \lim_{x \to \infty}  e^{-x} \sin x \le 0 \\
\lim_{x \to \infty}  e^{-x} \sin x = 0 \\
\end{align}
$$

# 7/10/13

General technique for $\epsilon$-$\delta$ proofs:

1. Let $\epsilon$ be an arbitrary positive real number.
2. Construct a particular $\delta$ as some function of $\epsilon$.
3. Show that $\delta > 0$, so it's still in the domain.
4. Assume $0 < \abs{x - a} < \delta$.
3. Prove $\abs{f(x) - L} < \epsilon$.
4. By the definition of the limit, $\lim_{x \to a} f(x) = L$.

A **horizontal asymptote** exists at $y = L$ if and only if $\lim_{x \to \infty} f(x) = L$ or $\lim_{x \to -\infty} f(x) = L$.

Consider $f(x) = e^{\frac{1}{x}}$. As $x \to 0-$, $f(x) \to 0$. But as $x \to 0^+$, $f(x) \to \infty$. This is a one-sided asymptote - a vertical asymptote from the right.

Evaluate $\lim_{x \to 1} \frac{\sqrt{x} - x^2}{1 - \sqrt{x}}$:

> $$
\begin{align}
\lim_{x \to 1} \frac{\sqrt{x} - x^2}{1 - \sqrt{x}} &= \lim_{x \to 1} \frac{\sqrt{x} - x^2}{1 - \sqrt{x}} \cdot \frac{1 + \sqrt{x}}{1 + \sqrt{x}} \\
&= \lim_{x \to 1} \frac{(\sqrt{x} - x^2)(1 + \sqrt{x})}{1 - x} \\
&= \lim_{x \to 1} \frac{\sqrt{x} - x^2 + x - x^{2.5}}{1 - x} \\
&= \lim_{x \to 1} \frac{x(1 - x) + \sqrt{x}(1 - x^2)}{1 - x} \\
&= \lim_{x \to 1} \frac{(1 - x)(x + \sqrt{x}(1 + x))}{1 - x} \\
&= \lim_{x \to 1} (x + \sqrt{x}(1 + x)) \\
&= 1 + \sqrt{1}(1 + 1)) = 3 \\
\end{align}
$$

Derivatives
-----------

The derivative of a function $f(x)$ at the point $a$, denoted $f(a)$:

$$f'(a) = \lim_{x \to a} \frac{f(x) - f(a)}{x - a}$$

This can also be written as follows:

$$f'(x) = \lim_{h \to 0} \frac{f(x + h) - f(x)}{h}$$

The first form is better for determining differentiability at a point, while the second is better for finding the derivative.

If the limit exists at $a$, the function is **differentiable** at $a$.

Two interpretations:

* $f'(x)$ is the slope of a tangent of $f(x)$ drawn at $x$.
* $f'(x)$ is the instantaneous rate of change of $f(x)$.

The following are equivalent notations: $f'(x), y', \frac{\dee y}{\dee x}, \frac{\dee f}{\dee x}, \frac{\dee}{\dee x} f(x)$. ;wip

Determine whether $f(x) = \begin{cases} x \sin \frac{1}{x}, x \ne 0 \\ 0, x = 0 \end{cases}$:

> $$
\begin{align}
f'(0) &= \lim_{x \to 0} \frac{x \sin \frac{1}{x} - 0}{x - 0} \\
&= \lim_{x \to 0} \sin \frac{1}{x} \\
\text{The limit does not exist}
\end{align}
$$

Determine whether $f(x) = \begin{cases} x^2 \sin \frac{1}{x}, x \ne 0 \\ 0, x = 0 \end{cases}$:

> $$
\begin{align}
f'(0) &= \lim_{x \to 0} \frac{x^2 \sin \frac{1}{x} - 0}{x - 0} \\
&= \lim_{x \to 0} x \sin \frac{1}{x} \\
&= 0 \text{ by the squeeze theorem}
\end{align}
$$

### Power law

> Consider $\frac{\dee}{\dee x} x^n$.  
> Let $n$ be a positive integer.  
> By definition, $\frac{\dee}{\dee x} x^n = \lim_{h \to 0} \frac{(x + h)^n - x^n}{h}$.  
> Using the binomial theorem: $(x + h)^n - x^n = (x^n + nx^{n - 1}h + \frac{n(n - 1)}{2} x^{n - 2} h^2 + \ldots + nxh^{n - 1} + h^n) - x^n$.  
> Divide all terms by $h$: $\frac{(x + h)^n - x^n}{h} = nx^{n - 1} + \frac{n(n - 1)}{2} x^{n - 2} h + \ldots + nxh^{n - 2} + h^{n - 1}$.  
> Clearly, $\lim_{h \to 0} (nx^{n - 1} + \frac{n(n - 1)}{2} x^{n - 2} h + \ldots + nxh^{n - 2} + h^{n - 1}) = nx^{x - 1}$.  
> So $\frac{\dee}{\dee x} x^n = nx^{n - 1}$.  

# 9/10/13

$$
\begin{align}
\frac{\dee}{\dee x} \sqrt{x} &= \lim_{h \to 0} \frac{\sqrt{x + h} - \sqrt{x}}{h} \\
&= \lim_{h \to 0} \frac{\sqrt{x + h} - \sqrt{x}}{h} \frac{\sqrt{x + h} + \sqrt{x}}{\sqrt{x + h} + \sqrt{x}} \\
&= \lim_{h \to 0} \frac{x + h - x}{h(\sqrt{x + h} + \sqrt{x})} \\
&= \lim_{h \to 0} \frac{1}{\sqrt{x + h} + \sqrt{x}} \\
&= \frac{1}{2 \sqrt{x}} \\
\end{align}
$$

If $f(x)$ is differentiable at $x = a$, then it is also continuous at that point. Likewise, if a function is not continuous at $x = a$, then it is also not differentiable - the contrapositive.

Proof:

> $f(x)$ is continuous at $x = a$ if and only if $\lim_{x \to a} f(x) = f(a)$, or $\lim_{x \to a} (f(x) - f(a)) \frac{x - a}{x - a} = 0$.  
> Clearly, this is equivalent to $\lim_{x \to a} \frac{f(x) - f(a)}{x - a} (x - a) = 0$, or $\lim_{x \to a} \frac{f(x) - f(a)}{x - a} \lim_{x \to a} (x - a) = 0$.  
> Clearly, this is equivalent to $f'(a) \cdot 0 = 0$.  
> Clearly, this is true whenever $f'(a)$ is defined.  
> So $f(x)$ is continuous at $x = a$ only if $f'(a)$ is defined - the function is differentiable at $x = a$.  

Some continuous functions are not differentiable.

Consider $f(x) = \abs{x}$. Clearly, $f'(0) = \lim_{x \to 0} \frac{f(x) - f(0)}{x - 0} = \lim_{x \to 0} \frac{\abs{x}}{x} = \text{undefined}$. So the function is not differentiable at $x = 0$ due to a **cusp**. Others include piecewise functions and $x^\frac{2}{3}$.

Consider $f(x) = \sqrt[3]{x}$. Clearly, $f'(0) = \lim_{x \to 0} \frac{f(x) - f(0)}{x - 0} = \lim_{x \to 0} \frac{1}{x^\frac{2}{3}} = \infty$. So the function is not differentiable at $x = 0$ due to a **vertical tangent**. Others include $\arcsin x$ and $x^\frac{2}{3}$.

### Exponential functions

Consider $f(x) = a^x$.

$$
\begin{align}
f'(x) &= \lim_{h \to 0} \frac{a^{x + h} - a^x}{h} \\
&= \lim_{h \to 0} \frac{a^x(a^h - 1)}{h} \\
&= a^x \lim_{h \to 0} \frac{a^h - 1}{h} \\
\end{align}
$$

So the derivative of any power function is just a power function multiplied by a **constant of proportionality** $\lim_{h \to 0} \frac{a^h - 1}{h}$.

Consider $f'(0) = \lim_{h \to 0} \frac{a^h - 1}{h}$. Clearly, the constant of propertionality is the slope of the tangent at $x = 0$.

We know that the slope of the tangent of $f(x)$ is 1 only when $a = e$. So we know that $\lim_{h \to 0} \frac{e^h - 1}{h} = 1$, and so $\frac{\dee}{\dee x} e^x = e^x$.

Derivative Rules
----------------

If $c$ is a constant, $\frac{\dee}{\dee x} c = 0$.

### Sum/difference rule

If $f(x)$ and $g(x)$ are differentiable at $x$, $\frac{\dee}{\dee x} (f(x) \pm g(x))$ is defined at $x$ and $\frac{\dee}{\dee x} (f(x) \pm g(x)) = \frac{\dee}{\dee x} f(x) \pm \frac{\dee}{\dee x} g(x)$.

### Constant multiple rule

If $c$ is a constant and $f(x)$ is differentiable at $x$, $\frac{\dee}{\dee x} c f(x)$ is defined at $x$ and $\frac{\dee}{\dee x} c f(x) = c \frac{\dee}{\dee x} f(x)$.

### Product rule

If $f(x)$ and $g(x)$ are differentiable at $x$, then $\frac{\dee}{\dee x} f(x) g(x)$ is defined at $x$ and $\frac{\dee}{\dee x} f(x) g(x) = f'(x) g(x) + f(x) g'(x)$.

Proof:

> $$
\begin{align}
\frac{\dee}{\dee x} f(x) g(x) &= \lim_{h \to 0} \frac{f(x + h) g(x + h) - f(x) g(x)}{h} \\
&= \lim_{h \to 0} \frac{f(x + h) g(x + h) - f(x) g(x) + (f(x) g(x + h) - f(x) g(x + h))}{h} \\
&= \lim_{h \to 0} \left( g(x + h) \frac{f(x + h) - f(x)}{h} + f(x) \frac{g(x + h) - g(x)}{h} \right) \\
&= \lim_{h \to 0} g(x + h) \frac{f(x + h) - f(x)}{h} + \lim_{h \to 0} f(x) \frac{g(x + h) - g(x)}{h} \\
&= g(x) f'(x) + f(x) g'(x) \\
\end{align}
$$

# 11/10/13

Differentiate $x^2 e^x$:

> $$
\frac{\dee}{\dee x} (x^2 e^x) = e^x \frac{\dee}{\dee x} x^2 + x^2 \frac{\dee}{\dee x} e^x = 2xe^x + x^2 e^x
$$

### Reciprocal rule

If $g(x)$ is differentiable at $x$, then $\frac{\dee}{\dee x} \frac{1}{g(x)}$ is defined at $x$ and $\frac{\dee}{\dee x} \frac{1}{g(x)} = -\frac{g'(x)}{g(x)^2}$.

Proof:

> $$
\begin{align}
\frac{\dee}{\dee x} \frac{1}{g(x)} &= \lim_{h \to 0} \frac{\frac{1}{g(x + h)} - \frac{1}{g(x)}}{h} \\
&= \lim_{h \to 0} \frac{g(x) - g(x + h)}{h(g(x + h) g(x))} \\
&= \lim_{h \to 0} -\frac{g(x + h) - g(x)}{h} \cdot \lim_{h \to 0} \frac{1}{g(x + h) g(x)} \\
&= -g'(x) \cdot \frac{1}{g(x)^2}
\end{align}
$$

### Quotient rule

If $f(x)$ and $g(x)$ are differentiable at $x$ and $g(x) \ne 0$, then $\frac{\dee}{\dee x} \frac{f(x)}{g(x)}$ is defined at $x$ and $\frac{\dee}{\dee x} \frac{f(x)}{g(x)} = \frac{f'(x) g(x) - f(x) g'(x)}{g(x)^2}$

Proof:

> $$
\begin{align}
\frac{\dee}{\dee x} \frac{f(x)}{g(x)} &= \frac{\dee}{\dee x} (f(x) g(x)^{-1}) \\
&= f'(x) g(x)^{-1} + f(x) \frac{\dee}{\dee x} g(x)^{-1} \\
&= f'(x) g(x)^{-1} + f(x) \frac{\dee}{\dee x} g(x)^{-1} \\
&= f'(x) g(x)^{-1} + f(x) \frac{-g'(x)}{g(x)^2} \\
&= \frac{f'(x) g(x) - f(x) g'(x)}{g(x)^2} \\
\end{align}
$$

The function $f(x) = \frac{x}{1 + x^2}$ is known as a serpentine curve. Find the equations of the tangents where they have a slope of $\frac{1}{8}$:

> $$
\begin{align}
f'(x) = \frac{1}{8} &= \frac{1 + x^2 - 2x^2}{(1 + x^2)^2} \\
\frac{1}{8} &= \frac{1 - x^2}{(1 + x^2)^2} \\
(1 + x^2)^2 &= 8 - 8x^2 \\
(1 + x^2)^2 - (8 - 8x^2) = x^4 + 10x^2 - 7 &= 0 \\
x^2 &= \frac{-10 \pm \sqrt{100 + 4 \cdot 1 \cdot 7}}{2} \\
x &= \pm \sqrt{-5 \pm \sqrt{\frac{128}{4}}} \\
x &= \pm \sqrt{4 \sqrt{2} - 5} \\
t_1(-\sqrt{4 \sqrt{2} - 5}) = f(-\sqrt{4 \sqrt{2} - 5}) &= \frac{1}{8} \sqrt{4 \sqrt{2} - 5} + b \\
t_1(-\sqrt{4 \sqrt{2} - 5}) = -\frac{\sqrt{4 \sqrt{2} - 5}}{4 \sqrt{2} - 4} &= \frac{1}{8} \sqrt{4 \sqrt{2} - 5} + b \\
t_1 \left(-\sqrt{4 \sqrt{2} - 5} \right) = -\frac{2 \sqrt{4 \sqrt{2} - 5}}{8(\sqrt{2} - 1)} - \frac{\sqrt{(\sqrt{2} - 1)(4 \sqrt{2} - 5)}}{8(\sqrt{2} - 1)} &= b \\
;wip
\end{align}
$$

Higher order derivatives
------------------------

The second order derivative of $f(x)$ is $\frac{\dee^2}{\dee x^2} f(x) = \frac{\dee}{\dee x} \left( \frac{\dee}{\dee x} f(x) \right) = f''(x)$.

It can be interpreted as the rate of change of the rate of change.

In the same way, we can define arbitrarily high orders of derivatives, but this is rarely used.

Consider $\frac{\dee}{\dee x}$ as an operator.

Find $\frac{\dee^2}{\dee x^2} \frac{x}{1 + x^2}$:

> $$
\begin{align}
\frac{\dee^2}{\dee x^2} \frac{x}{1 + x^2} &= \frac{\dee}{\dee x} \frac{\dee}{\dee x} \frac{x}{1 + x^2} \\
&= \frac{\dee}{\dee x} \frac{1 + x^2 - 2x^2}{(x^2 + 1)^2} \\
&= \frac{\dee}{\dee x} \frac{1 - x^2}{(x^2 + 1)^2} \\
&= \frac{-2x(x^2 + 1)^2 - (1 - x^2)(4x^3 + 4x)}{(x^2 + 1)^4} \\
&= \frac{-2x(x^2 + 1)^2 - (1 - x^2)(4x^3 + 4x)}{(x^2 + 1)^4} \\
&= \frac{-2x(x^2 + 1)^2 - 4x(1 - x^2)(x^2 + 1)}{(x^2 + 1)^4} \\
&= \frac{-2x(x^2 + 1) - 4x(1 - x^2)}{(x^2 + 1)^3} \\
\end{align}
$$

# 16/10/13

Derivatives of Trigonometric and Hyperbolic Functions
-----------------------------------------------------

Consider $\lim_{x \to 0} \frac{\sin x}{x} = 1$

;wip: big ugly geometric proof, maybe find something better here: http://www.proofwiki.org/wiki/Limit_of_Sine_of_X_over_X

Evaluate $\lim_{x \to 0} \frac{\sin(3x)}{x}$:

> $$
\begin{align}
\lim_{x \to 0} \frac{\sin(3x)}{x} &= \lim_{x \to 0} \frac{3 \sin(3x)}{3x} \\
&= 3 \lim_{x \to 0} \frac{\sin(3x)}{3x} \\
&= 3 \\
\end{align}
$$

### Sine rule

$\frac{\dee}{\dee x} \sin(x) = \cos(x)$.

Proof:

> $$
\begin{align}
\frac{\dee}{\dee x} \sin(x) &= \lim_{h \to 0} \frac{\sin(x + h) - \sin(x)}{h} \\
&= \lim_{h \to 0} \frac{\sin(x) \cos(h) + \sin(h) \cos(x) - \sin(x)}{h} \\
&= \sin(x) \lim_{h \to 0} \frac{\cos(x) - 1}{h} + \cos(x) \lim_{h \to 0} \frac{\sin(h)}{h} \\
&= \sin(x) \lim_{h \to 0} \frac{\cos(h) - 1}{h} + \cos(x) \cdot 1 \\
\lim_{h \to 0} \frac{\cos(h) - 1}{h} &= \lim_{h \to 0} \frac{\cos(h) - 1}{h} \cdot \frac{\cos(h) + 1}{\cos(h) + 1} \\
&= \lim_{h \to 0} \frac{\cos^2(h) - 1}{h(\cos(h) + 1)} \\
&= \lim_{h \to 0} \frac{1}{\cos(h) + 1} \lim_{h \to 0} \frac{(1 - \sin^2(h)) - 1}{h} \\
&= \frac{1}{2} \lim_{h \to 0} \frac{-\sin^2(h)}{h} \\
&= \frac{1}{2} \cdot -\lim_{h \to 0} \sin(h) \cdot \lim_{h \to 0} \frac{\sin(h)}{h} \\
&= \frac{1}{2} \cdot -0 \cdot 1 = 0 \\
\frac{\dee}{\dee x} \sin(x) &= \sin(x) \cdot 0 + \cos(x) \cdot 1 \\
&= \cos(x) \\
\end{align}
$$

### Cosine rule

$\frac{\dee}{\dee x} \cos(x) = -\sin(x)$.

Proof:

> $$
\begin{align}
\frac{\dee}{\dee x} \cos(x) &= \lim_{h \to 0} \frac{\cos(x + h) - \cos(x)}{h} \\
&= \lim_{h \to 0} \frac{\cos(x) \cos(h) - \sin(h) \sin(x) - \cos(x)}{h} \\
&= \cos(x) \lim_{h \to 0} \frac{\cos(h) - 1}{h} - \sin(x) \lim_{h \to 0} \frac{\sin(h)}{h} \\
&= \cos(x) \lim_{h \to 0} \frac{\cos(h) - 1}{h} - \sin(x) \cdot 1 \\
\lim_{h \to 0} \frac{\cos(h) - 1}{h} &= 0 \text{, from the proof of the sine rule} \\
\frac{\dee}{\dee x} \sin(x) &= \cos(x) \cdot 0 - \sin(x) \cdot 1 \\
&= -\sin(x) \\
\end{align}
$$

### Tangent rule

$\frac{\dee}{\dee x} \tan(x) = \sec(x)^2$

Proof:

> $$
\begin{align}
\frac{\dee}{\dee x} \tan(x) &= \frac{\dee}{\dee x} \frac{\sin(x)}{\cos(x)} \\
&= \frac{\cos(x) \frac{\dee}{\dee x} \sin(x) - \sin(x) \frac{\dee}{\dee x} \cos(x)}{\cos(x)^2} \\
&= \frac{\cos(x)^2 + \sin(x)^2}{\cos(x)^2} \\
&= \frac{1}{\cos(x)^2} \\
&= \sec(x)^2 \\
\end{align}
$$

### Hyperbolic sine rule

$\frac{\dee}{\dee x} \sinh(x) = \cosh(x)$.

Proof:

> $$
\begin{align}
\frac{\dee}{\dee x} \sinh(x) &= \frac{1}{2} \left( \frac{\dee}{\dee x} e^x - \frac{\dee}{\dee x} e^{-x} \right) \\
&= \frac{1}{2} \left( \frac{\dee}{\dee x} e^x - \frac{\dee}{\dee x} e^{-x} \right) \\
&= \frac{1}{2} \left( e^x - \frac{-1}{e^x} \right) \\
&= \frac{e^x + e^{-x}}{2} = \cosh(x) \\
\end{align}
$$

### Hyperbolic cosine rule

$\frac{\dee}{\dee x} \cosh(x) = \sinh(x)$.

Proof:

> $$
\begin{align}
\frac{\dee}{\dee x} \cosh(x) &= \frac{1}{2} \left( \frac{\dee}{\dee x} e^x + \frac{\dee}{\dee x} e^{-x} \right) \\
&= \frac{1}{2} \left( \frac{\dee}{\dee x} e^x + \frac{\dee}{\dee x} e^{-x} \right) \\
&= \frac{1}{2} \left( e^x + \frac{-1}{e^x} \right) \\
&= \frac{e^x - e^{-x}}{2} = \sinh(x) \\
\end{align}
$$

### Hyperbolic tangent rule

$\frac{\dee}{\dee x} \tanh(x) = \sech(x)$.

Proof:

> $$
\begin{align}
\frac{\dee}{\dee x} \tanh(x) &= \frac{\dee}{\dee x} \frac{\sinh(x)}{\cosh(x)} \\
&= \frac{\cosh(x) \frac{\dee}{\dee x} \sinh(x) - \sinh(x) \frac{\dee}{\dee x} \cosh(x)}{\cosh(x)^2} \\
&= \frac{\cosh(x)^2 - \sinh(x)^2}{\cosh(x)^2} \\
&= \frac{1}{\cosh(x)^2} = \sech(x)^2 \\
\end{align}
$$

Alternatively, we can prove it from the definition and derivative rules.

# 18/10/13

The **triangle inequality** states that $\abs{x + y} \le \abs{x} + \abs{y}, x \in \mb{R}^n, y \in \mb{R}^n$

Chain Rule
----------

$f'(x) = g'(h(x)) h'(x) = \frac{\dee g \circ h}{\dee x} = \frac{\dee g}{\dee h} \frac{\dee h}{\dee x}$.

Proof:

> ;wip

Simplify $\frac{\dee}{\dee x} \cos(3x)$:

> $$
\frac{\dee}{\dee x} \cos(3x) = -\sin(3x) \frac{\dee}{\dee x} 3x = -3 \sin(3x)
$$

Let $T(x)$ be the temperature at a height above the surface of the earth. Let $h(t)$ be the height of a skydiver above the earth at time $t$. What does $\frac{\dee T}{\dee t}$ represent?

> Clearly, $\frac{\dee T}{\dee t} = \frac{\dee T}{\dee h} \frac{\dee h}{\dee t}$.  
> So $\frac{\dee T}{\dee t}$ is the rate of change in temperature with respect to height times rate of change in height with respect to time.  
> So it is the rate of change in temperature with respect to height time velocity.  
> Note that $\frac{\dee T}{\dee h}$ is independent of the skydiver - it is simply the change in temperature in the atmosphere.  
> Likewise, $\frac{\dee h}{\dee t}$ is independent of the atmospheric temperature.  
> So $\frac{\dee T}{\dee t}$ represents the rate of change in temperature with respect to time **felt by the skydiver**.  

;wip: MATH137 midterm Monday Oct. 21 7pm to 8:50pm
;wip: section 3 location: last name A-H in RCH211, I-M in RCH307, N-Z in RCH 301
;wip: midterm covers appendix D, chapters 1 without 1.4, 2, 3.1, 3.2, 3.3 (no hyperbolic derivatives), lecture content, everything up and including to assignment 5
;wip: need to know definitions (limits including at infinity, derivatives, continuity), theorems (squeeze theorem, IVT, differentiability implies continuity), concepts (inverse functions and their domain and range for trigonometric/exponential/hyperbolic functions)

Exponential Rule
----------------

We can use the chain rule to find $\frac{\dee}{\dee x} a^x$:

> Clearly, $\frac{\dee}{\dee x} a^x = \frac{\dee}{\dee x} e^{\ln(a^x)} = \frac{\dee}{\dee x} e^{x \ln a}$.  
> By the chain rule, $\frac{\dee}{\dee x} a^x = \frac{\dee}{\dee x \ln a} e^{x \ln a} \cdot \frac{\dee}{\dee x} x \ln a$.  
> Clearly, $\frac{\dee}{\dee x \ln a} e^{x \ln a} \cdot \frac{\dee}{\dee x} x \ln a = (e^{\ln a})^x \cdot \ln a = a^x \cdot \ln a$, since $\frac{\dee}{\dee x} e^x = e^x$.  

So $\frac{\dee}{\dee x} a^x = a^x \ln x$

Power Rule
----------

If $g(x)$ is differentiable at $x$, then $\frac{\dee}{\dee x} g(x)^n$ is defined at $x$ and $\frac{\dee}{\dee x} g(x)^n = n \cdot g(x)^{n - 1} \cdot g'(x)$.

Proof:

> Let $u = g(x), y = u^n$.  
> Note that in this case, $u$ is called an **intermediate variable**, since it is dependent on $x$ but treated as an independent variable in $\frac{\dee y}{\dee u}$.  
> Clearly, $\frac{\dee}{\dee x} g(x)^n = \frac{\dee y}{\dee x} = \frac{\dee y}{\dee u} \frac{\dee u}{\dee x} = nu^{n - 1}u' = ng(x)^{n - 1}g'(x)$.  

# 21/10/13

Implicit Differentiation
------------------------

Useful when we do not have an explicit relation like $y = f(x)$. For example, $x^2 + y^2 = 1$ or $y^5 + 2x^2y^2 + x^4 = 1$.

Useful for finding the derivatives of inverse functions.

Contrasts with ordinary differentiation. This is differentiating for a general curve.

Find $\frac{\dee y}{\dee x}$ for $x^2 + y^2 = 1$:

> $$
\begin{align}
\frac{\dee}{\dee x} (x^2 + y^2) = \frac{\dee}{\dee x} 1 \\
&= \frac{\dee}{\dee x} x^2 + \frac{\dee}{\dee x} y^2 = \frac{\dee}{\dee x} 1
&= 2x + \frac{\dee}{\dee x} y^2 = 0 \\
&= 2x + \frac{\dee}{\dee x} y(x)^2 \\
&= 2x + \frac{\dee}{\dee y} y^2 \cdot \frac{\dee}{\dee x} y \\
&= 2x + 2y \frac{\dee}{\dee x} y \\
2x + 2y \frac{\dee}{\dee x} y &= 0 \\
\frac{\dee}{\dee x} y &= \frac{-2x}{2y} = \frac{-x}{y} \\
\end{align}
$$

Where does $x^3 + y^3 = 3xy$ have a horizontal tangent?

> $$
\begin{align}
\text{find points where } \frac{\dee y}{\dee x} &= 0 \\
\frac{\dee}{\dee x} x^3 + \frac{\dee}{\dee x} y^3 &= \frac{\dee}{\dee x} 3xy \\
&= 3x^2 + \frac{\dee}{\dee x} y^3 = \frac{\dee}{\dee x} 3xy \\
;wip
\end{align}
$$

We can use implicit differentiation to find the derivative of inverse functions.

Consider $y = \log_a x$:

> Clearly, $x = a^y$.  
> So $\frac{\dee}{\dee x} x = \frac{\dee}{\dee x} a^y = \frac{\dee}{\dee y} a^y \cdot \frac{\dee y}{\dee x}$.  
> So $1 = a^y \ln a \cdot \frac{\dee y}{\dee x}$.  
> Clearly, $\frac{\dee y}{\dee x} = \frac{1}{a^y \ln a}$.  
> ;wip: write this as a rule

Now we can prove the power rule for all real exponents:

> Clearly, $x^n = e^{\ln x^n} = e^{n \ln x}$.  
> So $\frac{\dee}{\dee x} x^n = \frac{\dee}{\dee x} e^{n \ln x} = e^{n \ln x} \cdot \frac{\dee}{\dee x} (n \ln x)$.  
> So $\frac{\dee}{\dee x} x^n = e^{n \ln x} \cdot n \cdot \frac{1}{x} = n\frac{x^n}{x} = nx^{n - 1}$.  
> ;wip: write this as a rule

Derivative of Inverse Trignonometric Functions
----------------------------------------------

### Arcsine rule

$\frac{\dee}{\dee x} \arcsin x = \frac{1}{\sqrt{1 - x^2}}$.

Proof:

> Let $y = \arcsin x$. Then $x = \sin y$.  
> Implicitly differentiating, $1 = \cos y \frac{\dee y}{\dee x}$.  
> So $\frac{\dee y}{\dee x} = \frac{1}{\cos y}$.  
> We want to write this in terms of $x$.  
> Clearly, $\cos y = \pm \sqrt{1 - \sin^2 y}$.  
> We pick the positive answer since $\cos y > 0$ whenever $-\frac{\pi}{2} \le y \le \frac{\pi}{2}$.  
> So $\frac{\dee y}{\dee x} = \frac{1}{\sqrt{1 - \sin^2 y}}$.  
> So $\frac{\dee y}{\dee x} = \frac{1}{\sqrt{1 - x^2}}$.  

### Arccosine rule

$\frac{\dee}{\dee x} \arccos x = -\frac{1}{\sqrt{1 - x^2}}$.

Proof:

> Let $y = \arccos x$. Then $x = \cos y$.  
> ;wip

### Arctangent rule

$\frac{\dee}{\dee x} \arctan x = \frac{1}{1 + x}$.

Proof:

> ;wip: do this for arctan