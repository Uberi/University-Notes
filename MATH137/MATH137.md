MATH 137
========
Calculus I:

    Section 003

Instructor:

    Name: Sean Speziale
    Email: sspezial@uwaterloo.ca
    Office: M3 2128
    Advising Hours: Monday, Wednesday at 12:00-13:30, MC 4023
    Office hours: starts week 3, details TBA ;wip

$$
\newcommand{\set}[1]{\left\{ #1 \right\}}
\newcommand{\abs}[1]{\left| #1 \right|}
\newcommand{\mb}[1]{\mathbb{#1}}
\newcommand{\dee}{\mathop{}\!\mathrm{d}}
\newcommand{\evalat}[1]{\left.\left(#1\right)\right|}
\newcommand{\sech}{\operatorname{sech}}
$$

# 9/9/13

Preliminaries
-------------

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

$\iff$ - if and only if; first implies second, and second implies first.

Solve $6 < 1 - 3x \le 10$:

>$$
\begin{align}
6 &< 1 - 3x \le 10 \\
\text{Isolate } x \text{: } 5 &< -3x \le 9 \\
-5 &> 3x \ge -9 \\
-5/3 &> x \ge -3
\end{align}
$$

Solve $\frac{1}{x} < 2$:

> We know that $\frac{1}{x} < 2$.  
> If $x > 0$, $1 < 2x$, so $x > \frac{1}{2}$.  
> If $x < 0$, $1 > 2x$, so $x < \frac{1}{2}$.  
> If $x > 0$ and $x > \frac{1}{2}$, then $x > \frac{1}{2}$.  
> If $x < 0$ and $x < \frac{1}{2}$, then $x < 0$.  
> Therefore, $x \in (-\infty, 0) \cup (1/2, \infty)$.  

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
\begin{align}
\text{Open the inequality: } -4 &< 2x-3 < 4 \\
\abs{f} < g &\implies -g < f < g \\
-1 < 2x < 7 &\implies -\frac{1}{2} < x < \frac{7}{2}
\end{align}
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
* Logarithm of non-positive number.
* Even root of negative number.

A function has an inverse if and only if every unique value of the independent variable in the domain has a unique value of the dependent variable - i.e., "one-to-one".

Range: set of possible values for the dependent variable.

Finding the range can be significantly more difficult than finding the domain, which is simply a matter of looking at the function.

$$
\begin{align}
f(x) &= \sqrt{x - 1} \\
\text{Restriction: } x &> 1 \\
\mb{D} &= [1, \infty) \\
\mb{R} &= [0, \infty)
\end{align}
$$

$$
\begin{align}
f(x) &= \frac{1}{1 - x^2} \\
\text{Restriction: } x &\ne 0 \\
\mb{D} &= (\infty, -1) \cup (-1, 1) \cup (1, \infty) \\
\mb{R} &= (-\infty, 0) \cup [1, \infty)
\end{align}
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

> $y = x^2$ is simply a parabola.  
> $y = x^2-1$ is the same parabola moved down 1 unit.  
> $y = (x + 1)^2$ is the same parabola moved left one unit.  

Given function $f(x)$:

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

A function is **monotonically increasing** on an interval $I$ if for any $x_1 \in I, x_2 \in I$, $x_1 < x_2 \iff f(x_1) < f(x_1)$.

Likewise, a function is **monotonically decreasing** on an interval $I$ if for any $x_1 \in I, x_2 \in I$, $x_1 < x_2 \iff f(x_1) > f(x_1)$.

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

The inverse function of $f(x)$, denoted $f^{-1}(x)$, is defined by $f^{-1}(y) = x \iff f(x) = y$.

The range of the inverse is the domain of the function, and the domain of the inverse is the range of the function.

An inverse of a function "undoes" the operation applied by the function. In other words, the cancellation equations $\forall x \in A, f^{-1}(f(x)) = x$ and $\forall x \in B, f(f^{-1}(x)) = x$ hold for all functions with inverses.

Note that $f^{-1}(x)$ is not the same as $f(x)^{-1}$ - the former is the inverse and the latter is the reciprocal.

The inverse is found by swapping the variables and isolating variables.

If a function is not one-to-one over $\mb{R}$, we may restrict the domain to a region where it is, and define the inverse there. This is useful with things like trigonometric functions, for example.

Find the inverse of $f(x) = \sqrt{10 - 3x}$:

> $$
\begin{align}
\mb{D} &= (-\infty, \frac{10}{3}] \\
\mb{R} &= [0, \infty) \\
x &= \sqrt{10 - 3 f^{-1}(x)} \\
x^2 &= 10 - 3 f^{-1}(x) \\
x^2 - 10 &= -3 f^{-1}(x) \\
\frac{10 - x^2}{3} &= f^{-1}(x) \\
\mb{D} &= [0, \infty) \\
\mb{R} &= (-\infty, \frac{10}{3}]
\end{align}
$$

Graphically, if the point $(a, b)$ is on the graph of $f(x)$, then $(b, a)$ is on the graph of $f^{-1}(x)$. Using this information, we can sketch the inverse of a graph by reflecting it along the line $y = x$.

#18/9/13

The Constant e
--------------

$e$ is a constant used in many places in mathematics. It is approximately equal to 2.718.

There are several ways to define $e$:

* As a limit: $e = \displaystyle\lim_{x \to \infty}{(1 + \frac{1}{x})^n}$.
* As an infinite series: $e = \sum_{n = 0}^\infty \frac{1}{n!}$.
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

The function $f(x) = a^x$ is either increasing for $a > 1$ or decreasing for $0 < a < 1$, and therefore has an inverse. This inverse is called $\log_a(x)$. $\log_a(x) = y \iff a^y = x$.

The domain of $f(x) = a^x$ is $\mb{R}$, and the range is $\set{ y \in \mb{R} \middle| x > 0}$. Therefore, the domain of $f(x) = log_a(x)$ is $\set{ y \in \mb{R} \middle| x > 0}$ and the range is $\mb{R}$.

$\ln(e) = \log_e(x)$

$\ln(e) = 1$

$\log_a(x^r) = r \log_a(x^r)$. So $\log(\sqrt{x}) = \frac{1}{2} \log(x)$.

Find the inverse of $f(x) = e^{2x + 1}$:

>$$
\begin{align}
x &= e^{2 f^{-1}(x) + 1} \\
\ln(x) &= 2 f^{-1}(x) + 1 \\
f^{-1}(x) &= \frac{1}{2} \ln(x) - \frac{1}{2} \\
\end{align}
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
| $\frac{\pi}{4}$   | 45      |
| $\frac{\pi}{6}$   | 30      |

These are based on the special triangles:

* Right triangle with side lengths $1, 1, \sqrt{2}$ and internal angles $\frac{\pi}{4}, \frac{\pi}{4}. \frac{\pi}{2}$.
* Right triangle with side lengths $1, \sqrt{3}, 2$ and internal angles $\frac{\pi}{6}, \frac{\pi}{3}. \frac{\pi}{2}$.

Parametric equations of unit circle ($x^2 + y^2 = 1$): $x = \cos \theta$ and $y = \sin \theta$ together form a unit circle from polar coordinates.

$$
\begin{align}
x^2 + y^2 &= 1 \\
\sin^2 \theta + \cos^2 \theta &= 1 \\
\end{align}
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

Square Identity: $\sin^2 \theta + \cos^2 \theta = 1$.

Addition formulas: $\sin(x + y) = \sin x \cos y + \cos x \sin y$, $\cos(x + y) = \cos x \cos y - \sin x \sin y$.

Find the subtraction formulas:

> $$
\begin{align}
\sin(x - y) &= \sin x \cos(-y) + \cos x \sin(-y) \\
&= \sin x \cos y - \cos x \sin y \\
\cos(x - y) &= \cos x \cos(-y) - \sin x \sin(-y) \\
&= \cos x \cos y + \sin x \sin y \\
\end{align}
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
\begin{align}
\frac{\sqrt{3}}{1} &= \frac{\text{opposite}}{\text{adjacent}} \\
\text{opposite} &= \sqrt{3} \\
\text{adjacent} &= 1 \\
\text{hypotenuse} &= \sqrt{\text{opposite}^2 + \text{adjacent}^2} \\
\cos(\arctan \sqrt{3}) &= \frac{\text{adjacent}}{\text{hypotenuse}} = \frac{1}{\sqrt{\text{opposite}^2 + \text{adjacent}^2}} \\
\cos(\arctan \sqrt{3}) &= \frac{1}{\sqrt{3 + 1}} = \frac{1}{2} \\
\end{align}
$$

Simplify $\sin(\arctan x)$

> $$
\begin{align}
\frac{x}{1} &= \frac{\text{opposite}}{\text{adjacent}} \\
\text{opposite} &= x \\
\text{adjacent} &= 1 \\
\text{hypotenuse} &= \sqrt{\text{opposite}^2 + \text{adjacent}^2} \\
\sin(\arctan x) &= \frac{\text{opposite}}{\text{hypotenuse}} = \frac{x}{\sqrt{\text{opposite}^2 + \text{adjacent}^2}} \\
\sin(\arctan x) &= \frac{x}{\sqrt{x^2 + 1}} \\
\end{align}
$$

Evaluate $\arccos \left( \sin \left( -\frac{\pi}{3} \right) \right)$:

           pi/6
            |\
            | \ 2
    sqrt(3) |  \
            |___\
        pi/2  1  pi/3

> $$
\begin{align}
\sin \left( \frac{-\pi}{3} \right) &= \frac{\text{opposite}}{\text{hypotenuse}} = -\frac{\sqrt{3}}{2} \\
\text{opposite} &= \sqrt{3} \\
\text{hypotenuse} &= 2 \\
\text{adjacent} &= \sqrt{\text{hypotenuse}^2 - \text{opposite}^2} = \sqrt{4 - 3} = 1 \\
\arccos \left( \sin \left(-\frac{\pi}{3} \right) \right) &= \pi - \frac{\pi}{6} = \frac{5 \pi}{6} \\
\end{align}
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
e^y &= \frac{2x \pm \sqrt{(-2x)^2 - 4 \cdot 1 \cdot -1}}{2} = x \pm \sqrt{x^2 + 1} \\
\text{Since } x - \sqrt{x^2 + 1} < 0 \text{, } e^y &= x - \sqrt{x^2 + 1} \text{ is extraneous.} \\
e^y &= x + \sqrt{x^2 + 1} \\
y &= \ln(x + \sqrt{x^2 + 1}) \\
\end{align}
$$

With this technique, we discover the inverses of the hyperbolic functions are:

* $\sinh^{-1} x = \ln(x + \sqrt{x^2 + 1})$
* $\cosh^{-1} x = \ln(x + \sqrt{x^2 - 1}), x \ge 1$
* $\tanh^{-1} x = \frac{1}{2} \ln(\frac{1 + x}{1 - x}), -1 < x < 1$

Find $tanh^{-1} x$:

> $$
\begin{align}
x = \tanh y &= \frac{e^y - e^{-y}}{e^y + e^{-y}} \\
xe^y + xe^{-y} &= e^y - e^{-y} \\
xe^{2y} + x &= e^{2y} - 1 \\
(x - 1)e^{2y} &= x + 1 \\
e^y &= \pm \sqrt{\frac{x + 1}{x - 1}} \\
\text{Since } -\sqrt{\frac{x + 1}{x - 1}} &< 0 \text{, the negative solution is extraneous.} \\
e^y &= \sqrt{\frac{x + 1}{x - 1}} \\
y &= \ln \left( \frac{x + 1}{x - 1} \right)^\frac{1}{2} \\
y &= \frac{1}{2} \ln \frac{x + 1}{x - 1} \\
\end{align}
$$

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

In other words, $(\forall \epsilon > 0, \exists \delta > 0, 0 < \abs{x - a} < \delta \implies \abs{f(x) - L} < \epsilon) \iff (\lim_{x \to a} f(x) = L)$.

$\epsilon$ is Epsilon (Greek) and is associated with error.

$\delta$ is Delta (Greek) and is associated with difference.

The key point is that the limit exists if the distance between $f(x)$ and $L$ (the error, $\epsilon$) **can be made as small as needed** by making the distance between $x$ and $a$ (the difference, $\delta$) sufficiently small. However, $x \ne a$.

We can also write the implication $0 < \abs{x - a} < \delta \implies \abs{f(x) - L} < \epsilon$ as $a - \delta < x < a + \delta \implies L - \epsilon < f(x) < L + \epsilon$.

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

$$\lim_{x \to a} f(x) = L \iff \lim_{x \to a^-} f(x) = \lim_{x \to a^+} f(x) = L$$

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
* $f(a)$ is equal to the limit at that location

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

;wip: prove this theorem

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
> Assume $x > n$. So $x > \frac{1}{\sqrt[k]{\epsilon}}$.  
> So $\frac{1}{x} < \sqrt[k]{\epsilon}$ and $\frac{1}{x^k} - 0 < \epsilon$.  
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

> $$
\text{Note that } \forall x > 2, x^2 > 2x \\
\lim_{x \to -\infty} \frac{-2}{x - \sqrt{x^2 - 2x}} = \frac{-2}{-\infty - \sqrt{\infty - \infty}} = \frac{-2}{-\infty} = 0 \\
$$

Evaluate $\lim_{x \to \infty}  e^{-x} \sin x$:

> $$
\begin{align}
-1 &\le \sin x \le 1 \\
e^{-x} &= \frac{1}{e^x} \\
\lim_{x \to \infty}  e^{-x} &= 0 \\
\text{By the squeeze theorem: } \lim_{x \to \infty}  e^{-x} \cdot -1 &\le \lim_{x \to \infty}  e^{-x} \sin x \le \lim_{x \to \infty}  e^{-x} \cdot 1 \\
0 &\le \lim_{x \to \infty}  e^{-x} \sin x \le 0 \\
\lim_{x \to \infty}  e^{-x} \sin x &= 0 \\
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

The following are equivalent notations: $f'(x), y', \frac{\dee y}{\dee x}, \frac{\dee f}{\dee x}, \frac{\dee}{\dee x} f(x)$.

Determine whether $f(x) = \begin{cases} x \sin \frac{1}{x}, x \ne 0 \\ 0, x = 0 \end{cases}$:

> $$
\begin{align}
f'(0) &= \lim_{x \to 0} \frac{x \sin \frac{1}{x} - 0}{x - 0} \\
&= \lim_{x \to 0} \sin \frac{1}{x} \\
&\text{The limit does not exist}
\end{align}
$$

Determine whether $f(x) = \begin{cases} x^2 \sin \frac{1}{x}, x \ne 0 \\ 0, x = 0 \end{cases}$:

> $$
\begin{align}
f'(0) &= \lim_{x \to 0} \frac{x^2 \sin \frac{1}{x} - 0}{x - 0} \\
&= \lim_{x \to 0} x \sin \frac{1}{x} \\
&= 0 \text{(squeeze theorem)}
\end{align}
$$

### Power law

$\frac{\dee}{\dee x} x^n = nx^{n - 1}$.

Proof for positive integer $n$:

> Consider $\frac{\dee}{\dee x} x^n$.  
> Let $n$ be a positive integer.  
> By definition, $\frac{\dee}{\dee x} x^n = \lim_{h \to 0} \frac{(x + h)^n - x^n}{h}$.  
> Using the binomial theorem: $(x + h)^n - x^n = (x^n + nx^{n - 1}h + \frac{n(n - 1)}{2} x^{n - 2} h^2 + \ldots + nxh^{n - 1} + h^n) - x^n$.  
> Divide all terms by $h$: $\frac{(x + h)^n - x^n}{h} = nx^{n - 1} + \frac{n(n - 1)}{2} x^{n - 2} h + \ldots + nxh^{n - 2} + h^{n - 1}$.  
> Clearly, $\lim_{h \to 0} (nx^{n - 1} + \frac{n(n - 1)}{2} x^{n - 2} h + \ldots + nxh^{n - 2} + h^{n - 1}) = nx^{x - 1}$.  
> So $\frac{\dee}{\dee x} x^n = nx^{n - 1}$.  

Proof for all real $n$ (requires implicit differentiation, described later):

> Clearly, $x^n = e^{\ln x^n} = e^{n \ln x}$.  
> So $\frac{\dee}{\dee x} x^n = \frac{\dee}{\dee x} e^{n \ln x} = e^{n \ln x} \cdot \frac{\dee}{\dee x} (n \ln x)$.  
> So $\frac{\dee}{\dee x} x^n = e^{n \ln x} \cdot n \cdot \frac{1}{x} = n\frac{x^n}{x} = nx^{n - 1}$.  

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

### Differentiability implies continuity

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

$\frac{\dee}{\dee x} \tanh(x) = \frac{1}{\cosh(x)} = \sech(x)$.

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

$f'(x) = g'(h(x)) h'(x) = \frac{\dee}{\dee x} g \circ h = \frac{\dee g}{\dee h} \frac{\dee h}{\dee x}$.

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
\frac{\dee}{\dee x} (x^2 + y^2) &= \frac{\dee}{\dee x} 1 \\
&= \frac{\dee}{\dee x} x^2 + \frac{\dee}{\dee x} y^2 = \frac{\dee}{\dee x} 1 \\
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
\frac{\dee}{\dee x} x^3 + \frac{\dee}{\dee x} y^3 &= \frac{\dee}{\dee x} 3xy \\
&= 3x^2 + y' 3y^2 = 3y + 3xy' \\
3x^2 - 3y &= (3x - 3y^2)y' \\
3x^2 - 3y &= (3x - 3y^2)y' \\
y' &= \frac{3x^2 - 3y}{3x - 3y^2} = \frac{x^2 - y}{x - y^2} = 0 \\
x^2 - y = 0 \wedge x - y^2 \ne 0 &\equiv y = x^2 \wedge y \ne \sqrt{x} \equiv y = x^2 \wedge x \ne 0 \wedge y \ne 0 \\
x^3 + (x^2)^3 = 3xx^2 &\equiv x^3 + x^6 = 3x^3 \equiv x^3(x^3 - 1) = 0 \\
x &= 0 \text{ (extraneous)}, x = 1 \\
y = 1^2 = 1 \\
&\text{There is a horizontal tangent at } (1, 1)
\end{align}
$$

We can use implicit differentiation to find the derivative of inverse functions.

Consider $y = \log_a x$:

> Clearly, $x = a^y$.  
> So $\frac{\dee}{\dee x} x = \frac{\dee}{\dee x} a^y = \frac{\dee}{\dee y} a^y \cdot \frac{\dee y}{\dee x}$.  
> So $1 = a^y \ln a \cdot \frac{\dee y}{\dee x}$.  
> Clearly, $\frac{\dee y}{\dee x} = \frac{1}{a^y \ln a}$.  
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
> We pick the positive answer since $\cos y \ge 0$ whenever $-\frac{\pi}{2} \le y \le \frac{\pi}{2}$, the range of $\arcsin$.  
> So $\frac{\dee y}{\dee x} = \frac{1}{\sqrt{1 - \sin^2 y}}$.  
> So $\frac{\dee y}{\dee x} = \frac{1}{\sqrt{1 - x^2}}$.  

### Arccosine rule

$\frac{\dee}{\dee x} \arccos x = -\frac{1}{\sqrt{1 - x^2}}$.

Proof:

> Let $y = \arccos x$. Then $x = \cos y$.  
> Implicitly differentiating, $1 = -\sin y \frac{\dee y}{\dee x}$.  
> So $\frac{\dee y}{\dee x} = -\frac{1}{\sin y}$.  
> We want to write this is terms of $x$.  
> Clearly, $\sin y = \pm \sqrt{1 - \cos^2 y}$.  
> We pick the positive answer since $\sin y \ge 0$ whenever $0 \le y \le \pi$, the range of $\arccos$.  
> So $\frac{\dee y}{\dee x} = -\frac{1}{\sqrt{1 - \cos^2 y}}$.  
> So $\frac{\dee y}{\dee x} = -\frac{1}{\sqrt{1 - x^2}}$.  

### Arctangent rule

$\frac{\dee}{\dee x} \arctan x = \frac{1}{1 + x^2}$.

Proof:

> Let $y = \arctan x$. Then $x = \tan y$.  
> Implicitly differentiating, $1 = sec^2 y \frac{\dee y}{\dee x}$.  
> So $\frac{\dee y}{\dee x} = -\frac{1}{\sec^2 y}$.  
> We want to write this in terms of $x$.  
> Clearly, $\frac{\sin^2 x}{\cos^2 x} + \frac{\cos^2 x}{\cos^2 x} = \frac{1}{\cos^2 x}$.  
> Clearly, $\tan^2 x + 1 = \sec^2 x$.  
> So $\frac{\dee y}{\dee x} = -\frac{1}{tan^2 x + 1}$.  
> So $\frac{\dee y}{\dee x} = -\frac{1}{x^2 + 1}$.  

# 23/10/13

Logarithmic Differentiation
---------------------------

**Logarithmic differentiation** is a technique useful for differentiating complicated products and quotients with powers, or functions of the form $f(x) = g(x)^{h(x)}$.

The general process is as follows:

1. Take the natural logarithm of both sides of the equation. Now we can use logarithm rules to turn products and quotients to sums and differences.
2. Differentiate implicitly.
3. Solve for $y'$.

Find $y'$ if $y = \frac{(2x - 3)^3 (7x - 1)^4}{(5x + 1)^5}$:

> $$
\begin{align}
y &= \frac{(2x - 3)^3 (7x - 1)^4}{(5x + 1)^5} \\
\ln y &= \ln \frac{(2x - 3)^3 (7x - 1)^4}{(5x + 1)^5} \\
\ln y &= \ln (2x - 3)^3 + \ln (7x - 1)^4 - \ln (5x + 1)^5 \\
\ln y &= 3 \ln (2x - 3) + 4 \ln (7x - 1) - 5 \ln (5x + 1) \\
\frac{\dee}{\dee x} \ln y &= \frac{\dee}{\dee x} (3 \ln (2x - 3) + 4 \ln (7x - 1) - 5 \ln (5x + 1)) \\
y' \frac{\dee}{\dee y} \ln y &= 3 \frac{\dee}{\dee x} \ln (2x - 3) + 4 \frac{\dee}{\dee x} \ln (7x - 1) - 5 \frac{\dee}{\dee x} \ln (5x + 1) \\
\frac{y'}{y} &= 3 \frac{1}{2x - 3} \frac{\dee}{\dee x} (2x - 3) + 4 \frac{1}{7x - 1} \frac{\dee}{\dee x} (7x - 1) - 5 \frac{1}{5x + 1} \frac{\dee}{\dee x} (5x + 1) \\
\frac{y'}{y} &= 3 \frac{1}{2x - 3} 2 + 4 \frac{1}{7x - 1} 7 - 5 \frac{1}{5x + 1} 5 \\
y' &= y \left( \frac{6}{2x - 3} + \frac{28}{7x - 1} - \frac{25}{5x + 1} \right) \\
y' &= \frac{(2x - 3)^3 (7x - 1)^4}{(5x + 1)^5} \left( \frac{6}{2x - 3} + \frac{28}{7x - 1} - \frac{25}{5x + 1} \right) \\
\end{align}
$$

We can use this technique to differentiate functions like $f(x) = g(x)^{h(x)}$:

> $$
\begin{align}
f(x) &= g(x)^{h(x)} \\
\ln f(x) &= \ln g(x)^{h(x)} \\
\ln f(x) &= h(x) \ln g(x) \\
\frac{\dee}{\dee x} \ln f(x) &= \frac{\dee}{\dee x} h(x) \ln g(x) \\
f'(x) \frac{1}{f(x)} &= h'(x) \ln g(x) + h(x) \frac{\dee}{\dee x} \ln g(x) \\
f'(x) &= f(x) (h'(x) \ln g(x) + \frac{h(x) g'(x)}{g(x)}) \\
\end{align}
$$

Find the equations of the tangents of $y = x^{\ln x}$ at $(1, 1)$ and $(e, e)$:

> $$
\begin{align}
y &= x^{\ln x} \\
\ln y &= \ln x \ln x = (\ln x)^2 \\
\frac{\dee}{\dee x} \ln y &= \frac{\dee}{\dee x} (\ln x)^2 \\
\frac{y'}{y} &= 2 \ln x \frac{1}{x} \\
y' &= \frac{2 x^{\ln x} \ln x}{x} \\
t_1(1) = 1 &= \frac{2 1^{\ln 1} \ln 1}{1} 1 + b = 0 \cdot 1 + b = b \\
t_1(a) &= 1 \\
t_e(a) = e &= \frac{2 e^{\ln e} \ln e}{e} a + b = 2a + b \\
t_e(e) = e &= 2e + b \\
t_e(a) = 2a - e \\
\end{align}
$$

Find $\lim_{x \to 0^+} x^{\ln x}$:

> $\lim_{x \to 0^+} x^{\ln x}$ is an **indeterminate form** - $0^{-\infty}$. This simply means that we can't determine its value as it is.  
> Clearly, $\lim_{x \to 0^+} x^{\ln x} = e^{\ln \lim_{x \to 0^+} x^{\ln x}}$.  
> Since $\ln$ is continuous, $e^{\ln \lim_{x \to 0^+} x^{\ln x}} = e^{\lim_{x \to 0^+} \ln x^{\ln x}} = e^{\lim_{x \to 0^+} (\ln x)^2}$.  
> Clearly, $\lim_{x \to 0^+} (\ln x)^2 = \infty$.  
> So $\lim_{x \to 0^+} x^{\ln x} = e^\infty = \infty$.  

Suppose $f(x)$ has a domain and range $[a, b]$ and is continuous. Show that the graph of $f(x)$ intersects $y = x$ - show that $\exists c \in [a, b], f(c) = c$:

> Clearly, $f(a) \ge a$ and $f(b) \le b$.  
> If $f(a) = a$ or $f(b) = b$, then $c$ exists.  
> Otherwise, we can use the IVT to prove $c$ exists.  
> Let $g(x) = f(x) - x$.  
> So $g(a) = f(a) - a$ and $g(b) = f(b) - b$.  
> Clearly, $g(a) > 0$ and $g(b) < 0$, and so $g(x)$ is continuous.  

### The constant e as a limit

We can also write $e$ as a limit:

> $$
\begin{align}
f(x) &= \ln x \\
f'(x) &= \frac{1}{x} \\
f'(1) &= 1 \\
f'(x) &= \lim_{h \to 0} \frac{\ln(1 + h) - \ln(1)}{h}\\
&= \lim_{h \to 0} \frac{\ln(1 + h)}{h} \\
&= \lim_{h \to 0} \frac{1}{h} \ln(1 + h) \\
&= \lim_{h \to 0} \ln(1 + h)^\frac{1}{h} = 1 \\
e^{\lim_{h \to 0} \ln(1 + h)^\frac{1}{h}} &= e^1 = e^{\ln \lim_{h \to 0} (1 + h)^\frac{1}{h}} \\
e &= \lim_{h \to 0} (1 + h)^\frac{1}{h} \\
\end{align}
$$
> Consider $f(x) = \ln x$.

Alternatively, if $n = \frac{1}{x}$, we can write the limit as $e = \lim_{n \to \infty} (1 + \frac{1}{n})^n$.

# 25/10/13

Related Rates
-------------

Related rates have multiple variables that are related in some way, and involve the derivatives of these variables.

A train departs moving Eastward traveling at 45 km/h while another departs 1 hour later moving South at 60 km/h. How fast is the distance between the trains changing 4 hours after the first train departs?

> Let $P$ be the point of departure of the two trains.  
> Let $t$ represent the time in hours.  
> Let $x(t)$ represent the distance train 1 travels East in km.  
> Let $y(t)$ represent the distance train 2 travels South in km.  
> Let $z(t)$ represent the distance between the trains in km.  
> We want to find $z'(4)$.
> Clearly, $x' = 45, y' = 60$.  
> Clearly, $z^2 = x^2 + y^2$.  
> So $\frac{\dee}{\dee t} z^2 = \frac{\dee}{\dee t} x^2 + \frac{\dee}{\dee t} y^2 = 2zz' = 2xx' + 2yy'$.  
> So $z' = \frac{xx' + yy'}{z} = \frac{45x + 60y}{z}$.  
> Clearly, at $t = 4$, $x = x(4) = 4 \cdot 45 = 180, y = y(3) = 3 \cdot 60 = 180$.  
> So $z = \sqrt{180^2 + 180^2} = 180 \sqrt{2}$.  
> So $z'(4) = \frac{45 \cdot 180 + 60 \cdot 60 \cdot 180}{180 \sqrt{2}} = \frac{105}{\sqrt{2}}$.  

How fast is the shadow cast by a 50 foot tall vertical pole lengthening when the angle of elevation of the sum is $\frac{\pi}{4} rad$ and decreasing by $\frac{1}{4}$ rad per hour?

> Let $\theta$ be the angle of elevation in radians.  
> Let $x$ be the length of the shadow in feet.  
> Clearly, $x(\theta) = \frac{50}{\tan \theta}$.  
> We know that $\theta = \frac{\pi}{4}, \frac{\dee \theta}{\dee t} = -\frac{1}{4}$.  
> We want to find $\frac{\dee x}{\dee t}$ when $\theta = (\frac{\pi}{4})$.  
> Clearly, $\frac{\dee x}{\dee t} = 50 \frac{\dee}{\dee t} \frac{1}{\tan \theta} = 50 \frac{-\sec^2 \theta \frac{\dee \theta}{\dee t}}{\tan^2 \theta} = \frac{50}{4 \sin^2 \theta}$.  
> So $x'(\frac{\pi}{4}) = \frac{50}{4 \sin^2 \frac{\pi}{4}} = 25$.  

# 28/10/13

Linear Approximations
---------------------

In math and science we often use approximations to solve problems. This is because some problems are complex or impossible to solve analytically, and it can simplify things considerably.

The **linear approximation** to a function $f(x)$ near a point $x = a$ is a first order polynomial (linear equation) which best approximates $f(x)$ near $x = a$.

This is also known as the **linearization**.

It is simply the tangent line, since it has the same **slope** and **value** at the point.

So if the linear approximation is $L(x)$, it is required that $L(a) = f(a)$ and $L'(a) = f'(a)$.

The linear approximation can be found as follows:

$$
L(x) = f'(a)(x - a) + f(a) = f'(a)x + f(a) - f'(a)a
$$

Find the linear approximation of $f(x) = \sqrt{x}$ near $x = 9$ and use it to estimate $\sqrt{10}$:

$$
\begin{align}
L(x) &= \frac{1}{6}(x - 9) + 3 \\
L(10) &= \frac{1}{6} + 3 = \frac{19}{6} \\
\end{align}
$$

The further away from the point we get, the worse the approximation gets. To regain accuracy, we need to use another linear approximation at a closer point.

The key to making good approximations is being able to find a **bound on the error** - $\exists M, \abs{f(x) - L(x)} < M$ whenever $x$ is close to $a$. This is similar to the definition of a limit. We would like to find $M$, or know that it exists.

Ideally, we want to be able to find the $x$ values that would make $\abs{f(x) - L(x)} < M$, and vice versa. This is often difficult since it needs integration.

Given $f(x) = x^2, L(x) = 1 + 2(x - 1)$ for $x$ near 1, find where the error is less than 0.1:

> We want to find where $\abs{f(x) - L(x)} < 0.1$.  
> This is equivalent to $\abs{(x - 1)^2} < 0.1$.  
> This is equivalent to $\abs{x - 1} < \sqrt{0.1}$.  
> This is equivalent to $-\sqrt{0.1} < x - 1 < \sqrt{0.1}$.  
> This is equivalent to $1 - \sqrt{0.1} < x < \sqrt{0.1} + 1$.  

Higher Order Approximations
---------------------------

Suppose we want a better approximation of $\sqrt{10}$. We could use a quadratic instead: $P_{2, 9}(x)$. Here, 2 represents the degree and 9 represents the a-value.

$P_{2, 9}(x)$ must have the **same value** and **same slope** at $x = 9$, and the **same concavity**.

So if the quadratic approximation is $P_{2, 9}(x)$, then $P_{2, 9}(a) = f(a)$, $P_{2, 9}'(a) = f'(a)$, and $P_{2, 9}''(a) = f''(a)$.

Find the quadratic approximation of $f(x) = \sqrt{x}$ near $x = 9$ and use it to estimate $\sqrt{10}$:

$$f(a) + f'(a)(x - a) + \frac{1}{2} f''(a) (x - a)^2$$

$$
\begin{align}
Q(x) &= 3 + \frac{1}{6}(x - 9) + \frac{1}{108} (x - 9)^2 \\
Q(10) &= 3 + \frac{1}{6} + \frac{1}{108} = \frac{1029}{324} \\
\end{align}
$$

We don't have to stop at quadratics. We can use any order of polynomial to get better approximations. This is known as a Taylor series.

For example, $e^x = \sum_{n = 0}^\infty \frac{x^n}{n!}$.

# 30/10/13

Min/Max Values
--------------

A function $f$ has an **absolute/global maximum** at $c$ if $f(c) \ge f(x)$ for all $x$ in the domain of $f$.

A function $f$ has a **local maximum** at $c$ if $f(c) \ge f(x)$ for $x$ near $c$.

Absolute/global and local minimum are defined similarly. **Local extrema** and **absolute/global extrema** refers to both the minimum and the maximum.

Consider $f(x) = x^2$. At $x = c$, there is a local and absolute minimum. There are no local or absolute maxima since the function tends off towards infinity.

Consider $f(x) = \arctan x$. There are horizontal asymptotes at $f(x) = \frac{\pi}{2}$ and $f(x) = -\frac{\pi}{2}$. There are no local maxima or minima, and no absolute max/min since for any possible value of $f(x)$, there must be another value that is greater or less than it.

Consider $f(x) = 0$. We would say that **every point is both the absolute minimum and maximum, and the local minimum and maximum**.

### Extreme value theorem (EVT)

If $f$ is continuous over $[a, b]$, then there exists an absolute minimum $f(c)$ and maximum $f(d)$ for $c, d \in [a, b]$.

This does not apply to things like $\arctan$ because its domain, $\mb{R}$, is **not a closed interval**.

This also does not apply to things like $\frac{1}{x}, x \in [-1, 1]$ because it is **not continuous in the interval**.

This is an **existance theorem** - it tells us that a certain number with a certain property exists, but not its value.

To actually find the absolute extrema, we start with the local extrema.

### Fermat's theorem

If $f$ has a local extreme at $c$, and $f'(c)$ exists, then $f'(c) = 0$.

Proof:

> We will prove this folds for the maximum. The proof for the minimum is very similar.  
> Assume there is a local maximum at $c$ and $f'(c)$ exists.  
> If $f$ has a local maximum at $c$, then $f(c) \ge f(x)$ for all $x$ near $c$.  
> So for some small nonzero $h$, $f(c) \ge f(c + h)$, or $f(c + h) - f(c) \le 0$.  
> Divide both sides by $h$ and take the limit as $h \to 0$. There are two cases:
> First, $h$ might be positive.
> So $\lim_{h \to 0^+} \frac{f(c + h) - f(c)}{h} \le \lim_{h \to 0^+} \frac{0}{h}$. Note that we don't need to check the left hand limit since we assumed the left side limit exists.  
> Clearly, this is the derivative, and $f'(c) \le 0$.  
> Second, $h$ might be negative.  
> So $\lim_{h \to 0^+} \frac{f(c + h) - f(c)}{h} \ge -\lim_{h \to 0^+} \frac{0}{h}$, and $\lim_{h \to 0^+} \frac{f(c + h) - f(c)}{h} \ge 0$.  
> Clearly, this is the derivative, and $f'(c) \ge 0$.  
> So $f'(c) = 0$.  

The converse is not true. Counterexample: $f(x) = x^3$ at $c = 0$.

### Closed interval method

A **critical number** of a function $f$ is a number $c$ in the domain of $f$ such that $f'(c) = 0$ or $f'(c)$ does not exist.

The **critical number** of $f(x) = \abs(x)$ is $c = 0$, since $f'(0)$ does not exist.

To find the absolute extrema of $f$ in $[a, b]$:

1. Find the critical numbers in $(a, b)$ and evaluate the function at those values.
2. Evaluate the function at $a$ and $b$.
3. The smallest and largest of the $f$ values are the absolute minimum and maximum, respectively.

Find the absolute extrema of $f(x) = x^2 - 4x + 1$ on $[-1, 3]$:

> $f$ is continuous over $\mb{R}$, so the only critical numbers are at $f'(x) = 0 = 2x - 4$, or $x = 2$.  
> Clearly, $f(2) = -3, f(-1) = 6, f(3) = -2$.  
> So the absolute minimum is $f(2) = -3$, and the absolute maximum is $f(-1) = 6$

### Rolle's theorem

If $f$ is continuous over $[a, b]$, differentiable over $(a, b)$, and $f(a) = f(b)$, then $\exists c \in (a, b), f'(c) = 0$.

Used to prove mean value theorem.

# 1/11/13

Mean Value Theorem (MVT)
------------------------

Suppose the function $f$ is continuous on $[a, b]$ and differentiable on $(a, b)$. Then $\exists c \in (a, b), f'(c) = \frac{f(b) - f(a)}{b - a}$.

In other words, there is at least one point at which the slope of the tangent is equal to the slope of the secant of the endpoints - there must be at least one place where the instantaneous rate of change is equal to the average rate of change.

There could be multiple points where this is true. For example, a line's secant and tangent slopes are always equal. MVT simple states there must be at least one.

Proof:

> Let $f$ be continuous on $[a, b]$ and differentiable on $(a, b)$.  
> Clearly, the equation of the secant line joining points $(a, f(a))$ and $(b, f(b))$ is $y = \frac{f(b) - f(a)}{b - a}(x - a) + f(a)$.  
> Construct $g(x) = f(x) - y$. The secant is continuous and differentiable everywhere, so $g(x)$ is continuous on $[a, b]$ and differentiable on $(a, b)$.  
> Note that by definition, $f(x) = y$ at $x = a$ and $x = b$.  
> So $g(a) = 0 = g(b)$, and by Rolle's theorem, $\exists c \in (a, b), g'(c) = 0$.  
> So $\exists c \in (a, b), f'(c) - y' = 0$, or $\exists c \in (a, b), f'(c) = y' = \frac{f(b) - f(a)}{b - a}$.  

Find $x$ where $f'(c) = \frac{f(3) - f(1)}{3 - 1}$ for $f(x) = x^3$ over $[1, 3]$:

> $$
\begin{align}
3x^2 &= \frac{27 - 1}{2} \\
x = \sqrt{\frac{26}{6}} &= \sqrt{\frac{13}{3}} \\
\end{align}
$$

The MVT is important because of its use in proving the **fundemental theorem of calculus** and **Taylor's Theorem with Lagrange remainder**, the two most important theorems in calculus. It is also used to prove several other results.

### Constant Function Theorem

If $f'(x) = 0$ for all $x$ in $(a, b)$, then $f$ is a constant function ($f(x) = k$).

> Note that $f'(x) = k$ if and only if for an arbitrary $x_1, x_2 \in (a, b), x_1 < x_2$, $f(x_1) = f(x_2)$.  
> Since $f$ is differentiable on $(a, b)$, then $f$ is differentiable on $(x_1, x_2)$ and continuous on $[x_1, x_2]$.  
> By the MVT, $\exists c \in [x_1, x_2], f'(c) = \frac{f(x_2) - f(x_1)}{x_2 - x_1}$.  
> Since $f'(c) = 0$, $\frac{f(x_2) - f(x_1)}{x_2 - x_1} = 0$.  
> Since $x_1, x_2$ are arbitrary, $\forall x_1, x_2 \in (a, b), x_1 < x_2, f(x_1) = f(x_2)$.  
> Therefore, the function is constant.  

### Alice Theorem

If $f'(x) = g'(x)$ over $(a, b)$, then $f(x) = g(x) + c$.

Proof:

> Let $h(x) = f(x) - g(x)$.
> So $h'(x) = f'(x) - g'(x) = 0$.  
> So by the constant function theorem, $h(x) = c$, and $f(x) = g(x) + c$.  

# 4/11/13

### Increasing/Decreasing Function Theorem

If $f'(x) > 0$ over $(a, b)$, then $f$ is increasing on $(a, b)$.

If $f'(x) < 0$ over $(a, b)$, then $f$ is decreasing on $(a, b)$.

Proof:

> Let $x_1, x_2 \in (a, b)$, and $x_1 < x_2$.  
> Assume $f'(x) > 0$ over $(a, b)$.  
> Since $f'(x)$ exists, $f$ is differentiable and continuous over $(a, b)$ and $[x_1, x_2]$.  
> By the MVT, $\exists c \in (x_1, x_2), f'(c) = \frac{f(x_2) - f(x_1)}{x_2 - x_1}$.  
> Clearly, $\forall x \in (a, b), f'(c) > 0$.  
> So $\frac{f(x_2) - f(x_1)}{x_2 - x_1} > 0$, and $f(x_2) - f(x_1) > 0$, or $f(x_2) > f(x_1)$.  
> So for arbitrary $x_1, x_2 \in (a, b), x_1 < x_2 \iff f(x_1) < f(x_2)$, the definition of an increasing function.  
> The proof for decreasing function follows the same technique and is left as an exercise.  

We can use these results to classify critical numbers.

Recall that if $f$ has a local extreme at $x = c$, then $c$ is a critical number, although the converse can be false.

First Derivative Test
---------------------

Suppose $c$ is a critical number of $f$.

If $f' > 0$ to the left of $c$ and $f' < 0$ to the right of $c$, then $f$ has a **local maximum** at $c$.

If $f' < 0$ to the left of $c$ and $f' > 0$ to the right of $c$, then $f$ has a **local minimum** at $c$.

If $f'$ does not change sign, then $f$ has no local extrema at $c$.

Find the intervals of increase/decrease and classify the critical numbers of $f(x) = x^4 - 2x^2 + 3$:

> Clearly, $f'(x) = 4x^3 - 4x$.  
> When $f'(x) = 0 = 4x(x - 1)(x + 1)$, $x = -1, 0, 1$.  
> Clearly, $f'(x)$ is defined over $\mb{R}$.  
> Note that the critical numbers divide the number line into the intervals $(-\infty, -1), (-1, 0), (0, 1), (1, \infty)$.  
> We test the derivative in these intervals to obtain $f'(-2) = -24, f(-0.5) = 1.5, f(0.5) = -1.5, f(2) = 24$.  
> So the function is increasing over $(-1, 0) \cup (1, \infty)$ and decreasing over $(-infty, -1) \cup (0, 1)$.  
> So $x = -1, 1$ are local minima and $x = 0$ is a local maximum.  

Second Derivative Test
----------------------

Concavity is defined in terms of where the graph sits in terms of its tangent line.

A **concave up** function is always above at at its tangent line. Likewise, a **concave down** function is always below its tangent line.

We usually think about this in terms of the second derivative. $f''(x) > 0$ means the function is concave up at $x$, and $f''(x) < 0$ means the function is concave down at $x$.

A point $y = f(x)$ is a **point of inflection** if and only if the function changes concavity. This is not necessarily the same thing as $f''(x) = 0$ since the sign may not change.

For example, $f(x) = x^3$ has a point of inflection at $(0, 0)$ since $f''(x) = 6x$ and $f''(x) < 0$ when $x < 0$ and $f''(x) > 0$ when $x > 0$.

Theorem: if $(c, f(c))$ is a point of inflection, then $f''(x) = 0$, or $f''(x)$ does not exist.

However, the converse can be false. For example, consider $f(x) = 0$ or $f(x) = x^4$.

The **second derivaive test** allows us to classify critical numbers using concavity.

Suppose $f''(x)$ is continuous near $c$ and that $f'(c) = 0$.

If $f''(c) > 0$, then $f$ has a **local minimum** at $c$.

If $f''(c) < 0$, then $f$ has a **local maximum** at $c$.

If $f''(c) = 0$ or $f''(c)$ does not exist, the test is inconclusive.

Find the inflection points and intervals of concavity of $f(x) = x^4 - 2x^2 + 3$, and verify the local extrema found previously:

> Clearly, $f'(x) = 4x^3 - 4x$ and $f''(x) = 12x^2 - 4$.  
> When $f''(x) = 0$, $x = -\sqrt{\frac{1}{3}}, \sqrt{\frac{1}{3}}$.  
> Clearly, $f'(x)$ and $f''(x)$ are defined over $\mb{R}$.  
> Clearly, the number line is divided into the intervals $(-infty, -\sqrt{\frac{1}{3}}), (-\sqrt{\frac{1}{3}}, \sqrt{\frac{1}{3}}), (\sqrt{\frac{1}{3}}, \infty)$.  
> We test the second derivative in these intervals to obtain $f''(-1) = 8, f''(0) = -4, f''(1) = 8$.  
> So the function is concave up over $(-infty, -\sqrt{\frac{1}{3}}), (\sqrt{\frac{1}{3}}, \infty)$ and concave down over $(-\sqrt{\frac{1}{3}}, \sqrt{\frac{1}{3}})$.
> So there are points of inflection at $(-\sqrt{\frac{1}{3}}, \frac{22}{9}), (\sqrt{\frac{1}{3}}, \frac{22}{9})$.  
> Clearly, $f''(-1) > 0, f''(0) < 0, f''(1) > 0$, so the local extrema found previously are correct.

# 6/11/13

Indeterminate Forms and l'Hôpital's Rule
----------------------------------------

We have seen previously the limits $\lim_{x \to 0} \frac{\sin x}{x} = 1$ and $\lim_{x \to \infty} \frac{x^2 - 1}{2x^2 + 4x + 1} = \frac{1}{2}$.

If we just plug in the limit value, we get $\frac{0}{0}$ or $\frac{infty}{\infty}$, which are **indeterminate forms** - in the form that they are in, we cannot evaluate it.

We need some other way of making them solvable.

L'Hôpital's rule is a very general method of removing indeterminate forms.

### L'Hôpital's Rule

If $f(x)$ and $g(x)$ are differentiable and $g'(x) \ne 0$ near $a$ (though the value at $a$ is unimportant), and one of the following is true:

* $\lim_{x \to a} f(x) = 0 = \lim_{x \to a} g(x)$
* $\lim_{x \to a} f(x) = \pm \infty = \lim_{x \to a} g(x)$

Then $\lim_{x \to a} \frac{f(x)}{g(x)} = \frac{f'(x)}{g'(x)}$.

Proof of this is beyond this course, so let's just assume it's true for now.

The rule works even if $a$ is infinite, and works with one-sided limits too.

Note that it **only works for the indeterminate forms** $\frac{0}{0}$ and $\frac{\infty}{\infty}$.

Now we have a much easier way of evaluating $\lim_{x \to 0} \frac{\sin x}{x}$:

> $$\lim_{x \to 0} \frac{\sin x}{x} = \lim_{x \to 0} \frac{\cos x}{1} = 1$$

Consider $\lim_{x \to \infty} \frac{x^n}{e^x} = 0, n \in \mb{N}$:

> If $n = 1$, then $\lim_{x \to \infty} \frac{nx^{n - 1}}{e^x} = 0$.  
> Otherwise, we get the indeterminate form $\frac{\infty}{\infty}$ and $\lim_{x \to \infty} \frac{nx^{n - 1}}{e^x} = \lim_{x \to \infty} \frac{n(n - 1)x^{n - 2}}{e^x}$.  
> If $n = 2$, then $\lim_{x \to \infty} \frac{n(n - 1)x^{n - 2}}{e^x} = 0$.  
> Otherwise, we get the indeterminate form $\frac{\infty}{\infty}$ and $\lim_{x \to \infty} \frac{n(n - 1)x^{n - 2}}{e^x} = \lim_{x \to \infty} \frac{n(n - 1)(n - 2)x^{n - 3}}{e^x}$.  
> If $n = 3$, then $\lim_{x \to \infty} \frac{n(n - 1)(n - 2)x^{n - 3}}{e^x} = 0$.  
> In fact, this applies to all $n$, and $\lim_{x \to \infty} \frac{x^n}{e^x} = 0$. We could potentially prove this through induction.  

This shows that **exponential functions grow faster than polynomial functions**.

Consider $\lim_{x \to \infty} \frac{\ln x}{x^n} = 0, n \in \mb{N}$:

> Indeterminate form $\frac{\infty}{\infty}$.  
> $\lim_{x \to \infty} \frac{\ln x}{x^n} = \lim_{x \to \infty} \frac{1}{nx^n} = \frac{1}{\infty} = 0$.  

This shows that **logarithmic functions grow slower than polynomial functions**.

### Other indeterminate forms

$0 \cdot \infty$ is a common indeterminate form.

Consider $\lim_{x \to a} f(x) g(x)$ where $\lim_{x \to a} f(x) = 0$ and $\lim_{x \to a} g(x) = \pm \infty$.

We can rewrite this as $\lim_{x \to a} \frac{f(x)}{\frac{1}{g(x)}}$ or $\lim_{x \to a} \frac{g(x)}{\frac{1}{f(x)}}$. Now we can apply l'Hôpital's rule.

Evaluate $\lim_{x \to 0^+} x \ln x$:

> Clearly, $\lim_{x \to 0^+} x \ln x = \lim_{x \to 0^+} \frac{\ln x}{\frac{1}{x}}$.  
> Indeterminate form $\frac{\infty}{\infty}$.  
> So $\lim_{x \to 0^+} \frac{\ln x}{\frac{1}{x}} = \lim_{x \to 0^+} \frac{\frac{1}{x}}{-\frac{1}{x^2}} = \lim_{x \to 0^+} -x = 0$.  

$\infty - \infty$ is another indeterminate form.

We want to write this as a fraction. This is not always possible, but is occasionally.

Consider $\lim_{x \to 0} \frac{1}{x} - \frac{1}{\sin x}$:

> Clearly, $\lim_{x \to 0} \frac{1}{x} - \frac{1}{\sin x} = \lim_{x \to 0} \frac{\sin x - x}{x \sin x}$.  
> Indeterminate form $\frac{0}{0}$.  
> Clearly, $\lim_{x \to 0} \frac{\sin x - x}{x \sin x} = \lim_{x \to 0} \frac{\cos x - 1}{\sin x + x \cos x}$.  
> Indeterminate form $\frac{0}{0}$/  
> Clearly, $\lim_{x \to 0} \frac{\cos x - 1}{\sin x + x \cos x} = \lim_{x \to 0} \frac{-\sin x}{2 \cos x - x \sin x} = 0$

These are not values themselves. For example, $0 \cdot \infty$ being indeterminate means that a function that approaches 0 times a function that approaches infinity does not have a single determinate value.

### Indeterminate powers

$0^0$, $\infty^0$, and $1^\infty$ are indeterminate.

$0^\infty$ and $\infty^\infty$ are determinate.

Consider $\lim_{x \to a} f(x)^{g(x)}$:

> Clearly, $\lim_{x \to a} f(x)^{g(x)} = \lim_{x \to a} e^{\ln f(x)^{g(x)}} = \lim_{x \to a} e^{g(x) \ln f(x)} = e^{\lim_{x \to a} g(x) \ln f(x)}$.  
> Note that $\lim_{x \to a} g(x) \ln f(x)$ can be infinite too.  

Depending on how $f(x)$ and $g(x)$ approach their values, the resulting limit differs. So it is indeterminate because there is no determinate value.

Evaluate $\lim_{x \to 0} (1 - 2x)^\frac{1}{x}$:

> $\lim_{x \to 0} (1 - 2x)^\frac{1}{x} = e^{\lim_{x \to 0} \frac{\ln (1 - 2x)}{x}}$.  
> Indeterminate form $\frac{\infty}{\infty}$.  
> Clearly, $e^{\lim_{x \to 0} \frac{\ln (1 - 2x)}{x}} = e^{\lim_{x \to 0} \frac{\frac{-2}{1 - 2x}}{1}} = \frac{1}{e^2}$.  

# 8/11/13

Curve Sketching
---------------

A systematic way of sketching the graph of a function, using information about $f$, $f'$, and $f''$.

To sketch a function:

1. Figure out domain.
2. Figure out intercepts.
3. Figure out symmetry - even, odd, periodicity.
4. Figure out asymptotes and behavior near asymptotes/discontinuities using one-sided limits for vertical and infinite limits for horizontal.
5. Find the derivative $f'$.
6. Figure out the critical points.
7. Figure out intervals of increase/decrease.
8. Classify the critical numbers as local maxima/minima.
9. Find the derivative $f''$.
10. Find the points of inflection and invervals of concavity.
11. Pick reasonable axis limits based on important points like the critical numbers and points of inflection.
12. Draw the critical points, points of inflection, and asymptotes on the graph.
13. Indicate the intervals of increase/decrease and concavity on the graph.
14. Draw the curve, taking into account all the information.

Sketch $f(x) = \frac{x}{(x + 1)^2}$:

1. The domain is $\mb{R}$.
2. The intercepts are $(0, 0)$.
3. Not symmetric.
4. Vertical asymptote at $x = -1$, going to negative infinity from both sides. Horizontal asymptote at $y = 0$.
5. $f'(x) = \frac{(x + 1)^2 - x(2x + 2)}{(x + 1)^4} = \frac{1 - x}{(x + 1)^3}$.
6. $f'(x) = 0$ when $x = 1$, and does not exist when $x = -1$. 1 is a critical point but (-1, f(-1)) is not because it is not in the domain - $f(-1)$ is undefined.
7. There are three intervals $(-\infty, -1), (-1, 1), (1, \infty)$. Note that we considered -1 even though it is not a critical number - we use all the intervals where $f'$ is discontinuous or 0. Testing, we find that $f$ is increasing on $(-\infty, -1) \cup (1, \infty)$ and decreasing on $(-1, 1)$.
8. There is a local maximum at $x = 1$.
9. $f''(x) = \frac{-(x + 1)^2 - (1 - x)(3(x + 1)^2)}{x + 1}^6 = \frac{2x - 4}{(x + 1)^4}$.
10. $f''(x) = 0$ when $x = 2$, is defined everywhere in the domain, and we find that $f$ is concave upward left of $x = 2$ and concave down right of $x = 2$. So $(2, f(2))$ is a point of inflection, $(-\infty, 2)$ is a concave up interval, and $(2, \infty)$ is a concave down interval.
11. We want to show the critical points and points of inflection. So $x \in [-2, 3]$ and $y \in [-0.5, 0.5]$ are reasonable axis limits.
12. The rest is left as an exercise.

Consider $x^\frac{5}{3} - x^\frac{2}{3}$:

> $f(x) = x^\frac{2}{3}(x - 1)$.  
> The denominator of the fractional exponent determines the domain.  
> The numerator determines the range and symmetry.  

1. The domain is $\mb{R}$.
2. The intercepts are $(0, 0)$ and $(1, 0)$.
3. Not symmetric, though each term is symmetric by itself.
4. No asymptotes.
5. $f'(x) = \frac{5}{3}x^\frac{2}{3} - \frac{2}{3}x^\frac{-1}{3} = \frac{1}{3 \sqrt[3]{x}} (5x - 2)$.
6. $f'(x) = 0$ when $x = \frac{2}{5}$, and undefined when $x = 0$. So $(0, 0)$ and $(\frac{2}{5}, f(\frac{2}{5}))$ are critical points.
7. The intervals are $(-\infty, 0), (0, \frac{2}{5}), (\frac{2}{5}, \infty)$. The function is increasing on $(-\infty, 0) \cup (\frac{2}{5}, \infty)$ and decreasing on $(0, \frac{2}{5})$.
8. There is a local maximum at $(0, 0)$ and a local minimum at $(\frac{2}{5}, f(\frac{2}{5}))$.
9. $f''(x) = \frac{10}{9}x^\frac{-1}{3} + \frac{2}{9}x^\frac{-4}{3} = \frac{2x^\frac{-1}{3}}{9}(5x + 1)$.
10. $f''(x)$ does not exist when $x = 0$, and is 0 when $x = -\frac{1}{5}$. $f$ is concave up left of $-\frac{1}{5}$ and concave down right of $-\frac{1}{5}$. $(-\frac{1}{5}, f(-\frac{1}{5}))$ is a point of inflection.
11. Reasonable axis limits are $x \in [-0.5, 1.5]$ and $y \in [-0.5, 0.5]$.
12. The rest is left as an exercise. Notice the cusp at $x = 0$.

# 11/11/13

;wip: Maple is installed on all the 3rd floor labs in MC

Sketch $f(x) = x^2 \ln x$:

> ;wip: find the limit near $x = 0$

Sketch $f(x) = \arctan(\frac{1}{x})$:

> ;wip: the graph is a well defined curve

Optimization Problems
---------------------

Word problems where we need to find an extreme value of a certain function given a constraint.

A farmer wishes to build a rectangular fence enclosing the maximum area possible with 1000m of fence. One wall of the area is a river and does not need fencing. What are the dimensions?

> Let $x$ and $y$ represent the dimensions of the rectangular fenced area, with $y$ being the side opposite the river.  
> We are constrained in that $2x + y = 1000$, so $y = 1000 - 2x$.  
> We want to maximize the area $A = xy = -2x^2 + 1000x$.  
> This is a quadratic equation and the maximum value is at the vertex, at $x = 250$.  
> So $x = 250, y = 500$.  

General steps to solving optimization problems:

1. Determine the input variables.
2. Write the problem constraint in terms of a function over the variables.
3. Write the goal in terms of a function over the variables.
4. Write the goal function in terms of a single variable, usually using the constraint.
5. Determine the interval to consider.
6. Find the extreme of the goal function as required.
7. Write the conclusion statement.

Find the points on $f(x) = 1 - x^2$ closest to the origin:

> The constraint is that the point must be on the function's curve.  
> The goal is to minimize $g(x) = \sqrt{x^2 + f(x)^2} = \sqrt{x^2 + 1 - 2x^2 + x^4} = \sqrt{x^4 - x^2 + 1}$.  
> Here, we will instead minimize $g(x)^2$ since the extrema occur at the same $x$ values.  
> $\frac{\dee}{\dee x} g(x)^2 = 4x^3 - 2x = 2x(2x^2 - 1) = 0$ when $x = 0, -\frac{1}{\sqrt{2}}, \frac{1}{\sqrt{2}}$.  
> We test to find $g(0) = 1, g(-\frac{1}{\sqrt{2}}) = \frac{\sqrt{3}}{2}, g(\frac{1}{\sqrt{2}}) = \frac{\sqrt{3}}{2}$.  
> Since $g(x) \to \infty$ as $x \to \pm \infty$, this is both a local and global minimum.  
> So the points are $(-\frac{1}{\sqrt{2}}, \frac{1}{2})$ and $(\frac{1}{\sqrt{2}}, \frac{1}{2})$.  

# 13/11/13

Newton's Method
---------------

Suppose we wanted to find the root of $x = e^{-x}$. We know that the root exists, but we can't solve it analytically.

So we need to use approximation methods. Recall the **bisection method**.

Let $f(x) = e^{-x} - x$. So $f(0) > 0 \wedge f(1) < 0$ and by IVT, a root exists in $[0, 1]$.

We bisect to obtain two intervals $[0, 0.5], [0.5, 1]$. Clearly, $f(0.5) > 0$ and by IVT, a root exists in $[0.5, 1]$.

We bisect to obtain two intervas $[0.5, 0.75], [0.75, 1]$. Clearly, $f(0.75) < 0$ and by IVT, a root exists in $[0.5, 0.75]$.

We repeat this to obtain successively more accurate results, though we never obtain the true value itself using this method.

The problem with this method is that it takes a lot of iterations to get to high accuracy - it converges relatively slowly.

**Newton's method** converges faster. It is based on linear approximations.

If we can't solve $f(x) = 0$, then we find the linear approximation $L(x)$ and then solve $L(x) = 0$ instead.

The process goes generally as follows:

1. We determine an initial guess $x_0$.
2. We find the linear approximation: $L(x) = f'(x_0)(x - x_0) + f(x_0)$.
3. Let $x_1$ be the next guess such that $L(x_1) = 0$: $f'(x_0)(x_1 - x_0) + f(x_0) = 0$, $x_1 = x_0 - \frac{f(x_0)}{f'(x_0)}$.
4. Now our guess is $x_1$. We can repeat the process to obtain successively more accuracte results.

So the approximation $x_n = x_{n - 1} - \frac{f(x_{n - 1})}{f'(x_{n - 1})}$ given initial guess $x_0$.

Find $x$ to 8 decimal places if $f(x) = e^{-x} - x = 0$, using Newton's method:

> Clearly, $f'(x) = -e^{-x} - 1$
> We take an initial guess $x_0 = 0$, on the interval $[0, 1]$ as found above. Generally, using the middle of the interval (in our case 0.5) is a better guess, but 0 makes foor simpler computations.  
> So $x_1 = 0 - \frac{1}{-2} = 0.5$.  
> So $x_2 = 0.5 - \frac{f(0.5)}{f'(0.5)}$.  
> ;wip

We know that our guess has 8 correct decimal places because between two guesses, those decimal places did not change.

Note that the initial guess is generally taken from an interval on which we prove the root exists, using IVT. However, any value will usually work.

Note that the method does not converge when:

* $f'(x) = 0$, so the linear approximation has no roots.
* $f'(x)$ does not exist, so we have no linear approximation.
* $f'(x)$ is not continuous.
* If there are multiple roots, different guesses might result in different resulting roots.

Antiderivatives
---------------

If $f'(x) = 2x$, then the most general form of $f(x)$ is $x^2 + c$, where $c$ is a constant.

An **antiderivative** of a function $f$ is a function $F$ such that $F' = f$.

Antidifferentiation is the opposite of differentiation - it undoes differentiation as subtraction undoes addition.

We can modify our existing derivative laws to obtain the antiderivative laws:

# 15/11/13

If $F(x)$ is the antiderivative of $f(x)$, then the most general antiderivative is $F(x) + c$, where $c$ is a constant. There can be infinitely many antiderivatives due to this.

To find antiderivatives, we invert our differentiation laws. ;wip: how?

Let $F'(x) = f(x)$.

### Power Functions

Let $f(x) = x^n$.

Since $\frac{\dee}{\dee x} (x^n + c) = nx^{n - 1}$, $F(x) = \frac{x^{n + 1}}{n + 1} + c$.

Note that this doesn't work for $n = -1$. If this is the case, $\frac{\dee}{\dee x} \ln \abs{x} + c = x^{-1}$.

If $n = -1$, then $F(x) = \ln \abs{x}$.

### Exponential Functions

Let $f(x) = e^x$.

Since $\frac{\dee}{\dee x} (e^x + c) = e^x$, $F(x) = e^x + c$.

Since $\frac{\dee}{\dee x} (a^x + c) = a^x \ln x$, $F(x) = \frac{a^x}{\ln a} + c$.

### Trigonometric Functions

Let $f(x) = \sin x$.

Since $\frac{\dee}{\dee x} (\cos x + c) = -\sin x$, $F(x) = -\cos x$.

Let $f(x) = \cos x$.

Since $\frac{\dee}{\dee x} (\sin x + c) = \cos x$, $F(x) = \sin x$.

Let $f(x) = \sec^2 x$.

Since $\frac{\dee}{\dee x} (\tan x + c) = \sec^2 x$, $F(x) = \tan x$.

### Inverse Trigonometric Function

Let $f(x) = \frac{1}{\sqrt{1 - x^2}}$.

Since $\frac{\dee}{\dee x} (\arcsin x + c) = \frac{1}{\sqrt{1 - x^2}}$, $F(x) = \arcsin x + c$.

Let $f(x) = -\frac{1}{\sqrt{1 - x^2}}$

Then $F(x) = \arccos x + c$, or alternatively, $-\arcsin x + c$.

Let $f(x) = -\frac{1}{1 + x^2}$.

Since $\frac{\dee}{\dee x} (\arctan x + c) = \frac{1}{1 + x^2}$, $F(x) = \arctan x + c$.

---

Antidifferentiate $\cos 2x$:

> Clearly, $\frac{\dee}{\dee x} (\sin 2x + c) = 2 \cos 2x$.  
> Then $\frac{\dee}{\dee x} (\frac{\sin 2x}{2} + c) = \cos 2x$.  

Antidifferentiate $e^{-7x}$:

> Clearly, $\frac{\dee}{\dee x} (e^{-7x} + c) = -7e^{-7x}$.  
> Then $\frac{\dee}{\dee x} (\frac{e^{-7x}}{-7} + c) = e^{-7x}$.  

Antidifferentiate $\sqrt{x}(1 + x)$:

> It is difficult to find antiderivatives of products (requires integration by parts).  
> So we expand: $\sqrt{x}(1 + x) = x^\frac{1}{2} + x^\frac{3}{2}$.  
> Then $\frac{\dee}{\dee x} (\frac{2}{3}x^\frac{3}{2} + \frac{2}{5}x^\frac{5}{2} + c) = x^\frac{1}{2} + x^\frac{3}{2}$.  

Antidifferentiate $x^2 + \frac{2}{1 + x^2}$:

> Clearly, $x^2 + \frac{2}{1 + x^2} = x^2 + 2 \frac{\dee}{\dee x} \arctan x$.
> Then $\frac{\dee}{\dee x} x^2 + \frac{2}{1 + x^2} = \frac{x^3}{3} + 2 \arctan x + c$.  

### Antidifferentiation

There is no set method of finding the antiderivative of a function. Although there are techniques such as integration by parts, for now we will still need to try to manipulate the expressions into forms that we can antidifferentiate individually.

Some useful identities used so far are:

* $f(x) \pm g(x) = \frac{\dee}{\dee x} (F(x) \pm G(x))$
* $cf(x) = \frac{\dee}{\dee x} cF(x)$
* $x^n = \frac{\dee}{\dee x} \frac{x^{n + 1}}{n + 1}$

;wip: use indefinite integrals and the integral notation to make things cleaner

Consider projectile motion in 1D. A stone is launched upwards from a certain height at a certain velocity. What does its motion look like?

> Let $y(t)$ represent position above the reference, $v(t)$ represent velocity, and $a(t)$ represent acceleration.  
> Clearly, $a(t)$ is constant and $a(t) = g = -9.81 m/s^2$, the acceleration due to gravity on the surface of the Earth.  
> Clearly, $\frac{\dee}{\dee x} v(t) = a(t)$, so $v(t) = gt + c$. Here, $c$ represents the initial velocity, the vecloity when $t = 0$. We write this as $v(t) = gt + v_0$.  
> Clearly, $\frac{\dee}{\dee x} y(t) = v(t)$, so $y(t) = \frac{1}{2}gt^2 + v_0t + v_0 + c$. Here, $c$ represents the initial height, the height when $t = 0$. We write this as $y(t) = x_0 + v_0t + \frac{1}{2}gt^2$.  

A stone is launched upwards from the surface of the earth with initial velocity $v_0$. When does it return to the surface and where is the highest point?

> We want to find where $y(t) = 0$ and where it has its maximum.  
> Clearly, $x_0 = 0$ since the starting point is the surface of the Earth.  
> Assume $y(t) = 0$.  
> So $x_0 + v_0t + \frac{1}{2}gt^2 = 0 = t(v_0 + \frac{1}{2}gt)$ and $t = 0, \frac{-2v_0}{g}$.  
> So the stone returns to the ground at $t = \frac{-2v_0}{g}$.  
> The maximum is at $t = \frac{-v_0}{2}$ since the maximum of $ax^2 + bx + c$ is at $\frac{-b}{2a}$.  
> So the stone is at the highest point at $\left(\frac{-v_0}{2}, \frac{gv_0^2}{8} - \frac{v_0^2}{2}\right)$.  

Sigma Notation
--------------

$\sum$ is the Greek letter "sigma", and generally represents a sum.

Let $a_1, \ldots, a_n$ be real numbers. Let $m, n$ be integers, $m \le n$.

Then $\sum_{i = m}^n a_i = a_1 + \ldots + a_n$ - the "sum of $a_i$ from $i = 1$ to $i = n$".

It does not have to start at 1 - the number below can be any integer.

An infinite sum is when $n = \infty$.

### Properties

If $c$ is a constant (doesn't depend on $i$), then $\sum_{i = m}^n cf(i) = c\sum_{i = m}^n f(i)$.

$\sum_{i = m}^n (f(i) \pm g(i)) = (\sum_{i = m}^n f(i)) \pm (\sum_{i = m}^n g(i))$. Note that this does not work for infinite sums.

$\sum_{i = m}^n 1 = n - m + 1$.

# 18/11/13

$\sum_{i = 1}^n i = \frac{n(n + 1)}{2}$.

Proof:

> Clearly, $\sum_{i = 1}^n i = 1 + \ldots + n = n + \ldots + 1$.  
> So $2\sum_{i = 1}^n i = (1 + \ldots + n) + (n + \ldots + 1) = (n + 1) + \ldots + (n + 1) = n(n + 1)$.  
> So $\sum_{i = 1}^n i = \frac{n(n + 1)}{2}$.  

$\sum_{i = 1}^n i^2 = \frac{n(n + 1)(2n + 1)}{6}$.

$\sum_{i = 1}^n i^3 = \frac{n^2(n + 1)^2}{4}$.

Integral Calculus
-----------------

Given a continuous function $f(x) > 0$ over $[a, b]$, what is the area below the curve and above the x-axis?

This is easy for things like rectangles, but there is no formula for the area below a general curve.

### Rectangle Approximation

However, we can approximate the area by approximating the curve using shapes we can calculate the area of.

Find the area below $y = x^2$ for $x \in [0, 1]$:

> We can approximate the curve using rectangles. First, we would split the interval into multiple subintervals: $[0, 0.25], [0.25, 0.5], [0.5, 0.75], [0.75, 1]$.  
> The width of each rectangle is 0.25, and the height is the largest value of the function in the interval - at the right endpoint, in our case.  
> So the rectangle dimensions are $0.25 \times 0.0625, 0.25 \times 0.25, 0.25 \times 0.5625, 0.25 \times 1$.  
> So the area under the curve is $0.25 \cdot 0.0625 + 0.25 \cdot 0.25 + 0.25 \cdot 0.5625 + 0.25 \cdot 1 = 0.46875$.  
> Note that the approximation of the area is always greater than the actual area because we make the rectangle height based on the largest value in their interval.  
> This means the approximation is an upper bound.  
> Now we want to find a lower bound. We can do this by making the rectangle height based on the smallest value of the function in the interval - at the left endpoint, in our case.  
> So the area under the curve is $0.25 \cdot 0 + 0.25 \cdot 0.0625 + 0.25 \cdot 0.25 + 0.25 \cdot 0.5625 = 0.21875$.  
> So the area is between 0.21875 and 0.46875.  

To get a better estimate, we would increase the number of rectangles. This would refine the estimate and make the bounds closer. The idea is that the bounds eventually converge towards the same value.

To get the exact value, we need to use infinitely many rectangles that are each infinitely thin. In other words, we take the limit of the bounds as the number of rectangles approaches infinity, or the subinterval length approaches 0.

We divide the interval $[a, b]$ into $n$ subintervals. So now there are the intervals $[x_0, x_1], \ldots, [x_{n - 1}, x_n], x_0 = a, x_n = b$.

Often, we will use equally sized intervals. In this case, each interval has the width $\frac{b - a}{2}$.

Now we construct a rectangle on each interval. It has the same width as the interval. We choose a $c_i \in [x_{i - 1}, x_i]$ and make the rectangle height $f(c_i)$. Often, we use the midpoint as $c_i$, so $c_i = \frac{x_{i - 1} + x_i}{2}$. The choice of sample point is largely irrelevant since the area will eventually converge.

The area of the rectangle is $(x_i - x_{i - 1})f(c)$. The area of all of the rectangles is an approximation of the function's area.

We write this as $\sum_{i = 1}^n f(c_i) \delta x$. This is called the **Riemann Sum** (ree-men). We can use $\delta x = \frac{b - a}{2}$ if the intervals are equal in width.

So the exact area under the curve is $\lim_{n \to \infty} \sum_{i = 1}^n f(c_i) \delta x$. This is the **definition of the definite integral**.

This can be written as $\lim_{n \to \infty} \sum_{i = 1}^n f(\frac{b - a}{n}i + a) \frac{b - a}{n}$ if we use the left endpoint and equally sized intervals.

Now we apply this to the example.

> We want to find $\lim_{n \to \infty} \sum_{i = 1}^n c_i^2 \frac{1}{n}$.  
> Clearly, $c_i = i\frac{1}{n}$ - the index times the width of an interval.  
> So $\lim_{n \to \infty} \sum_{i = 1}^n c_i^2 \frac{1}{n} = \lim_{n \to \infty} \sum_{i = 1}^n i^2\frac{1}{n^2} \frac{1}{n} = \lim_{n \to \infty} \frac{1}{n^3} \sum_{i = 1}^n i^2 = \lim_{n \to \infty} \frac{1}{n^3} \frac{n(n + 1)(2n + 1)}{6} = \lim_{n \to \infty} \frac{2n^3 + 3n^2 + n}{6n^3} = \frac{1}{3}$.  
> So the area is $\frac{1}{3}$ square units.

# 20/11/13

We can use different subinterval sizes based on the behaviour of the function. For example, if a function has some oscillation near the origin but levels out elsewhere, we would use smaller subintervals near the origin and larger ones elsewhere.

Integration
-----------

Let $v(t)$ be the speed, $d(t)$ be the distance.

For $v(t) = k$, $d(t) = v(t) \cdot t$.

Problems involving finding the distance given speed are called **distance problems**.

Distance is the area under the curve of the velocity graph.

If we have a table of times and corresponding speeds, we can pretend it forms a curve and estimate the distance using the rectangle approximation.

Velocity is the derivative of displacement - $v(t) = d'(t)$. So **displacement is the antiderivative of velocity**.

### Definite Integral

The **definite integral** of $f$ from $a$ to $b$ is $\int_a^b f(x) \dee x = \lim_{n \to \infty} \sum_{i = 1}^n f(c_i) \delta x, c_i \in [x_{i - 1}, x_i], \delta x = x_i - x_{i - 1}$.

If we are using equal partition sizes, this is more easily written as $\int_a^b f(x) \dee x = \lim_{n \to \infty} \sum_{i = 1}^n f\left(\frac{b - a}{n}i + a\right) \frac{b - a}{n}$

If the limit exists, we say $f$ is **integrable**.

There are a lot more types of functions that can be integrated compared to those that can be differentiated. Integrable functions can even be discontinuous.

Note that the definition says nothing about the area under the curve. The area is simply a geometric interpretation of the integral - like the derivative being interpreted as the slope of the tangent.

The $\int$ symbol is an elongated "S", for "sum", because it is the limit of a sum.

$\int_a^b f(x) \dee x$ is a number. $x$ does not matter here - we could use any value here. So $\int_a^b f(x) \dee x = \int_a^b f(t) \dee t = \int_a^b f(\theta) \dee \theta$.

### Terminology

Given $\int_a^b f(x) \dee x$:

* $f(x)$ is the **integrand**.
* $a$ and $b$ are the **limits of integration**, the **lower** and **upper** limits, repsectively.
* $\dee x$ is the **differential**.

The differential simply identifies the variable of integration. It also has dimensions. So for $\int_a^b v(t) \dee t$, the unit is $m$, because $v(t)$ has the units $m/s$ and $t$ still carries the unit $s$.

# 22/11/13

Integrability
-------------

There are several ways to determine whether a function is integrable:

* Continuous functions - they are bounded such that the area under the curve is finite.
    * All continuous functions are integrable.
* Discontinuous functions - some are integrable, some are not, depending on the type of discontinuity.
    * Removable discontinuities ($\int_{-\pi}^\pi \frac{\sin x}{x} \dee x$) can be integrated even though the function may not be defined at a point.
        * We fill in the hole when integrating - we sum the integral on the left of the hole, and the integral on the right of the hole.
        * These are called **improper integrals**.
    * Jump discontinuities (heaviside function) can be integrated.
        * We sum the integral to the left of the discontinuity and the integral to the right of the discontinuity, ignoring the function at the jump.
        * This is also an improper integral.
    * Infinite discontinuities (vertical asymptotes) can be integrated but require improper integrals to study properly.
        * For example, $\int_0^1 \frac{1}{x} \dee x$ has no meaning - we say it is **divergent**.
        * For example, $\int_0^1 \frac{1}{\sqrt{x}} \dee x = 2$.
        * The value depends on how the function approaches the asymptote.
    * The Riemann Pathological Function (infinite series) is integrable, yet it has an infinite number of jump discontinuities over a finite interval.
    * Thomae's Function (ruler function) is integrable, yet it is continuous at the irrationals, and discontinuous at the rationals.
    * Dirichlet's Function ($\phi(x) = \begin{cases} 1 &\text{if } x \text{ is rational} \\ 0 &\text{if } x \text{ is irrational} \end{cases}$) is not integrable using the Riemann integral, yet is integrable using something like the **Lebesque integral**, which is in the realm of analysis.

Properties of Definite Integrals
--------------------------------

Let $f, g$ be integrable functions. Let $c$ be a constant.

* $\int_a^a f(x) \dee x = 0$ - a region of zero width has zero area.
* $\int_a^b f(x) \dee x = -\int_b^a \dee x$ - switching the endpoints switches the sign (this is because $\delta x = \frac{a - b}{n} = -\frac{b - a}{n}$).
* $\int_a^b c \dee x = c(b - a)$ - integrating a constant is the area under the rectangle.
* $\int_a^b (f(x) \pm g(x)) \dee x = \int_a^b f(x) \dee x \pm \int_a^b g(x) \dee x$ - integrals have linearity.
* $\int_a^b cf(x) \dee x = c\int_a^b f(x) \dee x$ - constants can be moved outside the integral.
* $\int_a^b f(x) \dee x = \int_a^c f(x) \dee x + \int_c^b f(x) \dee x$ - we can split the integral on any intervals we want. Note that $c$ does not have to be between $a$ and $b$.
* If $f(x) \ge g(x)$ over $[a, b]$, then $\int_a^b f(x) \dee x \ge \int_a^b g(x) \dee x$. This works for any type of inequality or equality.
* If $u \le f(x) \le v$ over $[a, b]$, $\int_a^b u \dee x \le \int_a^b f(x) \dee x \le \int_a^b v \dee x$, or $u(b - a) \dee x \le \int_a^b f(x) \dee x \le v(b - a)$ - the area under a function can be bounded.

Mean Value Theorem for Integrals
--------------------------------

If $f$ is continuous over $[a, b]$, then $\exists c \in (a, b), \int_a^b f(x) \dee x = f(c)(b - a)$.

In other words, if a function is continuous, there must exist a function value equal to the mean value of the function.

$f(c)(b - a)$ is the area under $f(x) = c$.

Note that $\frac{1}{b - a} \int_a^b f(x) \dee x$ is the **average value of the function** over $[a, b]$.

Proof:

> Assume $f$ is continuous over $[a, b]$.  
> By EVT, $\exists u, v, u \le f(x) \le v$ over $[a, b]$.  
> So $u(b - a) \le \int_a^b f(x) \dee x \le v(b - a)$.  
> So $u \le \frac{1}{b - a}\int_a^b f(x) \dee x \le v$.  
> By IVT, $\exists c \in (a, b), f(c) = \frac{1}{b - a} \int_a^b f(x) \dee x$.  
> So $\exists c \in (a, b), \int_a^b f(x) \dee x = f(c)(b - a)$.  

Integral and Differential Calculus
----------------------------------

Consider $f(t) = 2t + 1$. If we plot this and geometrically find the area under the curve, we find that the area function is $A(t) = t^2 + t + 2$.

Note that $A'(t) = f(t)$. The area under the curve is an antiderivative of the curve.

In effect, the differential "undoes" the effect of the integral. They could be thought of as the inverse operations of each other.

# 25/11/13

The Fundemental Theorem of Calculus
-----------------------------------

### Part 1

If $f$ is continuous over $[a, b]$, then $g(x) = \int_a^x f(t) \dee t$ is continuous over $[a, b]$ and differentiable on $(a, b)$, and $\frac{\dee}{\dee x} g(x) = f(x)$.

In other words, $\frac{\dee}{\dee x} \int_a^x f(t) \dee t = f(x)$.

Differentiation and integration are inverse operations.

So $\frac{\dee}{\dee x} \int_a^x f(t) \dee t = f(x)$

$g(x)$ is an antiderivative of $f(x)$ - the "area under the curve from $a$ to $x$ function".

Any continuous function has an antiderivative.

Proof:

> Let $g(x) = \int_a^x f(t) \dee t$ and $g(x + h) = \int_a^{x + h} f(t) \dee t$.  
> So $g(x + h) - g(x) = \int_a^{x + h} f(t) \dee t - \int_a^x f(t) \dee t = \int_a^{x + h} f(t) \dee t + \int_x^a f(t) \dee t = \int_x^{x + h} f(t) \dee t$.  
> By the MVT, $\exists c \in (x, x + h), \int_x^{x + h} = f(c)(x + h - x) = hf(c) = g(x + h) - g(x)$.  
> Recall that the definition of continuity is that $\lim_{h \to 0} f(x + h) = f(x)$, or $\lim_{h \to 0} (f(x + h) - f(x)) = 0$.  
> We take the limit of both sides to get $\lim_{h \to 0} hf(c) = \lim_{h \to 0} (g(x + h) - g(x))$. Note that we can't evalutate the limit of $hf(c)$ since $f(c)$ could be infinite and make an indeterminate form.  
> So $\lim_{h \to 0} hf(c) = \lim_{h \to 0} (g(x + h) - g(x)) = \lim_{h \to 0} h \cdot \lim_{h \to 0} f(c)$. We know that $c \in (x, x + h)$, so as $h \to 0$, $c = x$.
> So $\lim_{h \to 0} h \cdot \lim_{h \to 0} f(c) = 0 \cdot f(x) = 0$.  
> So the function is continuous.  
> We divide both sides of $hf(c) = g(x + h) - g(x)$ by $h$ to get $f(c) = \frac{g(x + h) - g(x)}{h}$.  
> We take the limit of both sides to get $\lim_{h \to 0} f(c) = \lim_{h \to 0} \frac{g(x + h) - g(x)}{h} = g'(x)$, by the definition of the derivative.  
> So $g'(x) = f(x)$.  

If $f(x) = \int_1^x \frac{1}{t^3} \dee t$, then by Part 1, $f'(x) = \frac{1}{x^3 + 1}$.

If $f(x) = \int_x^0 \sin t^2 \dee t$, then by Part 1, $f(x) = -\int_0^x \sin t^2 \dee t = -\sin x^2$.

Differentiate $f(x) = \int_x^{x^2} t^2 e^t \dee t$:

> Both integral endpoints are functions.  
> We can split it into two integrals $f(x) = \int_x^c t^2 e^t \dee t + \int_c^{x^2} t^2 e^t \dee t$ for some constant $c$.  
> Clearly, $\int_x^c t^2 e^t \dee t = -x^2 e^x$.  
> Let $u = x^2$. Then $\frac{\dee}{\dee x} \int_c^{x^2} t^2 e^t \dee t = \frac{\dee u}{\dee x} \frac{\dee}{\dee u} \int_c^u t^2 e^t \dee t = 2x(u^2 e^u) = 2x(x^4 e^{x^2}) = 2x^5 e^{x^2}$.  
> So $f'(x) = -x^2 e^x + 2x^5 e^{x^2}$.  

In general, to differentiate an integral with endpoints that are functions, we split it at a constant so that there is only one endpoint that is a function, then substitute temporary variables for the endpoints. We then use the chain rule to differentiate with respect to $x$ by going through the temporary variables.

### Part 2

If $f$ is continuous over $[a, b]$ and $F$ is any antiderivative of $f$, then $\int_a^b f(x) \dee x = F(b) - F(a)$.

This allows us to easily evaluate integrals simply by finding antiderivatives. This is much simpler than using the Riemann sum or whatever.

Proof:

> Let $g(x) = \int_a^x f(x) \dee t$. So $g'(x) = f(x)$, by Part 1, and $g$ is an antiderivative.  
> Let $F$ be another antiderivative. Then $\frac{\dee}{\dee x} (F(x) - g(x)) = F'(x) - g'(x) = f(x) - f(x) = 0$.  
> By the Constant Function Theorem, $F(x) = g(x) + c$.  
> Since $g(a) = 0$, $F(x) - F(a) = g(x) + c - g(a) - c = g(x) = \int_a^x f(t) \dee t$.  

Note that $\evalat{f(x)}_a^b$ means "evaluated at" and $\evalat{f(x)}_a^b = f(b) - f(a)$.

Evaluate $\int_0^1 x^2 \dee x$:

> Let $F'(x) = x^2$. One possible $F(x)$ is $\frac{1}{3} x^3$.  
> By Part 2, $\int_0^1 x^2 \dee x = F(1) - F(0) = \frac{1}{3}$.  

Evaluate $\int_0^\pi \sin x \dee x$:

> Let $F'(x) = \sin x$. One possible $F(x)$ is $-\cos x$.  
> By Part 2, $\int_0^\pi \sin x \dee x = F(\pi) - F(0) = 2$.  

# 27/11/13

The integral geometricallly represents the area under the curve and above the x-axis. If it is negative, it represents the area bove the curve and below the x-axis.

If $f$ is an odd function, then $\int_{-a}^a f(x) \dee x = 0$.

If $f$ is an even function, then $\int_{-a}^a f(x) \dee x = 2\int_0^a f(x) \dee x$.

So $\int_{-\frac{\pi}{4}}^{\frac{\pi}{4}} \tan x^2 \dee x = 0$.

Evaluate $\int_{-1}^3 x \abs{x} \dee x$:

> Clearly, $\abs{x}$ is discontinuous at $x = 0$.  
> Instead, we can evaluate $\int_{-1}^3 x \abs{x} \dee x = \int_{-1}^0 -x^2 \dee x + \int_0^3 x^2 \dee x$.  
> So $\int_{-1}^3 x \abs{x} \dee x = \evalat{-\frac{x^3}{3}}_{-1}^0 + \evalat{\frac{x^3}{3}}_0^3 = \frac{-1}{3} + \frac{27}{3} = \frac{26}{3}$.  
> Alternatively, we can take advantage of the fact that $x \abs{x}$ is an odd function and that $\int_{-1}^3 x \abs{x} \dee x = \int_{-1}^1 x \abs{x} \dee x + \int_1^3 x \abs{x} \dee x$.  

Evaluate $\int_0^\pi \sin^2 x \dee x$:

> It is difficult to find the antiderivative if the chain rule is used in differentiating it. Instead, we use the half-angle formula: $\sin^2 x = \frac{1}{2} (1 - \cos 2x)$.  
> Now we can find the antiderivative: $\frac{1}{2}\left(x - \frac{1}{2}\sin 2x\right)$.  
> So $\int_0^\pi \sin^2 x \dee x = \frac{1}{2}\left(\pi - \frac{1}{2}\sin 2\pi\right) - \frac{1}{2}\left(0 - \frac{1}{2}\sin 2 \cdot 0\right)$

Evaluate $\int_1^4 \frac{x + 1}{\sqrt{x}} \dee x$:

> $$
\begin{align}
\int_1^4 \frac{x + 1}{\sqrt{x}} \dee x &= \int_1^4 \frac{x}{\sqrt{x}} \dee x + \int_1^4 \frac{1}{\sqrt{x}} \dee x \\
&= \int_1^4 \sqrt{x} \dee x + \int_1^4 \frac{1}{\sqrt{x}} \dee x \\
&= \evalat{\frac{2}{3}x^\frac{3}{2}}_1^4 + \evalat{2\sqrt{x}}_1^4 \\
&= \frac{2}{3}4^\frac{3}{2} - \frac{2}{3} + 2\sqrt{4} - 2 \\
&= \frac{20}{3} \\
\end{align}
$$

Evaluate $\int_0^{\frac{1}{\sqrt{2}}} \left(\frac{4}{\sqrt{1 - x^2}} + \frac{1}{1 - x}\right) \dee x$:

> $$
\begin{align}
\int_0^{\frac{1}{\sqrt{2}}} \left(\frac{4}{\sqrt{1 - x^2}} + \frac{1}{1 - x}\right) \dee x &= \int_0^{\frac{1}{\sqrt{2}}} \frac{4}{\sqrt{1 - x^2}} \dee x + \int_0^{\frac{1}{\sqrt{2}}} \frac{1}{1 - x} \dee x \\
&= \evalat{4 \arcsin x}_0^{\frac{1}{\sqrt{2}}} + \evalat{-\ln(1 - x)}_0^{\frac{1}{\sqrt{2}}} \\
&= \pi - 0 + -\ln \frac{\sqrt{2} - 1}{\sqrt{2}} - 0 = \pi + \ln \frac{\sqrt{2}}{\sqrt{2} - 1} \\
&= \pi + \ln \frac{2 + \sqrt{2}} \\
\end{align}
$$

Indefinite Integrals
--------------------

The **indefinite integral** of $f$ is $\int f \dee x$. It is written with no integration limits.

It is the **collection of all possible antiderivatives** of $f(x)$.

$\int_a^b f(x) \dee x$ is a number, while $\int f(x) \dee x$ is a function.

* $\int x^n \dee x = \frac{x^{n + 1}}{n + 1} + c, n \ne -1$
* $\int \frac{1}{x} = \ln \abs{x} + c$
* other antiderivative rules...

### Method of substitution

Based on the integrated form of the chain rule.

> Recall that $\frac{\dee}{\dee x} f(g(x) = \frac{\dee}{\dee g} f(g) \cdot \frac{\dee}{\dee x} g(x)$.  
> So $\int \frac{\dee}{\dee x} f(g(x) \dee x = \int \frac{\dee}{\dee g} f(g) \cdot \frac{\dee}{\dee x} g(x) \dee x$.  
> So $f(g(x)) + c = \int \frac{\dee}{\dee g} f(g) \cdot \frac{\dee}{\dee x} g(x) \dee x$.  

> Let $u = g(x)$. So $\frac{\dee u}{\dee x} = g'(x)$. Then $\dee u = g'(x) \dee x$.  
> So $\int \frac{\dee}{\dee g} f(g(x)) \cdot \frac{\dee}{\dee x} g(x) \dee x = \int \frac{\dee}{\dee u} f(u) \dee u = f(u) + c = f(g(x)) + c$.  

The basic rule is $\int \frac{\dee}{\dee g} f(g(x)) \cdot \frac{\dee}{\dee x} g(x) \dee x = f(g(x)) + c$.

Find $\int \frac{x}{x^2 + 1} \dee x$:

> Let $u = x^2 + 1$.  
> So $\dee u = 2x \dee x$ and $\int \frac{x}{x^2 + 1} \dee x = \int \frac{x \dee x}{x^2 + 1} = \int \frac{1}{x^2 + 1} \dee 2x = \int \frac{1}{u} \dee u = \frac{1}{2} \ln \abs{u} + c = \frac{\ln \abs{x^2 + 1}}{2} + c$.  

# 29/11/13

The method of substitution is useful when we can use the derivative of one part of the function to cancel out another part.

The method of substitution doesn't work everywhere. There are a few forms that it is most often used on:

* $\int f(x^n) \cdot x^{n - 1} \dee x$.
* $\int f(e^x) e^x \dee x$.
* $\int \frac{f(\ln x)}{x} \dee x$.
* $\int \frac{f(\arctan x)}{1 + x^2} \dee x$.
* $\int \frac{f(\arcsin x)}{\sqrt{1 - x^2}}$.
* $\int f(\sin x) \cos x \dee x$.

The method is usually useful if $g'(x)$ is a factor in the integrand.

Evaluate $\int \tan x \dee x$:

> Clearly, $\int \tan x \dee x = \int \frac{\sin x}{\cos x} \dee x$.  
> We have two choices for substitution here, $\sin x$ and $\cos x$.  
> Let $u = \cos x$. Then $\dee u = -\sin x \dee x$  
> Then $\int \tan x \dee x = -\int \frac{1}{u} \dee u = -\ln \abs{u} + c = -\ln \abs{\cos x} + c = \ln \abs{\sec x} + c$.  

Evaluate $\int e^x \sqrt{1 + e^x} \dee x$:

> Let $u = 1 + e^x$ (we also include the constant to avoid dealing with it later).  
> Then $\dee x = \dee u \frac{1}{e^x}$.  
> So $\int e^x \sqrt{1 + e^x} \dee x = \int e^x \sqrt{u} \dee u \frac{1}{e^x} = \int \sqrt{u} \dee u = \frac{2}{3}u^\frac{3}{2} = \frac{2}{3}(1 + e^x)^\frac{3}{2} + c$.  

Evaluate $\int x^2 \sqrt{1 + x^3} \dee x$:

> Let $u = 1 + x^3$.  
> Then $\dee x = \dee u \frac{1}{3x^2}$.  
> So $\int x^2 \sqrt{1 + x^3} \dee x = \int x^2 \sqrt{u} \dee u \frac{1}{3x^2} = \frac{1}{3} \int \sqrt{u} \dee u = \frac{1}{3} \frac{2}{3}u^\frac{3}{2} = \frac{2}{9}(1 + x^3)^\frac{3}{2} + c$.  

Evaluate $\int x^3 \sqrt{1 + x^2} \dee x$:

> Let $u = 1 + x^2$.  
> Then $\dee x = \dee u \frac{1}{2x}$.  
> So $\int x^3 \sqrt{1 + x^2} \dee x = \int x^3 \sqrt{u} \dee u \frac{1}{2x} = \int x^2 \sqrt{u} \dee u \frac{1}{2}$.  
> We still have an $x^2$ factor. But that's OK, because clearly, $x^2 = u - 1$.  
> So $\int x^3 \sqrt{1 + x^2} \dee x = \frac{1}{2} \int (u - 1) \sqrt{u} \dee u = \frac{1}{2} \int u^\frac{3}{2} - \sqrt{u} \dee u = \frac{1}{2} \left(\frac{2}{5}u^\frac{5}{2} - \frac{2}{3}u^\frac{3}{2} + c\right) = \frac{1}{5}u^\frac{5}{2} - \frac{1}{3}u^\frac{3}{2} + c$.  

We can check our answer by integrating it again. It should result in the integrand if it is correct.

Exercises:

* $\int \sqrt[3]{3 + x^5} x^4 \dee x$
* $\int \frac{e^x}{1 + e^{2x}} \dee x$
* $\int \frac{\sin(2 \ln x)}{x} \dee x$
* $\int \frac{e^{\arctan x}}{1 + x^2} \dee x$

### Definite Integrals

When using definite integrals, we need to be aware of the limits of integration.

Consider $\int_1^2 xe^{-x^2} \dee x$:

> Let $u = -x^2$. Then $\dee u \frac{-1}{2x} = \dee x$.  
> So $\int_{u(1)}^{u(2)} xe^{-x^2} \dee x = \int_{-1}^{-4} \frac{-1}{2}e^u \dee u = -\frac{1}{2}\evalat{e^u}_{-1}^{-4} = -\frac{1}{2}(e^{-4} - e^{-1})$.  

Note that `u` was applied to the limits of integration when we switched the variables, and that we left the equation with $u$ rather than replacing it with $-x^2$.

Alternatively, we could avoid changing the limits of integration by substituting back again:

> Let $u = -x^2$. Then $\dee u \frac{-1}{2x} = \dee x$.  
> So $\int_{u(1)}^{u(2)} xe^{-x^2} \dee x = \int_{-1}^{-4} \frac{-1}{2}e^u \dee u = -\frac{1}{2}\evalat{e^u}_{-1}^{-4} = -\frac{1}{2}\evalat{e^{-x^2}}_1^2$.  

Notice that this gives the same result.

Areas Between Curves
--------------------

Given functions $f(x)$ and $g(x)$, with $g(x) \ge f(x)$ over $[a, b]$, the area between the curves is $\int_a^b g(x) - f(x) \dee x$.

Find the area of the region bounded by $x^2$ and $\sqrt{x}$:

> ;wip: integrate from 0 to 1 and then do \int_0^1 \sqrt{x} - x^2 \dee x

# 2/12/13

If the curves cross over ($g(x) \ge f(x)$ or $f(x) \ge g(x)$ does not hold over the entire interval), we can still find the area between the two curves. This can be done by finding the points of intersection.

The points of intersection divide the interval into multiple subintervals such that $g(x) \ge f(x)$ or $f(x) \ge g(x)$ over each subinterval. The area between curves is then the sum of the areas of the subintervals.

Find the area between $y = \sin x$ and $y = \cos x$ over $[0, \frac{\pi}{2}]$:

> The points of intersection are $(0, \frac{\pi}{4})$.  
> The area between curves is the sum of the area between the curves over $[0, \frac{\pi}{4}]$ and the area between the curves over $[\frac{\pi}{4}, \frac{\pi}{2}]$.  
> So the area is $\int_0^\frac{\pi}{4} \cos x - \sin x \dee x + \int_\frac{\pi}{4}^\frac{\pi}{2} \sin x - \cos x \dee x = \evalat{\sin x + \cos x}_0^\frac{\pi}{4} + \evalat{-\sin x - \cos x}_\frac{\pi}{4}^\frac{\pi}{2} = \sqrt{2} - 1 - 1 + \sqrt{2} = 2\sqrt{2} - 2$.  

Find the area of the region in the first quadrant bounded by the $y = \frac{1}{4}x^2$ and $y = x - 1$:

> We find points of intersection: $\frac{1}{4}x^2 = x - 1 \equiv x^2 - 4x + 4 = 0 \equiv (x - 2)^2$, so $x = 2$ is the point of intersection.  
> Note that the area is not $\int_0^2 \left(\frac{1}{4}x^2 - (x - 1)\right) \dee x$, because that would include the area in quadrant 4.  
> So we split the interval into two intervals $[0, 1]$ and $[1, 2]$, since $x = 1$ is where $y = x - 1$ passes below the x-axis.  
> In the left, we find the area between $y = \frac{1}{4}x^2$ and the x-axis (since $y = x - 1$ is outside of the first quadrant here).  
> On the right, we find the area between $y = \frac{1}{4}x^2$ and $y = x - 1$.  
> So the area is $\int_0^1 \frac{1}{4}x^2 \dee x + \int_1^2 (\frac{1}{4}x^2 - (x - 1)) \dee x = \evalat{\frac{1}{12}x^3}_0^1 + \evalat{\frac{1}{12}x^3 - \frac{1}{2}x^2 + x}_1^2 = \frac{1}{6}$.  

Exam stuff:

* Wednesday Dec. 11, 12:30pm to 3:00pm in the PAC
* Office hours will be posted on LEARN today.
* Covers everything except Newton's Method. See the course outline for a listing of topics.
* Basically everything from textbook chapters 1-5 plus or minus a few things.
* About 20% pre-midterm content, and 80% post-midterm content.
* Know the definitions and theorems.
    * Pre-midterm:
        * Limits
        * Continuity
        * Differentiability
        * Intermediate value theorem
        * Differentiability implies continuity
        * Epsilon-delta proofs
    * Post-midterm:
        * Definite integrals
        * Indefinite integrals
        * Mean value theorem
        * Fundemental theorem of calculus
* Other things to know post-midterm:
    * Differentiation rules, implicit and logarithmic differentiation
    * Linear approximation, related rates, optimization (just a little bit)
    * Curve sketching
    * l'Hopital's rule
    * Integral definition (Riemann sum), integral properties, substitution method
    * Areas between curves