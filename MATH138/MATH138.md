MATH138
=======

Calculus II

    Instructor: Matthew Scott
    Section 002
    Email: mscott@uwaterloo.ca
    Office: MC 6114
    Office hours: Mondays 11:30am-12:15pm, 3:00pm-3:30pm
    Tutorial: Wednesdays 3:30pm in MC 2035, starting Jan. 15

$$
\newcommand{\set}[1]{\left\{ #1 \right\}}
\newcommand{\abs}[1]{\left\lvert #1 \right\rvert}
\newcommand{\floor}[1]{\left\lfloor #1 \right\rfloor}
\newcommand{\mb}[1]{\mathbb{#1}}
\newcommand{\rem}{\operatorname{rem}}
\newcommand{\sign}{\operatorname{sign}}
\newcommand{\imag}{\boldsymbol{i}}
\newcommand{\dee}{\mathop{}\!\mathrm{d}}
\newcommand{\lH}{\overset{\text{l'H}}{=}}
\newcommand{\evalat}[1]{\left.\left(#1\right)\right|}
\newcommand{\sech}{\operatorname{sech}}
\newcommand{\spn}{\operatorname{Span}}
\newcommand{\proj}{\operatorname{proj}}
\newcommand{\prp}{\operatorname{perp}}
\newcommand{\refl}{\operatorname{refl}}
\newcommand{\magn}[1]{\left\lVert #1 \right\rVert}
\newcommand{\rank}{\operatorname{rank}}
\newcommand{\sys}[2]{\left[ #1 \mid #2\hskip2pt \right]}
\newcommand{\range}{\operatorname{Range}}
$$

# 6/1/14

Assignments are due every Friday at 3:30pm. They are posted on LEARN.

My own drop box is box 5, slot 12

Midterm is Feb. 24, 7-9pm.

Lecture notes are on the [course website](http://www.math.uwaterloo.ca/~mscott/euler.htm), posted every week. The password to the website is "euler". ;wip: get these every week

Course outline:

* Techniques of integration and applications.
* Extensions of single variable calculus - differential equations, vector calculus, etc.
* Taylor polynomials

Sequence: $1, 2, 3, \ldots$
Series: $1 + 2 + 3 + \ldots$

Taylor polynomials are series of functions, which allow us to represent almost any function as a polynomial. This is the most powerful technique in applied mathematics - science and mathematics.

By the way, $\dee x$ is called an **infinitesmal**.

Techniques of Integration
-------------------------

Techniques of integration rewrite functions in forms that we can't integrate into forms that we can integrate, or simpler forms that we might be able to apply other techniques on.

### Method of substitution

The method of substitution is based on choosing a subexpression $u$, and then integrating with respect to it. If $u$ is chosen carefully, it is occasionally possible to simplify the integral.

This method works best when a **function and its derivative appear in the integrand**.

This works with expressions of the form $\int f(x) \frac{\dee}{\dee x} f(x) \dee x$.

Let $u = f(x)$. Since $\frac{\dee u}{\dee x} = \frac{\dee u}{\dee x}$, $\dee u = \frac{\dee u}{\dee x} \dee x$ (multiply both sides by $\dee x$). This is possible because of infinismals, which work in wierd and wonderful ways. So $\dee x = \frac{1}{\frac{\dee u}{\dee x}} \dee u$.

So $\int f(x) \frac{\dee}{\dee x} f(x) \dee x = \int u \frac{\dee u}{\dee x} \dee x = \int u \frac{\dee u}{\dee x} \frac{1}{\frac{\dee u}{\dee x}} \dee u = \int u \dee u = \frac{u^2}{2} + c = \frac{f(x)^2}{2} + c$.

Even if we can't simplify it far enough to get an antiderivative, integration by substitution can still considerably simplify an integrand into something more manageable.

What about definite integrals? We need to be aware of the limits of integration when doing the variable switch:

We are given $\int_a^b f(x) \frac{\dee}{\dee x} f(x) \dee x$.

Let $u = f(x)$. We know that $\dee x = \frac{1}{\frac{\dee u}{\dee x}} \dee u$.

So $\int_a^b f(x) \frac{\dee}{\dee x} f(x) \dee x = \int_{u(a)}^{u(b)} u \frac{\dee u}{\dee x} \dee x = \int_{u(a)}^{u(b)} u \frac{\dee u}{\dee x} \frac{1}{\frac{\dee u}{\dee x}} \dee u = \int_{u(a)}^{u(b)} u \dee u = \evalat{\frac{u^2}{2}}_{u(a)}^{u(b)} + c = \evalat{\frac{f(x)^2}{2}}_a^b + c$.

Basically, if we can find a factor of the integrand $u$ such that its derivative also appears in the integrand, the method of substitution can get rid of the derivative.

Evaluate $\int \cos x \sin x \dee x$

> Let $u = \sin x$. So $\dee u = \cos x \dee x$.  
> So $\int \cos x \sin x \dee x = \int \sin x \dee u = -\int u \dee u$.  
> Clearly, $\int u \dee u = \frac{u^2}{2} + c = \frac{\sin^2 x}{2} + c$.  

Substitution is useful when we can figure out what a useful substitution would be.

One clue that the substitution is a good choice is if the derivative of the substitution appears in the numerator of the function.

How do we prove that $\int_1^x \frac{1}{t} = \ln x$? How do we know that both have the same properties:

* Property 1 - multiplication rule: $\ln ab = \ln a + \ln b$
* Property 2 - power rule: $\ln a^r = r \ln a$)

We want to prove property 1:

> Select some $a$ and $b$.  
> We want to prove that $\int_1^{ab} \frac{1}{t} \dee t = \int_1^a \frac{1}{t} \dee t + \int_1^b \frac{1}{t} \dee t$.  
> By linearity of integrals, $\int_1^{ab} \frac{1}{t} \dee t = \int_1^a \frac{1}{t} \dee t + \int_a^{ab} \frac{1}{t} \dee t$.  
> Let $u = \frac{t}{a}$, so $t = ua$. Then $\dee t = \frac{\dee t}{\dee u} \dee u = a \dee u$.  
> So $\int_a^{ab} \frac{1}{t} \dee t = \int_\frac{a}{a}^\frac{ab}{a} \frac{1}{ua} a \dee u = \int_1^b \frac{1}{u} \dee u$.  
> So $\int_1^{ab} \frac{1}{t} \dee t = \int_1^a \frac{1}{t} \dee t + \int_a^{ab} \frac{1}{t} \dee t = \int_1^a \frac{1}{t} \dee t + \int_1^b \frac{1}{u} \dee u$.  

Dummy variables can be swapped for any value, even functions like $f(t)$.

# 8/1/14

To prove property 2, we need to show that $\int_1^{a^r} \frac{1}{u} \dee u = r \int_1^a \frac{1}{t} \dee t$. To do this, we find a substitution that results in the desired limits of integration.

To prove property 2:

> Select some $u$.  
> We want to prove that $\int_1^{a^r} \frac{1}{t} \dee t = r \int_1^a \frac{1}{t} \dee t$.  
> Let $u = t^\frac{1}{r}$, so $t = u^r$. Then $\dee t = \frac{\dee t}{\dee u} \dee u = \frac{\dee}{\dee u} u^r \dee u = ru^{r - 1} \dee u$.  
> So $\int_1^{a^r} \frac{1}{t} \dee t = \int_{1^\frac{1}{r}}^{{a^r}^\frac{1}{r}} \frac{1}{u^r} ru^{r - 1} \dee u = \int_1^a \frac{1}{u} r \dee u = r \int_1^a \frac{1}{u} \dee u$.  

### Differentiating with respect to functions

As an aside, we can actually differentiate things with respect to functions.

The important property is that $\frac{\dee x}{\dee b(x)} = \frac{1}{\frac{\dee b(x)}{\dee x}}$.

Note that $\frac{\dee a(x)}{\dee b(x)} = \frac{\dee a(x)}{\dee x} \frac{\dee x}{\dee b(x)} = \frac{\dee a(x)}{\dee x} \frac{1}{\frac{\dee b(x)}{\dee x}}$.

So $\frac{\dee a(x)}{\dee b(x)} = \frac{\frac{\dee a(x)}{\dee x}}{\frac{\dee b(x)}{\dee x}} = \frac{a'(x)}{b'(x)}$.

### Integration by Parts

We often have integrands that are products. For example, $\int x \sin x \dee x$

It would be nice to be able to differentiate or integrate just one of the factors rather than having to do the whole thing.

Recall the product rule: $\frac{\dee}{\dee x} (a(x) b(x)) = (\frac{\dee}{\dee x} a(x)) b(x) + a(x) \frac{\dee}{\dee x} b(x)$.

Move the terms around: $(\frac{\dee}{\dee x} a(x)) b(x) = \frac{\dee}{\dee x} (a(x) b(x)) - a(x) \frac{\dee}{\dee x} b(x)$.

If we integrate both sides with respect to $x$, we get: $\int (\frac{\dee}{\dee x} a(x)) b(x) = \int \frac{\dee}{\dee x} a(x) b(x) - \int a(x) \frac{\dee}{\dee x} b(x)$.

By FTC2, $\int (\frac{\dee}{\dee x} a(x)) b(x) = a(x) b(x) + c - \int a(x) \frac{\dee}{\dee x} b(x)$.

Since there would also be a $c$ term from the second integral, we don't need to write it. So $\int (\frac{\dee}{\dee x} a(x)) b(x) \dee x = a(x) b(x) - \int a(x) \frac{\dee}{\dee x} b(x) \dee x$.

This is the **integration by parts rule**.

Using the same idea, we find that $\int_a^b (\frac{\dee}{\dee x} a(x)) b(x) = \evalat{a(x) b(x)}_{x = a}^{x = b} - \int_a^b a(x) \frac{\dee}{\dee x} b(x)$.

When we use the rule, we want to identify two parts of the product such that one of the parts (b) is the factor that becomes **simpler when differentiated**, and the other part (a) is chosen as the **integral of the factor**.

Simplify $\int x \sin x \dee x$:

> $x$ is much simpler when differentiated. Let $b(x) = x$.  
> $\sin x$ is integrable. Let $a(x) = \int \sin x = -\cos x$.  
> So $\int x \sin x = \int x \frac{\dee}{\dee x} (-\cos x) = -x \cos x - \int (-\cos x) 1 \dee x$, by integration by parts.  
> So $-x \cos x - \int (-\cos x) 1 \dee x = -x \cos x + \sin x + c$.  

We can check the answer by differentiating: $\frac{\dee}{\dee x} (-x \cos x + \sin x + c) = x \sin x$.

When we use integration by parts, we differentiate one factor, and integrate the other. Then, we can apply the integration by parts formula and obtain a possibly simpler version.

Simplify $\int_0^1 x e^{-x} \dee x$:

> $$
\begin{align}
\int_0^1 x e^{-x} \dee x &= \int_0^1 x \frac{\dee}{\dee x} (-e^{-x}) \dee x \\
&= \evalat{x (-e^{-x})}_0^1 - \int_0^1 \left(\frac{\dee}{\dee x} x\right) (-e^{-x}) \dee x \\
&= \evalat{x (-e^{-x})}_0^1 + \int_0^1 e^{-x} \dee x \\
&= -\frac{2}{e} \\
\end{align}
$$

Simplify $\int_0^1 x^n (\ln x)^n \dee x$:

> ;wip

We often write the integration by parts formula in different forms: $\int a \dee b = uv - \int v \dee u$, or $\int f'(x) g(x) \dee x = f(x) g(x) - \int f(x) g'(x) \dee x$.

An interesting trick is that we can use integration by parts to integrate anything, since everything is a product of itself and 1.

For example, consider $\int \arcsin x \dee x$:

> Clearly, $\int 1 \cdot \arcsin x \dee x = \int (\frac{\dee}{\dee x} x) \arcsin x \dee x$.  
> Using integration by parts, with $a(x) = x, b(x) = \arcsin x$, $\int (\frac{\dee}{\dee x} x) \arcsin x \dee x = x \arcsin x - \int \frac{x}{\sqrt{1 - x^2}} \dee x$.  
> We can now use integration by substitution with $u = 1 - x^2$ to simplify $\int \frac{x}{\sqrt{1 - x^2}} \dee x$.  
> Clearly, $\dee x = -\frac{1}{2x} \dee x$ and $\int \frac{1}{\sqrt{1 - x^2}} \dee x = -\frac{1}{2} \int \frac{1}{\sqrt{u}} \dee u = -\frac{1}{2} \int u^{-\frac{1}{2}} \dee u = -\frac{1}{2} 2 \sqrt{u} + c = -\sqrt{1 - x^2} + c$.  
> So $\int \arcsin x \dee x = x \arcsin x - \int \frac{x}{\sqrt{1 - x^2}} \dee x = x \arcsin x + \sqrt{1 - x^2} + c$.  

Simplify $\int \arccos x \dee x$:

> Using integration by parts, with $a(x) = x, b(x) = \arccos x$, $\int (\frac{\dee}{\dee x} x) \arccos x \dee x = x \arccos x - \int \frac{x}{\sqrt{1 - x^2}} \dee x$.  
> From the previous question, we know that $\int \frac{x}{\sqrt{1 - x^2}} \dee x = -\sqrt{1 - x^2} + c$.  
> So $\int (\frac{\dee}{\dee x} x) \arccos x \dee x = x \arccos x - \int \frac{x}{\sqrt{1 - x^2}} \dee x = x \arccos x + \sqrt{1 - x^2} + c$.  

Simplify $\int \ln x \dee x$:

> Using integration by parts, with $a(x) = x, b(x) = \arccos x$. $\int (\frac{\dee}{\dee x} x) \ln x \dee x = x \ln x - \int \frac{x}{x} \dee x = x \ln x - x$.  

# 10/1/14

The integration by parts rule is also written as $\int v \dee u = uv - \int u \dee v$:

> Clearly, $\dee a = \frac{\dee a}{\dee x} \dee x$ and $\dee b = \frac{\dee b}{\dee x} \dee x$.  
> We know that $\int (\frac{\dee}{\dee x} a(x)) b(x) \dee x = a(x) b(x) - \int a(x) \frac{\dee}{\dee x} b(x) \dee x$ and so $\int \frac{\dee a}{\dee x} b(x) \dee x = a(x) b(x) - \int a(x) \frac{\dee b}{\dee x} \dee x$.  
> So $\int b(x) \dee a = a(x) b(x) - \int a(x) \dee b$.  

;wip: work on assignment 1 in math138 and 136

We can also write it as $\int f(x) g(x) \dee x = \int f(x) \dee x g(x) - \int \int f(x) \dee x \frac{\dee g}{\dee x} \dee x$.

### Getting Back What We Started With

Consider $I = \int e^{-x} \sin x$:

> We choose $\frac{\dee}{\dee x} e^{-x} = -e^{-x}$ and $\int \sin x \dee x = -\cos x$.  
> So $I = \int e^{-x} \frac{\dee}{\dee x} (-\cos x) \dee x = e^{-x} (-\cos x) - \int e^{-x} \cos x$.  
> We choose $\frac{\dee}{\dee x} (-e^{-x}) = e^{-x}$ and $\int \cos x \dee x = \sin x$.  
> Clearly, $\int e^{-x} \cos x = \int e^{-x} \frac{\dee}{\dee x} \sin x = e^{-x} \sin x - \int (-e^{-x}) \sin x = e^{-x} \sin x + I$.  
> So $I = -e^{-x} \cos x - \int e^{-x} \cos x = -e^{-x} \cos x - e^{-x} \sin x - I$.  
> So $2I = -e^{-x} (\cos x + \sin x)$ and $I = -\frac{1}{2}e^{-x} (\cos x + \sin x)$.  

Basically, we used integration by parts to rewrite the expression, then used integration by parts again to simplify the remaining integral. In doing so we obtained a result that contained the original expression, which we substituted and solved algebraically.

This technique is only really useful for problems of the form $\int e^{ax} \sin bx \dee x$ or $\int e^{ax} \cos bx \dee x$.

Simplify $\int_0^1 (-\ln x)^n \dee x, n \in \mb{N}$:

> We will try it for the first few values of $n$.  
> For $n = 1$, $\int_0^1 (-\ln x)^n \dee x = -\int_0^1 1 \ln x \dee x = -\int_0^1 \ln x \frac{\dee}{\dee x} x = -\evalat{x \ln x}_0^1 + \int_0^1 x \frac{1}{x} = -1 \ln 1 + 0 \ln 0 + 1$ (indeterminate form $0 \cdot -\infty$).  
> This is a thing known as an improper integral (covered later in the course).  
> We can solve it because what we really want is $\lim_{x \to 0} x \ln x = \lim_{x \to 0} \frac{\ln x}{\frac{1}{x}} \lH \lim_{x \to 0} \frac{\frac{1}{x}}{-\frac{1}{x^2}} = \lim_{x \to 0} (-x) = 0$ rather than the value $0 \ln 0$.  
> So $-\int_0^1 \ln x \dee x = -1 \ln 1 + 0 + 1 = 1$.  
> If we repeat this for $n = 2, 3, \ldots$, we find that $\int_0^1 (-\ln x)^n \dee x = n!, n \in \mb{N}$, yet it also works for fractional values of $n$ - this is the generalized factorial over positive real numbers!  
;wip: use induction

# 13/1/14

Trigonometric Substitution
--------------------------

This is integration by substitution with the substitution using trignonometric functions.

We use trigonometric functions in our substitutions and use trigonometric identities to simplify the integrand.

We will need to know:

* Pythagorean theorem: $\cos^2 \theta + \sin^2 \theta = 1$
* Half angle cosine formula: $\cos^2 \theta = \frac{1}{2}(1 + \cos 2\theta)$
* Half angle sine formula: $\sin^2 \theta = \frac{1}{2}(1 - \cos 2\theta)$
* Pythagorean theorem divided by $\cos^2 \theta$: $1 + \tan^2 \theta = \sec^2 \theta$

We usually need this method when we have a square root of a quadratic expression.

Common substitutions:

* Use $1 - \sin^2 = \cos^2 \theta$ to turn $\sqrt{1 - x^2}$ into $\cos \theta$ via $x = \sin \theta$.
* Use $1 + \tan^2 \theta = \sec^2 \theta$ to turn $\sqrt{1 + x^2}$ into $\sec \theta$ via $x = \tan \theta$.
* Use $\sec^2 \theta - 1 = \tan^2 \theta$ to turn $\sqrt{x^2 - 1}$ into $\tan \theta$ via $x = \sec \theta$.

Using this technique, we can replace $\sqrt{\pm a^2 \pm x^2}$ with trigonometric functions, and then use trigonometric identities on them. Afterwards, we might simplify by changing the trigonometric functions back into square roots.

Derivatives:

* $\cos' \theta = -\sin \theta$ ($-\frac{\pi}{2} \le \theta < \frac{\pi}{2}$)
* $\sin' \theta = \cos \theta$ ($-\frac{\pi}{2} \le \theta < \frac{\pi}{2}$)
* $\tan' \theta = \sec^2 x$ ($0 \le \theta < \frac{\pi}{2}$)

Consider $\int \frac{1}{x^2 \sqrt{x^2 + 4}} \dee x$:

> We can draw a triangle with hypotenuse $\sqrt{x^2 + 4}$, opposite side $x$, and adjacent side $2$ representing this value.  
> Let $\theta$ represent the angle between the adjacent side and the hypotenuse. By the Pythagorean theorem.
> Then $x = 2 \tan \theta$. Then $\dee x = 2 \sec^2 \theta \dee \theta$.  
> Clearly, $\int \frac{1}{x^2 \sqrt{x^2 + 4}} \dee x
= \int \frac{1}{4 \tan^2 \theta \sqrt{4 \tan^2 \theta + 4}} 2 \sec^2 \theta \dee \theta
= \int \frac{1}{4 \tan^2 \theta \sqrt{4 (\tan^2 \theta + 1)}} 2 \sec^2 \theta \dee \theta
= \int \frac{1}{4 \tan^2 \theta 2 \sec \theta} 2 \sec^2 \theta \dee \theta
= \frac{1}{4} \int \frac{\sec \theta}{\tan^2 \theta} \dee \theta
= \frac{1}{4} \int \frac{\\cos \theta}{\sin^2 \theta} \dee \theta$.  
> Let $u = \sin \theta$. Then $\dee x = \frac{1}{\cos \theta} \dee \theta$.  
> So $\frac{1}{4} \int \frac{\cos \theta}{\sin^2 \theta} \dee \theta = \frac{1}{4} \int \frac{\cos \theta}{u^2} \frac{1}{\cos \theta} \dee u = \frac{1}{4} \int \frac{1}{u^2} \dee u = -\frac{1}{4u} + c = -\frac{1}{4 \sin \theta} + c$.  
> Since $x = 2 \tan \theta$, $\theta = \arctan \frac{x}{2}$.  
;wip: rewrite in terms of x using the triangle again
> So $\int \frac{1}{x^2 \sqrt{x^2 + 4}} \dee x = -\frac{1}{4} \frac{\sqrt{4 + x^2}}{x} + c$.  

This works because $\cos \theta$ is always positive or 0 in the domain we are considering.

;wip: improve this day's notes so they actually make sense

# 15/1/14

We do substitution by choosing a $u = f(x)$, then doing $\frac{\dee u}{\dee x} = f'(x)$, so $\dee u = f'(x) \dee x$, so $\dee x = \frac{1}{f'(x)} \dee x$.

Evaluate $\int \frac{x}{\sqrt{3 - 2x - x^2}}$:

              /|
           2 / |
            /  | $u$
           /___|
   $\theta$ $\sqrt{4 - u^2}$

> We want to use trigonometric substitution to solve this, but it isn't in the right form.  
> We want to write $3 - 2x - x^2$ in the form of $a^2 + (x + b)^2$ (completing the square).  
> Clearly, $3 - 2x - x^2 = 3 - (2x + x^2) = 3 - (2x + x^2 + 1) + 1$ (make the term into a perfect square trinomial by adding $\frac{b}{2}$ in a way that cancels out).  
> So $3 - 2x - x^2 = 4 - (x + 1)^2$ and $\int \frac{x}{\sqrt{3 - 2x - x^2}} = \int \frac{x}{\sqrt{4 - (x + 1)^2}}$.  
> Let $u = x + 1$. Then $\dee u = \dee x$.  
> We can draw a triangle with the hypotenuse being 2, the opposite side $u$, and adjacent side $\sqrt{4 - u^2}$.  
> From the triangle, we know that $u = 2\sin \theta$ ($x = 2\sin \theta - 1$) and $\sqrt{4 - u^2} = 2 \cos \theta$, so $\dee u = 2 \cos \theta \dee \theta$.  
> So $\int \frac{x}{\sqrt{4 - (x + 1)^2}} = \int \frac{2\sin \theta - 1}{2 \cos \theta} 2\cos \theta \dee \theta = \int 2\sin \theta - 1 \dee \theta = -2 \cos \theta - \theta + c$.  
> From the triangle, we can tell that $\cos \theta = \frac{\sqrt{4 - u^2}}{2}$, since the cosine is the adjacent over the hypotenuse.  
> Clearly, $\theta = \arcsin \frac{u}{2}$
> So $\int \frac{x}{\sqrt{3 - 2x - x^2}} = -2 \cos \theta - \theta + c = -2 \frac{\sqrt{4 - (x + 1)^2}}{2} - \arcsin \frac{x + 1}{2} + c$.  

Partial Fraction Decomposition
------------------------------

Consider $\frac{1}{2} + \frac{1}{3} = \frac{3 + 2}{2 \cdot 3} = \frac{5}{6}$.

What if we went the opposite way? We go from $\frac{5}{6}$ to $\frac{A}{2} + \frac{B}{3}$ by factoring $6$, and then solve for possible solutions for $3A + 2B = 5$ and pick $A = 1, B = 1$. Now we have $\frac{1}{2} + \frac{1}{3}$, as required.

This can also be done with polynomials. Using this technique, we can integrate **rational functions of polynomials**.

Consider $\int \frac{P(x)}{Q(x)} \dee x$. We can always factor polynomials into a set of linear factors $Q(x) = (x + c_1) \cdot \ldots \cdot (x + c_n)$.

So $\int \frac{P(x)}{Q(x)} \dee x = \int \frac{P(x)}{(x + c_1) \cdot \ldots \cdot (x + c_n)} \dee x = \int \frac{A_1}{x + c_1} \dee x + \ldots + \int \frac{A_n}{x + c_n} \dee x$.

Now we have a bunch of integrals of constants over $x$ with offsets. This is easily integrated into logarithms.

We can solve for $A_1, \ldots, A_n$ by cross multiplying: $\frac{P(x)}{Q(x)} = \frac{A_1 ((x + c_2) \cdot \ldots \cdot (x + c_n)) + \ldots + A_n ((x + c_1) \cdot \ldots \cdot (x + c_{n - 1}))}{(x + c_1) \cdot \ldots \cdot (x + c_n)}$. So $P(x) = A_1 ((x + c_2) \cdot \ldots \cdot (x + c_n)) + \ldots + A_n ((x + c_1) \cdot \ldots \cdot (x + c_{n - 1}))$.

For now, assume that the order of $P$ is less than that of $Q$.

We can find $A$ and $B$ using the **cover up method**: if we choose values of $x = -c_i, 1 \le i \le n$, then there is a 0 factor in every term on the right side except the one containing $A_i$. It is then trivial to solve for $A_i$. Repeat this for each $i$ and we can find $A_1, \ldots, A_n$.

We can also find $A$ and $B$ by setting up a system of equations. Clearly, $x + 1 = A(x + 3) + B(x + 2) = (A + B)x + (3A + 2B)$. Since $(A + B)x = x$ and $(3A + 2B) = 1$, $A + B = 1$ and $3A + 2B = 1$, so we solve for the two linear equations to find $A$ and $B$.

Evaluate $\int \frac{x - 1}{x^2 + 5x + 6} \dee x$:

> Clearly, $\int \frac{x - 1}{x^2 + 5x + 6} \dee x = \int \frac{x - 1}{(x + 2)(x + 3)} \dee x = \int \frac{A}{x + 2} \dee x + \int \frac{B}{x + 3} \dee x$ for some $A$ and $B$.  
> Now we need to find $A$ and $B$. We do this by solving $x + 1 = A(x + 3) + B(x + 2)$.  
> Note that $A$ and $B$ must work for any $x$. We now solve using the cover up method.  
> Choose $x = -3$ (because $A(x + 3) = 0$). Then $-3 + 1 = A(-3 + 3) + B(-3 + 2) = -2 = -B$. Then $B = 2$.  
> Choose $x = -2$ (because $B(x + 2) = 0$). Then $-2 + 1 = A(-2 + 3) + B(-2 + 2) = -1 = B$. Then $A = -1$.  
> Then $\int \frac{x - 1}{x^2 + 5x + 6} \dee x = -\int \frac{1}{x + 2} \dee x + \int \frac{2}{x + 3} \dee x = -\ln(x + 2) + 2\ln(x + 3) + c$.  

# 17/1/14

Note that partial fraction decomposition only works for factorable polynomials.

What if the numerator has a higher or equal degree than the denominator? We can use long division to make it lower again to apply partial fraction decomposition. When we do long division, we get a normal polynomial as the quotient and a rational function with the degree of the numerator lower than that of the denominator.

Evaluate $\int \frac{x^3 + 4x^2 + 2x - 5}{x^2 + 5x + 6} \dee x$:

                                 x - 1
                  ____________________
    x^2 + 5x + 6 | x^3 + 4x^2 + 2x - 5
                   x^3 + 5x^2 + 6x
                   -------------------
                         -x^2 - 4x - 5
                         -x^2 - 5x - 6
                         -------------
                                 x + 1

> Clearly, $\int \frac{x^3 + 4x^2 + 2x - 5}{x^2 + 5x + 6} \dee x = \int (x - 1) \dee x + \int \frac{x + 1}{x^2 + 5x + 6} \dee x = \frac{x^2}{2} - x + 
\int \frac{x + 1}{(x + 2)(x + 3)} \dee x$.  
> ;wip

What if there are repeated factors? We can keep the repeated factors as part of the group to use this technique.

Consider $\int \frac{x + 1}{(x + 2)^2 (x + 3)}$:

> Clearly, $\frac{x + 1}{(x + 2)^2 (x + 3)} = \frac{A}{(x + 2)^2 (x + 3)} + \frac{B}{(x + 2) (x + 3)} + \frac{C}{(x + 2)^2}$ ;wip

For each factor $(ax + b)^n$, include $n$ terms in the form $\frac{A_1}{(ax + b)} + \ldots + \frac{A_n}{(ax + b)^n}$.

What if the denominator is not factorable into linear factors of real numbers (factors contain irreducable quadratics)? For example, $\frac{x}{x^2 + x + 1}$.

We want to avoid imaginary numbers when doing this. Therefore, each irreducable quadratic of the form $x^2 + x + 1$, we get a term of the form $\frac{A + Bx}{ax^2 + bx + c}$.

Consider $\int \frac{5x + 1}{(x^2 + x + 1)(x - 2)} \dee x$:

> Clearly, $\int \frac{5x + 1}{(x^2 + x + 1)(x - 2)} \dee x = \int \frac{A + Bx}{x^2 + x + 1} \dee x + \int \frac{C}{x - 2} \dee x$.  
> So $\int \frac{5x + 1}{(x^2 + x + 1)(x - 2)} \dee x = \int \frac{\frac{2}{7} - \frac{11}{7}x}{x^2 + x + 1} \dee x + \int \frac{\frac{11}{7}}{x - 2} \dee x$.  
> So $\int \frac{\frac{2}{7} - \frac{11}{7}x}{x^2 + x + 1} \dee x + \int \frac{\frac{11}{7}}{x - 2} \dee x = \int \frac{\frac{2}{7} - \frac{11}{7}x}{x^2 + x + 1} \dee x + \frac{11}{7} \ln (x - 2)$.  
> How do we integrate the first term? We can use a trigonometric substitution to solve this.  
> Clearly, $\frac{\frac{2}{7} - \frac{11}{7}x}{x^2 + x + 1} = \frac{\frac{2}{7} - \frac{11}{7}x}{(x^2 + x + \frac{1}{4}) + 1 - \frac{1}{4}} = \frac{\frac{2}{7} + \frac{11}{7}x}{(x + \frac{1}{2})^2 + \frac{3}{4}}$, by completing the square.  
> Let $u = x + \frac{1}{2}$. Then $\dee x = \dee u$.  
> Clearly, $\int \frac{\frac{2}{7} - \frac{11}{7}x}{x^2 + x + 1} \dee x = \frac{1}{7} \int \frac{2 - 11x}{(x + \frac{1}{2})^2 + \frac{3}{4}} \dee x = \frac{1}{7} \int \frac{-11u + \frac{15}{2}}{u^2 + \frac{3}{4}} \dee x$.  
> Let $u = \frac{\sqrt{3}}{2} \tan \theta$. Then $\frac{1}{7} \int \frac{-11u + \frac{15}{2}}{u^2 + \frac{3}{4}} \dee x
= \frac{1}{7} \int \frac{-11\frac{\sqrt{3}}{2}\tan \theta + \frac{15}{2}}{\frac{3}{4}(\tan^2 \theta + 1)} \dee x
= \frac{1}{7} \int \frac{-11\frac{\sqrt{3}}{2}\tan \theta + \frac{15}{2}}{\frac{3}{4\cos^2 \theta}} \dee x
= \frac{1}{21} \int 4\cos^2 \theta (-11\frac{\sqrt{3}}{2}\tan \theta + \frac{15}{2}) \dee x
= \frac{1}{21} \int 4\cos^2 \theta (-11\frac{\sqrt{3}}{2}\tan \theta) \dee x + \frac{4}{21}\frac{15}{2} \int \cos^2 \theta \dee x
;wip: use substitution with $s = \frac{\sqrt{3}}{2} \tan \theta$

Completing the square: we want the resulting polynomial to have repeated roots. In the quadratic formula, this is when the discriminant $b^2 - 4ac = 0$, so $c = \frac{b^2}{4a}$.

When we have an irreducible quadratic, we always get an $\arctan$ and a $\ln \abs{ax^2 + bx + c}$.

# 20/1/14

The techniques of integration so far can be summarized as follows:

1. Expression in the numerator of the integrand would be simplified by the derivative of a substitution: use integration by subsitution.
2. Integrand is a product, integrand would be simplified by differentiating one and integrating another: use integration by parts.
3. There is a sum of difference of squares ($\pm a^2 \pm x^2$): use trigonometric substitution.
4. Integrand contains a rational function (quotient of polynomials): use partial fraction decomposition.

;wip: do some textbook questions for once

The two other common methods of integration are infinite series expansion and another that uses complex numbers.

Volumes of Solids
-----------------

Recall that a single-variable integral can be geometrically interpreted as the area underneath the curve.

In the Riemann integral, that would be represented as $\int_a^b f(x) \dee x = \lim_{n \to \infty} \sum_{i = 1}^n \Delta x_i f(x_i)$. Here, $\Delta x_i$ is the base, and $f(x_i)$ is the height, and they form a rectangle.

The same idea can be applied to 3D, for the volume under a surface. We want to find the area under $f(x, y)$.

In the Riemann integral, that would be represented as $\iint f(x, y) \dee x \dee y = \lim_{n \to \infty} \sum_{i = 1}^n \sum_{j = 1}^n \Delta x_i \Delta y_i f(x_i, y_i)$. Here, $\Delta x_i \Delta y_i$ is the base, and $f(x_i, y_i)$, and they form a rectangle.

In general, the volume of an arbitrary solid requires a multi-variable/multi-dimensional integral (a calculus III topic). However, there are cases where symmetry allows us to use a single variable integral.

Main axes:

       y
       |
       |
       |_____ x
      /
     /
    z

Find the volume of a square prism with dimensions $b \times b \times h$:

> The area of the base slice stays the same as we go along the z-axis - as we vary $h$, the slice is still $b \times b$.  
> So the volume is $\int_0^h b^2 \dee x = b^2 \int_0^h 1 \dee x = b^2 h$.

The basic idea is that we take the solid, slice the shape along one axis, then integrate the area as a function of the extent along the axis that we sliced along. This works because of the symmetry of some shapes that allows us to avoid considering some dimensions.

$V = \int_a^b A(x) \dee x$, where $V$ is the volume, $A(x)$ is the area of a slice at extent $x$ (though other axes can be used too depending on the problem), and $\dee x$ is the width of the slice.

Find the area of the cone with base radius 1 unit and height 1 pointing along the x-axis:

> This is the same as the line $y = 1 - x$ rotated about the x-axis.  
> The area of any slice of the cone along the x-axis is $A(x) = \pi (1 - x)^2$, because the slice is a circle.  
> The thickness of this slice is $\dee x$, and the cone is defined from $x = 0$ to $x = 1$.  
> So the volume of the cone is $\int_0^1 \pi (1 - x)^2 \dee x = \pi \int_0^1 (1 - 2x + x^2) \dee x = \frac{\pi}{3}$.  

We can generalize this to any function rotated about a line. The resulting solids are called **solids of rotation**.

The reason this works is because the z-axis is basically redundant information that is already expressed in the y-axis.

Find the volume of the solid represented by rotating $f(x)$ about the x-axis:

> The area of each slice at each extent along the x-axis is the area of a circle with the radius $f(x)$.  
> The area function is $A(x) = \pi f(x)^2$.  
> So the volume is $\int_a^b A(x) \dee x = \pi \int_a^b f(x)^2 \dee x$.  

# 22/1/14

;wip: figure out how to find the length of a curve in 2D

The rotation method works whenever we can find the area function for a given slice along a certain axis.

Here, $\Delta V = A(x) \Delta x$, and then we add up all these tiny volumes to get the total volume.

This method is called the **method of disks**, because we are integrating the volume of a lot of small disks along the axis of rotation.

There is another way to approximate the area and have it converge into an exact value. We can estimate the volume of solids of rotation by integrating the volume of a lot of nested cylinders perpendicular to the axis of rotation - this is the **method of shells**.

Consider a hollow cylinder of thickness $\dee x$ with inner radius $x$ and height $h(x)$. If we cut it and unroll it, then it becomes very close to a cuboid of dimensions $2\pi x$ by $h(x)$ by $\dee x$. In other words, we assume the inner circumference is almost the same as the outer circumference, since $\dee x$ is so small.

So the enclosed volume of the cylinder is $2\pi x h(x) \dee x$.

How do we use these shells to find the volume of a solid? If we look at the cross section of our shape, we can approximate the area of this cross section using rectangles that have a fixed width $\dee x$ perpendicular to the axis of rotation, and length $h(x)$ along the axis of rotation.

Then the volume of the solid is the sum of the volume of all the nested cylinders: $\int_a^b 2 \pi x h(x) \dee x$.

Consider a cone extending along the x-axis represented by the equation $y = 1 - x$ from 0 to 1 rotated about the x-axis:

> We want the height of the cylinder at each point along the y-axis, an axis perpendicular to the axis of rotation.  
> The height is $x = 1 - y$. So the volume of the shell at any extent along the radius is $2 \pi y(1 - y) \dee x$.  
> So the volume is $\int_0^1 2 \pi y(1 - y) \dee y$. Note that we only integrate from the axis of rotation to the radius, not the diameter, because the cylinders go around over to the other side.  
> So the volume is $\frac{\pi}{3}$.  

Finding the height of the shell is not always the same as finding the inverse. Consider the bowl-like shape formed by rotating $y = \sqrt{x}$ from 0 to 0 about the y-axis:

> We want the height of the bowl at each point along the x-axis, an axis perpendicular to the axis of rotation.  
> The height is $y = 1 - x^2$, since the height of each cylinder is decreasing as we move outwards.  
> So the volume is $\int_0^1 2 \pi x(1 - x^2) \dee x = \frac{\pi}{2}$.  

Note that this is the same as if we used $x = y^2$ (the inverse of the function). There are two possibilities for the cylinder height: either the inverse of the function, if the shape gets thinner as we move along the axis of rotation, or the maximum height minus the inverse, if the shape gets thicker as we move along the axis of rotation. Here, since the $\sqrt{x}$ shape gets thicker, we used $1 - x^2$.

The method of shells works best when we know the height from the axis perpendicular to the axis of rotation, and the method of disks works when we can find the area of each slice along the axis of rotation.

# 24/1/14

The method of shells and the method of disks both have cases where they work better than the other. The method of disks works best for functions that extend parallel to the axis of rotation, while the method of shells, for functions that extend perpendicular to the axis of rotation.

The method of disks uses the formula $\int_a^b A(x) \dee x$, where $a, b$ are the extents along the axis of rotation.

The method of shells uses the formula $\int_a^b h(x) 2\pi x \dee x$, where $a, b$ are the extents perpendicular to the axis of rotation.

Consider $y = 2x^2 - x^3 = x^2(2 - x)$ from 0 to 2 rotated about the y-axis:

> This solid looks like the top half of a donut.  
> The method of disks is difficult to use here, because we would need disks with holes in them. We will use the method of shells.  
> The height of each of our cylinders is $h(x) = 2x^2 - x^3$.  
> The volume of each shell is $\Delta V = h(x) 2\pi x \dee x = 4\pi x^3 \dee x - 2\pi x^4 \dee x$.  
> So the volume of the solid is $4\pi \int_0^2 x^3 \dee x - 2\pi \int_0^2 x^4 \dee x = 4\pi \evalat{\frac{x^4}{4}}_0^2 - 2\pi \evalat{\frac{x^5}{5}}_0^2 = 4\pi \frac{2^4}{4} - 2\pi \frac{2^5}{5} = \frac{16\pi}{5}$.  

A variation on the method is disks is the **method of washers**. Here, we have disks with holes in them for whatever reason, and our area, rather than simply being the area of a circle, is the area of the circle minus the area of the hole in the middle. Make sure to use $\pi \int (r_o^2 - r_i^2) \dee x$ rather than $\pi \int (r_o - r_i)^2 \dee x$, where $r_o$ is the outer radius and $r_i$ is the inner radius.

For example, what is the volume enclosed by rotating the area between $y = \sqrt{x}$ and $y = x$ about the x-axis? We could use the disk method, except instead of finding the area of a disk, we find the area of a disk with a hole in it, a washer. However, in this case it would be easier to do it with the method of shells.

# 27/1/14

Improper Integrals
------------------

An integral is improper if some part of it goes to $\pm \infty$ - either the integrand or the domain of integration (limits of integration).

The way we deal with this is to take limits of the infinite values instead of using these infinite values.

Improper integrals work when the domain is infinite ($\int_0^\infty f(x) \dee x$), when the integrand is infinite at one of the endpoints ($\int_0^1 \frac{1}{x}$), or when the integrand is infinite within the domain ($\int_{-1}^1 \frac{1}{x} \dee x$)

For example, $\int_a^\infty f(x) \dee x = \lim_{T \to \infty} \int_a^T f(x) \dee x$.

For example, $\int_0^\infty e^{-x} \dee x = \lim_{T \to \infty} \int_0^T e^{-x} \dee x = \lim_{T \to \infty} \evalat{-e^{-x}}_0^T = \lim_{T \to \infty} (-e^{-T}) - (-e^{-0}) = 0 + 1 = 1$.

Prove that the volume obtained by rotating $y = \frac{1}{x}$ about the x-axis for $x \in [1, \infty)$ is finite:

> The volume is $\int_1^\infty \pi \frac{1}{x^2} \dee x = \pi \lim_{T \to \infty} \evalat{-\frac{1}{x}}_1^T = \pi$, found via the method of disks.
> Clearly, the volume is finite.  

Sometimes, the integrand itself will diverge. Consider $\int_0^1 \ln x \dee x$:

> $\ln 0 = -\infty$, and we cannot evaluate the antiderivative at this point.  
> Instead, we write it as $\lim_{\epsilon \to 0} \int_\epsilon^1 \ln x \dee x = \lim_{\epsilon \to 0} \evalat{x \ln x - x}_\epsilon^1 = 0 - 1 - (\lim_{\epsilon \to 0} \epsilon \ln \epsilon - \lim_{\epsilon \to 0} \epsilon) = 0 - 1 - (0 - 0) = -1$.  

Also, the integrand might diverge somewhere within the domain of integration. This is not always immediately obvious and must always be considered when doing integrals.

Consider $\int_{-1}^1 \frac{1}{\sqrt{\abs{x}}} \dee x$:

> There is a vertical asymptote at $x = 0$. This makes it so that we can't directly use the fundemental theorem of calculus to evaluate the integral.  
> We can instead split the integral at the middle, and since it is an even function, we can combine the two integrals: $2\int_0^1 \frac{1}{\sqrt{x}} \dee x$.  
> There is an asymptote, so the integral is an improper one: $2\int_0^1 \frac{1}{\sqrt{x}} \dee x = 2 \lim_{T \to 0} \int_T^1 \frac{1}{\sqrt{x}} \dee x = 2 (2 \cdot 1^\frac{1}{2} - 2\lim_{T \to 0} T^\frac{1}{2}) = 4$.  

Consider $\int_{-1}^1 \frac{1}{2\sqrt{x}} \dee x$: ;wip: what was the actual example here?

> We might do $\int_{-1}^1 \frac{1}{2\sqrt{x}} \dee x = \evalat{-\sqrt{\abs{x}}}_{-1}^1 = -2$.  
> However, the integral **does not exist**. We need to be careful because the result looks just fine, and does not indicate that an error occurred.  
> The integral does not make any sense because the integrand diverges towards $\infty$ at $x = 0$.  

The idea behind this is that we need to figure out if an improper integral exists even without integrating it first.

If a function **converges**, that means it goes to a finite value. The opposite is if it **diverges**, when it goes to $\pm \infty$ or does not exist.

In other words, convergence means the result is a number, and divergence means the result is not a number.

If an improper integral converges, then the value we get by evaluating its antiderivatives at the endpoints is the correct value of the integral. However, if it diverges, then the answer could be different. We always need to check for divergence in order to catch these cases.

### Comparison Theorem

Given functions $f(x), g(x)$ such that $f(x) \ge g(x) \ge 0$ for $x \ge a$, if $\int_a^b f(x) \dee x$ converges, then $\int_a^b g(x) \dee x$ also converges.

The contrapositive is also useful in that if $\int_a^b g(x) \dee x$ diverges, then $\int_a^b f(x) \dee x$ also diverges.

Prove that, given that $\int_1^\infty e^{-x} \dee x$ converges, $\int_1^\infty \frac{1}{x^P} \dee x$ converges if and only if $P > 1$

> Assume $P > 1$.   
> ;wip

Interestingly, $e^{-x^2}$ doesn't have an antiderivative. Figure out if $\int_0^\infty e^{-x^2} \dee x$ converges or diverges:

> Clearly, $0 \le e^{-x^2} \le e^{-x}$ for $x \ge 1$.  
> Since $\int_1^\infty e^{-x} \dee x$ converges, $\int_1^\infty e^{-x^2} \dee x$ converges, by the comparison theorem.  
> So $\int_0^\infty e^{-x^2} \dee x = \int_0^1 e^{-x^2} \dee x + \int_1^\infty e^{-x^2} \dee x$.  
> Clearly, $e^{-x^2}$ does not diverge for all $x \in [0, 1]$. So $\int_0^1 e^{-x^2} \dee x$.  
> Since $\int_0^1 e^{-x^2} \dee x$ and $\int_1^\infty e^{-x^2} \dee x$ converge, $\int_0^\infty e^{-x^2} \dee x$ converges.  

# 29/1/14

Consider $\int_1^\infty \frac{1 + e^{-x}}{x} \dee x$:

> Clearly, the function is well behaved for all $x \in [1, \infty]$.  
> So we do not need to worry about the integrand diverging.  
> Clearly, $\frac{1 + e^{-x}}{x} \le \frac{2}{x}$.  
> Clearly, $\frac{2}{x}$ diverges.  
> However, we can't say anything about the original function using the comparison theorem, since it could still either coonverge or diverge.  
> Instead, we look for divergence. Clearly, $\frac{1}{x} \le \frac{1 + e^{-x}}{x}$.  
> Since $\int_1^\infty \frac{1}{x} \dee x$ diverges, $\int_1^\infty \frac{1 + e^{-x}}{x} \dee x$ also diverges.  

Applications of Integration
---------------------------

Many physical phenomena can be represented by **differential equations** - equations that include derivatives.

This comes about usually through empirical evidence/oberservation, and some by conservation principles.

### Cooling

For example, Newton's Law of Cooling was discovered by Newton's measurements of hot materials in cooler surroundings.

The law states that the change in temperature is linearly propertional to the temperature difference with the surroundings.

In other words, $\frac{\dee}{\dee x} T_h = -k(T_h - T_r)$, where $T_h$ is the temperature of the hot thing, $T_r$ is the surrounding temperature, and $k$ is the cooling coefficient.

Note that $k$ is non-negative and we use $-k$ because hot things cool. This cooling coefficient is influenced by the material and shape of the object.

From this we can tell that the object stops cooling when $T_h = T_r$, so $\frac{\dee}{\dee x} T_h = 0$.

Values of $T$ for which $\frac{\dee T_h}{\dee x} = 0$ are called **equilibria**.

### Conservation

Most differential equations in science and engineering come from **conservation principles** - principles that apply universally and constrain what can happen. For example, conservation of mass/energy/charge/momentum.

Conservation principles are easy to represent in mathematics, though the models can be pretty elaborate. Basically, what they state is that the rate of the change of something is the rate of change of something increasing minus the rate of stuff decreasing.

For example, the rate of change of people of the people in the room is the rate of change of people entering minus the rate of change of people leaving.

The rate of something increasing is called a **source**. The rate of something decreasing is called a **sink**.

For example, consider a skydiver immediately after their parachute opens:

> Clearly, $m\frac{\dee \vec{v}}{\dee x} = \sum \vec{F} = m \vec{g} - \vec{F}_d$, where $\vec{F}_d$ is the drag force.  
> We can calculate the drag force in a lab independent of everything else, and not have to worry about the other things like the height or gravity.  
> Typically, $\vec{F}_d = k\vec{v}$ for some constant $k$.  
> So $\frac{\dee \vec{v}}{\dee x} = \vec{g} - \frac{k}{m} \vec{v}$.  

# 31/1/14

An example of a mathematical representation of conservation principles is a mixing problem.

A tank holds 80L of water at time $t = 0$. A salt solution of 0.25 kg/L flows into the tank at 8L/min. Liquid drains at a rate of 12L/min from the tank. Find a differential equation for the mass of salt $x(t)$ in kg for $t > 0$, where $t$ is measures in seconds:

> We assume the salt solution instantly mixes with the water.  
> We want to find $\frac{\dee}{\dee t} x(t)$, which is $\text{source} - \text{sink}$.  
> The source is $\text{salt concentration} \cdot \text{inflow rate} = 0.25 \text{kg/L} \cdot 8 \text{L/min} = 2 \text{kg/min}$.  
> Clearly, $\frac{\dee}{\dee x} \text{liquid level} = \text{inflow rate} - \text{outflow rate} = 8 \text{L/min} - 12 \text{L/min} = -4 \text{L/min}$.  
> So the liquid level is $80 + \int \frac{\dee}{\dee x} \text{liquid level} \dee t = 80 - 4t$.  
> Clearly, $\text{salt concentration} = \frac{\text{mass of salt}}{\text{volume of tank}} = \frac{x(t)}{80 - 4t}$.  
> The sink is $\text{salt concentration} \cdot \text{outflow rate} = \frac{x(t)}{80 - 4t} \cdot 12 \text{kg/L} = \frac{3x(t)}{20 - t}$.  
> So $\frac{\dee}{\dee x} x(t) = 2 - \frac{3x(t)}{20 - t}$.  
> Note that the tank is empty when $t = 20$, when the outflow rate is undefined.  

There are many things we can say about the function even without solving it. These are called **qualitiative analyses**.

Suppose we have $\frac{\dee y}{\dee x} = f(x, y)$. Note that the left side is equal to the slope of the tangent line, and the right side is an expression for the slope of the tangent line for any point $(x, y)$.

Basically, every point on the Cartesian plane now has an associated slope, and we can represent this roughly with arrows on the graph representing the trend in the slopes.

These arrows/contours are called streamlines.

Think of this as a stream with currents and eddies. Every possible solution is a possible path a floating object will take if dropped at a particular place in the stream and allowed to bob along with the stream. The solutions are we get if we start at a possible point and draw a curve that has the slope of the tangent always equal to the value at the flow field at the point under the curve.

We can also think of them as a topographical map of some terrain. If we drop a ball along a point on the map, it will trace out a certain line. If we drop it slightly off to one side, it may take a different path, which could be similar, or completely different. The slope of the tangent represents the slope of the hill at a particular point.

The set of all possible solutions is therefore a family of functions that look like a map of water currents.

An **equilibrium** is a place where $\frac{\dee y}{\dee x} = f(x) = 0$. Because the slope of the tangent is 0, it must be 0 for all $x$ values. There are **stable** and **unstable** equilibria.

Stable equilibria are those where values that are close to them get closer to them, like dropping a ball on the side of a valley and having it eventually roll to the bottom of the valley.

Unstable equilibria are those where values that are close to them get farther away from them, like dropping a ball at the peak of a mountain and having it roll away from the peak. Only values that are exactly on the unstable equilibrium will stay there.

Consider $\frac{\dee y}{\dee x} = 1 - y^2$:

> The slope of the tangent line is $\begin{cases} \text{negative} &\text{if } y < -1 \\ \text{positive} &\text{if } -1 < y < 1 \\ \text{negative} &\text{if } y > 1 \end{cases}$.  
> We can visualize this as a flow field with three distinct sections.  
> Note that if we start at $y = -1, 1$, we stay at that same value regardless of the value of $x$. This is called an equilibrium, since the value isn't changing.  
> Note that if we start at any $y > -1$, $y \to 1$ as $x \to \infty$ (convergent), and if we start at any $y < -1$, $y \to -\infty$ as $x \to \infty$ (divergent).  

# 3/2/14

Differential equations of the form $\frac{\dee y}{\dee x} = f(y)$ are called autonomous differential equations. Note that they do not depend on the value of $x$.

The equilibria of an autonomous differential equation are those $y$ values for which $\frac{\dee y}{\dee x} = g(y) = 0$.

An equilibrium $y = k$ is stable if and only if $f'(k) < 0$ - if the change in the slope at the location is negative. Otherwise, it is unstable.

Solving Differential Equations
------------------------------

Consider $\frac{\dee y}{\dee x} = y - x$, with $y(0) = 2$.

This is a differential equation of the form $\frac{\dee y}{\dee x} = f(x, y)$

We can use the differential equation to estimate a certain solution, much like a Riemann sum.

First, we pick a starting point so we have a single solution to the differential equation, a member of the family of solutions. This is a curve on the Cartesian plane.

This starting point is called the **initial condition**. The initial condition often takes the form of $y(x) = y(0) = 2$ - the $y$-value at $x = 0$ is 2 for this solution.

First, we break up the domain into pieces, by choosing value for $x_1, \ldots, x_n$.

Then, we use $\frac{\dee y}{\dee x} = f(x, y)$ to estimate the slope of the tangent at any given $x$ value.

Then, we observe that $\frac{\dee y}{\dee x} = f(x_{n - 1}, y_{n - 1}) \approx \frac{y_n - y_{n - 1}}{x_n - x_{n - 1}}$ - the slope of the tangent is close to the slope of the secant.

So $y_n(x) \approx y_{n - 1} + (x_n - x_{n - 1})f(x_{n - 1}, y_{n - 1})$. This is written in update form, so we can now use a table of values to calculate it.

Let $\Delta x = x_n - x_{n - 1}$. Then $y_n(x) \approx y_{n - 1} + f(x_{n - 1}, y_{n - 1}) \Delta x$.

We can also write this as $y_{n + 1}(x) \approx y_n + f(x_n, y_n) \Delta x$ where $\Delta x = x_{n + 1} - x_n$.

Now we can write $\frac{\dee y}{\dee x} = y - x$ as $y_n(x) \approx y_{n - 1} + (x_n - x_{n - 1})(x_{n - 1} - y_{n - 1})$.

We can actually approximate this function by using a table of values. Since $y(0) = 2$, $y_0 = 2$:

| $n$ | $x_n$ | $y_n$ | $f(x_n, y_n) \Delta x$ | $y_{n + 1} \approx y_n + f(x_n, y_n) \delta x$ |
|-----|-------|-------|------------------------|------------------------------------------------|
|   0 |   0.0 |     2 |  $(2 - 0.0)0.1 = 0.20$ |                          $2.2 \approx 2 + 0.2$ |
|   1 |   0.1 |   2.2 |  $(2 - 0.1)0.2 = 0.38$ |                      $2.58 \approx 2.2 + 0.38$ |
|   2 |   0.2 |  2.58 |  $(2 - 0.2)0.3 = 0.54$ |                     $3.12 \approx 2.58 + 0.54$ |
|   3 |   0.3 |  3.12 |  $(2 - 0.3)0.4 = 0.68$ |                                       $\ldots$ |

Now we can a table of values for the equation. We can plot this on a graph to approximate the curve.

The actual solution can also be found, though not through these techniques. The general solution is $y = 1 + x + c^x, c \in \mb{R}$.

This is called **Euler's method**. It is a method for numerically solving differential equations.

### Integration

If we want exact solutions, we have to integrate. This is not always possible, but is in certain cases.

**Separable equations** are one variety of them. They are equations of the form $\frac{\dee y}{\dee x} = A(x) B(y)$.

Note that $y$ is also a function of $x$, so $B(y)$ is another function of $x$. We write $y = y(x)$.

Clearly, $\frac{\dee y}{\dee x} = A(x) B(y)$ is the same as $\frac{1}{B(y)} \frac{\dee y}{\dee x} = A(x)$.

If we integrate both sides, we get $\int \frac{1}{B(y)} \frac{\dee y}{\dee x} \dee x = \int A(x) \dee x$.

Now we can "cancel $\dee x$". Let $u = y(x)$. Then $\dee u = \frac{\dee u}{\dee x} \dee x$ and $\dee x = \frac{1}{\frac{\dee u}{\dee x}} \dee u = \frac{1}{\frac{\dee y}{\dee x}} \dee u$. This is basically the definition of the substitution rule for integrals.

So $\int \frac{1}{B(y)} \frac{\dee y}{\dee x} \dee x = \int \frac{1}{B(u)} \frac{\dee y}{\dee x} \frac{1}{\frac{\dee y}{\dee x}} \dee u = \int \frac{1}{B(u)} \dee u = \int \frac{1}{B(y)} \dee y$.

So $\int \frac{1}{B(y)} \dee y = \int A(x) \dee x$.

We can also think of this as multiplying both sides of $\frac{1}{B(y)} \frac{\dee y}{\dee x} = A(x)$ by $\dee x$ and integrating both sides.

Solve $\frac{\dee y}{\dee x} = \frac{x}{y}$ for $y(0) = -3$:

> Clearly, this is equivalent to $y \frac{\dee y}{\dee x} = x$, or $y \dee y = x \dee x$, or $\int y \dee y = \int x \dee x$.  
> Integrating both sides, we get $\frac{y^2}{2} = \frac{x^2}{2} + c$.  
> We want to find the value of $c$. Since $y(0) = -3$, $\frac{(-3)^2}{2} = \frac{0^2}{2} + c$ and $c = \frac{9}{2}$.  
> So the solution is $y^2 = 2x^2 + 2 \cdot \frac{9}{2} = 2x^2 + 9$.  

;wip: try $\frac{\dee}{\dee x} 2^y \sin^2 x$ and $\sqrt{x \frac{\dee x}{\dee t}} = \frac{1}{1 + t}$

# 5/2/14

**Constant solutions** are another name for equilibria. They are simply where $\frac{\dee y}{\dee x} = 0$ for $\frac{\dee y}{\dee x} = f(y)$.

Solve $\sqrt{x \frac{\dee x}{\dee t}} = \frac{1}{1 + t}$ for $x(t) = x(0) = 0, t \ge 0$:

> $$
\begin{align}
\sqrt{x \frac{\dee x}{\dee t}} &= \frac{1}{1 + t} \\
x \frac{\dee x}{\dee t} &= \frac{1}{(1 + t)^2} \\
x \dee x &= \frac{1}{(1 + t)^2} \dee t \\
\int x \dee x &= \int \frac{1}{(1 + t)^2} \dee t \\
\frac{x^2}{2} &= -\frac{1}{1 + t} + c \\
x &= 0, t = 0 \\
\frac{0^2}{2} &= -\frac{1}{1 + 0} + c \\
c &= 1 \\
\frac{x^2}{2} &= -\frac{1}{1 + t} + 1 \\
x &= \sqrt{2 - \frac{2}{1 + t}} = \sqrt{\frac{2(1 + t) - 2}{1 + t}} = \sqrt{\frac{2t}{1 + t}} \\
\end{align}
$$

First we rearrange until there is only one variable on each side, then we integrate, and finally, fix the constant of integration $c$ by solving for it with the given values for the axis variables.

Solve $\frac{\dee T}{\dee t} = -k(T - T_{ambient})$ - Newton's law of cooling:

> $$
\begin{align}
\frac{\dee T}{\dee t} &= -k(T - T_{ambient}) \\
\frac{1}{T - T_{ambient}} \dee T &= -k \dee t \\
\int \frac{1}{T - T_{ambient}} \dee T &= -k \int 1 \dee t \\
\ln \abs{T - T_{ambient}} &= -kt + c \\
e^{\ln \abs{T - T_{ambient}}} &= e^{-kt + c} \\
\abs{T - T_{ambient}} &= e^{-kt}e^c \\
T - T_{ambient} &= \pm e^ce^{-kt} \\
\end{align}
$$
> Let $A = \pm e^c$. Then $T - T_{ambient} = Ae^{-kt}$.  
> Note that at $t = 0$, $T = T_0$ for some fixed $T_0$.  
> So $T_0 - T_{ambient} = Ae^{-k0}$ and $T_0 - T_{ambient} = A$.  
> So $T = T_{ambient} + (T_0 - T_{ambient})e^{-kt}$.  

Suppose we have a population of $n$ individuals. The simplest population model is $\frac{\dee n}{\dee t} = kn$ for some $k \ge 0$. Solve for $n$:

> $$
\begin{align}
\frac{\dee n}{n} &= k \dee t \\
\int \frac{\dee n}{n} &= k \int \dee t \\
\ln \abs{n} &= kt + c \\
n &= \pm e^ce^{kt} \\
A = \pm e^c; n &= Ae^{kt} \\
\end{align}
$$
> Note that at $t = 0$, $n = n_0$ for some constant $n_0$ - the starting population.  
> So $n_0 = Ae^{k0}$ and $A = n_0$.  
> So $n = n_0e^{kt}$.  

A simple variation on this population growth model is **logistic growth**, which also models resource exhaustion: $\frac{\dee N}{\dee t} = rN\left(1 - \frac{N}{k}\right)$. Note that there are two equalibria - $N = 0$ and $N = k$. $k$ is a constant called the **carrying capacity**.

For $\frac{n}{k} \ll 1$ (much less than), logistic growth behaves like exponential growth.

The flow field looks like arrows pointing right toward $N(t) = k$ starting from $N(t) = 0$. Therefore, the population always tends toward $k$ in this model.

# 7/2/14

The main idea is that there is a lot more to the equations than just the solutions. The flow field is useful for discovering how the equation behaves.

Even when we solve the equation, it does not tell us much about how the function works intuitively.

Solve $\frac{\dee N}{\dee t} = rN\left(1 - \frac{N}{k}\right)$:

> $$
\begin{align}
\frac{\dee N}{\dee t} &= rN\left(1 - \frac{N}{k}\right) \\
\int \frac{1}{N\left(1 - \frac{N}{k}\right)} \frac{\dee N}{\dee t} \dee t &= \int r \dee t \\
\int \frac{1}{N\left(1 - \frac{N}{k}\right)} \dee N &= rt + c \\
\int \frac{A}{N} + \frac{B}{1 - \frac{N}{k}} \dee N &= rt + c \\
A\left(1 - \frac{N}{k}\right) + BN &= 1; A = 1; B = \frac{1}{k} \\
\int \frac{1}{N} + \frac{\frac{1}{k}}{1 - \frac{N}{k}} \dee N &= rt + c \\
\ln \abs{N} + \int \frac{1}{k - N} \dee N &= rt + c \\
\ln \abs{N} - \ln \abs{N - k} &= rt + c \\
\ln \abs{\frac{N}{N - k}} &= rt + c \\
-\ln \abs{\frac{N}{N - k}} &= -rt - c \\
\ln \abs{\frac{N - k}{N}} &= -rt - c \\
\abs{\frac{N - k}{N}} &= e^{-rt - c} \\
\frac{N - k}{N} &= \pm e^{-rt} e^{-c} \\
F &= \pm e^{-c} \\
1 - \frac{k}{N} &= Fe^{-rt} \\
\frac{k}{N} &= Fe^{-rt} + 1 \\
N &= \frac{k}{1 + Fe^{-rt}} \\
\end{align}
$$
> Note that all solutions tend toward $k$, which we can verify by taking the limit of $N$ at infinity.  
> Now we will solve for $F$ - at $t = 0$, $N = N_0$. Assume $t = 0$.  
> So $N_0 = \frac{k}{1 + Fe^{-r0}}$ and $N_0 + FN_0 = k$, so $F = \frac{k}{N_0} - 1$.  
> So $N = \frac{k}{1 + \left(\frac{k}{N_0} - 1\right)e^{-rt}}$.  

# 10/2/14

Differential equations appear quite often in equations for time based physical phenomena.

Separable differential equations are one type of differential equation that can be directly solved. However, there are other types.

Linear Differential Equations
-----------------------------

**Linear differential equations** are those of the form $\frac{\dee y}{\dee x} = A(x) y + B(x), A(x) \ne B(x)$. It is called linear because the degree of $y$ on the right side is 1.

If $A(x) = B(x)$, then the equation is separable since $A(x)y + B(x) = (u + 1)A(x)$.

We can solve these by splitting the equation into two separable equations and then solving each of those. This technique is developed by Euler.

Note that if we multiply the equation by an arbitrary function $I(x)$, we get $I(x) \frac{\dee y}{\dee x} = I(x) A(x) y + I(x) B(x)$.

### First equation

So $I(x) \frac{\dee y}{\dee x} - I(x) A(x) y = I(x) B(x)$.

Assume $I(x)$ is a function that satisfies $\frac{\dee}{\dee x} (I(x) y) = I(x) B(x)$ or $I(x) y = \int I(x) B(x) \dee x$.

So $y = \frac{1}{I(x)} \left(\int I(x) B(x) \dee x\right)$.

Clearly, $\frac{\dee}{\dee x} I(x) y = y \frac{\dee}{\dee x} I(x) + I(x) \frac{\dee y}{\dee x} = I(x) B(x) = I(x) \frac{\dee y}{\dee x} - I(x) A(x) y$

So $y \frac{\dee}{\dee x} I(x) + I(x) \frac{\dee y}{\dee x} = I(x) \frac{\dee y}{\dee x} - I(x) A(x) y$ and $y \frac{\dee}{\dee x} I(x) = -I(x) A(x) y$.

### Second equation

So $\frac{\dee}{\dee x} I(x) = -I(x) A(x)$. This is a separable differential equation.

Solving, we get $\int \frac{1}{I(x)} \dee I(x) = -\int A(x) \dee x$.

Clearly, $\int \frac{1}{I(x)} \dee I(x) = \ln \abs{I(x)}$ so $\abs{I(x)} = e^{-\int A(x) \dee x}$ and $I(x) = \pm e^{-\int A(x) \dee x}$.

Here, $I(x)$ is called the **integrating factor**. In general, $I(x) = \pm e^{-\int A(x) \dee x}$.

### Substitution

Now we substitute back into the original equation: $y = \frac{1}{I(x)} \int I(x) B(x) \dee x = \frac{1}{\pm e^{-\int A(x) \dee x}} \int (\pm e^{-\int A(x) \dee x} B(x)) \dee x = \frac{1}{e^{-\int A(x) \dee x}} \int e^{-\int A(x) \dee x} B(x) \dee x$.

The **general rule** is that given $\frac{\dee y}{\dee x} = A(x) y + B(x)$, $y = \frac{1}{I(x)} \int I(x) B(x) \dee x$ where $I(x) = e^{-\int A(x) \dee x}$.

Consider the velocity of a falling object, $\frac{\dee v}{\dee t} = g - \beta v$, where $g$ is gravitational acceleration and $\beta$ is the drag coefficient:

> Clearly, this is an equation of the form $\frac{\dee v}{\dee t} = A(t) v + B(t)$ where $A(t) = -\beta$ and $B(x) = g$.  
> So $I(x) = e^{-\int (-\beta) \dee t} = e^{\beta t}$.  
> So $v = \frac{1}{e^{\beta t}} \int e^{\beta t} g \dee x = \frac{1}{e^{\beta t}} \left(\frac{g}{\beta} e^{\beta t} + c\right)$.  
> So $v = \frac{1}{e^{\beta t}} \left(\frac{g}{\beta} e^{\beta t} + c\right) = \frac{g}{\beta} + ce^{-\beta t}$.  
> Now we need to find $c$. Since $v(t) = v(0) = v_0 = \frac{g}{\beta} + ce^{-\beta 0}$, $c = v_0 - \frac{g}{\beta}$.  
> So $v = \frac{g}{\beta} + \left(v_0 - \frac{g}{\beta}\right)e^{-\beta t}$.  
> We can check our answer by substituting $v$ back into the original equation: $\frac{\dee}{\dee t} \left(\frac{g}{\beta} + \left(v_0 - \frac{g}{\beta}\right)e^{-\beta t}\right) = g - \beta \left(\frac{g}{\beta} + \left(v_0 - \frac{g}{\beta}\right)e^{-\beta t}\right) = g - \left(g + (\beta v_0 - g)e^{-\beta t}\right) = (g - \beta v_0)e^{-\beta t}$, which is correct.  

Consider $x^2 \frac{\dee y}{\dee x} + xy = 1$ for $y(x) = y(1) = 2, x > 0$:

> Clearly, $x^2 \frac{\dee y}{\dee x} + xy = 1$ is equivalent to $\frac{\dee y}{\dee x} + \frac{1}{x}y = \frac{1}{x^2}$ or $\frac{\dee y}{\dee x} = -\frac{1}{x}y + \frac{1}{x^2}$.  
> So $I(x) = e^{-\int \left(-\frac{1}{x}\right) \dee x} = e^{\ln x} = x$.  
> So $y = \frac{1}{x} \int x \frac{1}{x^2} \dee x = \frac{\ln x + c}{x}$.  
> Since $y(x) = y(1) = 2$, $2 = \frac{\ln 1 + c}{1}$ and $c = 2$.  
> So $y = \frac{\ln x + 2}{x}$.  

# 12/2/14

Often when solving differential equations, it is not possible to get an explicit solution (where the variable is isolated on one side). Instead, it is often only possible to get an implicit solution, like $2\ln y + y^2 = x$.

Midterm Review:

* Techniques of Integration
    * Review
    * Integration by Substitution
    * Integration by Parts
    * Trigonometric Substitution
    * Partial Fraction Decomposition
* Applications
    * Volumes of Solids
        * Method of Shells
        * Method of Disks
    * Improper Integrals
    * Differential Equations
        * Qualitative Analysis
        * Separable Differential Equations
        * Linear Differential Equations
            * Integrating Factors

Sequences, Series, Taylor Polynomials
-------------------------------------

Given a function $f(x)$, we can often find a polynomial $P(x)$ that has the same first $N$ derivatives at a point $x = a$.

For example, $f(x) = \sin x$ and $P(x) = x - \frac{x^3}{3!} + \frac{x^5}{5!} - \frac{x^7}{7!}$ have the same first 7 derivatives - $\frac{\dee^i f}{\dee x^i} = \frac{\dee^i P}{\dee x^i}$ for $1 \le i \le 7$ at $x = 0$.

Another example is $f(x) = \frac{1}{1 - x}$ and $P(x) = 1 + x + x^2 + x^3 + \ldots + x^N$. The first $N$ derivates at $x = 0$ are always equal, and it works for any arbitrary $N$.

In general, if $P(x) = \sum_{n = 0}^N \frac{f^{(n)}(a)}{n!}(x - a)^n$, then $f(x)$ and $P(x)$ share the first $N$ derivative values at $x = a$. The notation $f^{(n)}(a)$ represents $\evalat{\frac{\dee^n}{\dee x^n} f(x)}_{x = a}$.

The most important use of this is approximation of very difficult functions. This allows us to use polynomials as tools to analyze many types of functions.

What kinds of functions does this work for?

In the limit $N \to \infty$, does $f(x) = P(x) = \lim_{N \to \infty} \sum_{n = 0}^N \frac{f^{(n)}(a)}{n!}(x - a)^n$ for all $x$? Does the limit even exist?

Consider $\arctan x = \int_0^x \frac{1}{1 + t^2} \dee t$. If we assume that $\frac{1}{1 - x} = 1 + x + x^2 + x^3 + \ldots + x^N$ as shown earlier, we can substitute $t^2$ for $x$ to get.

Sequences
----------

A **sequence** is an ordered list of numbers. We denote it with $a_0, a_1, \ldots, a_n$, or simply $a_n = f(n)$. For example, $a_n = 2n$ is equivalent to $0, 2, 4, 6, \ldots$

A sequence **converges** if it has a limit as $n \to \infty$.

Sequences are often easier to work with than functions. For example, the $\epsilon-\delta$ definition of limits is much simpler.

The definition of the limit of a sequence is: a sequence $a_n$ has a limit $L$ if and only if for any $\epsilon > 0$, we can find $k \in \mb{Z}$ such that $\abs{a_n - L} < \epsilon$ whenever $n > k$.

Formally, the limit $L$ exists if and only if $\forall \epsilon > 0, \exists k \in \mb{Z}, n > k \implies \abs{a_n - L} < \epsilon$.

This is similar to the definition of limits at infinity. For example, the sequence $0.3, 0.33, 0.333, 0.3333, \ldots$ has the limit $L = \frac{1}{3}$, but $1, -1, 1, -1, \ldots$ has no limit.

Use the definition of the limit to prove that the limit of $a_n = \frac{n}{1 + n}$ is 1:

> ;wip

If $a_n$ and $L$ lie in the domain of a continuous function $f$ and $a_n \to L$ as $n \to \infty$, then $\lim_{n \to \infty} f(a_n) = f(L)$. In other words, the limit of a sequence is the same as the limit of its corresponding function at infinity.

Sequences are easy to deal with if they are explicit functions of the index $n$, but a lot of sequences are defined recursively, like $a_{n + 1} = a_n + \frac{1}{n!}, a_0 = 1$.

;wip: try $a_n = 7^{\frac{1}{2} + \frac{1}{n}}\tan \frac{\pi n + 1}{4n}$ limit at infinity - \sqrt{7}

# 14/2/14

It is in fact easy to determine if any sequence converges or diverges.

Sequences that are defined only in terms of the current index are easy to find the limit of. For example, $a_n = \frac{n}{n + 1}$ converges to 1 at infinity.

However, sequences defined recursively are not so straightforward. For example, $a_{n + 1} = a_n + \frac{1}{n!}, a_0 = 1$. This is an **implicitly defined sequence**.

### Monotone Convergence Theorem

If the terms of a sequence are **bounded**, and the sequence is **monotone**, then the sequence converges.

There are two possible cases:

* If the sequence has an upper bound $a_n \le b$ and is monotonially increasing, then it converges.
* If the sequence has a lower bound $a_n \ge b$ and is monotonically decreasing, then it converges.

**Boundedness** means that every element in the sequence is between a lower and upper bound. Formally, a sequence $a_n$ is bounded if and only if $\exists u, \exists v, \forall n, u \le a_n \le v$.

We often prove boundedness by comparing to a known sequence (like $\frac{1}{n!} \le \frac{1}{2^{n - 1}}$) or by using induction.

**Monotonicity** means that once we start going up, we never go down again, and once we start going down, we never go up again. Basically, $a_0 \le a_1 \le a_2 \le \ldots$, or $a_0 \ge a_1 \ge a_2 \ge \ldots$.

Formally, a sequence $a_n$ is monotone if and only if $(\forall u, \forall v, u < v \implies a_u < a_v) \vee (\forall u, \forall v, u < v \implies a_u > a_v)$.

Proof:

> It is intuitively obvious that if a value is always increasing, and cannot exceed a value, then it must converge to some value.  
> Without loss of generality, assume that $a_n$ is increasing and bounded by $a_n \le b$.  
> Let $p$ be the smallest possible upper bound on $a_n$.  
> As an aside, $p$ is the limit of the sequence - any number less than this is not an upper bound, and any number greater than this can be smaller while still being an upper bound.  
> Let $\epsilon > 0$.  
> Clearly, $p - \epsilon < p$, so $\exists k, p - \epsilon < a_k$, since any value less than the .  
> Assume $n > k$. Clearly, $a_k \le a_n$ (since the sequence is monotonically increasing).  
> Clearly, $a_n \le p < p + \epsilon$.  
> So $p - \epsilon < a_n < p + \epsilon$ and $-\epsilon < a_n - p < \epsilon$.  
> So $\abs{a_n - p} < \epsilon$, and by the definition of the limit, $p$ is the limit and the sequence converges.  

Does $a_0 = 1, a_{n + 1} = a_n + \frac{1}{n!}$ converge?

> Clearly, $\frac{1}{n!}$ is always positive, so $a_{n + 1} = a_n + \frac{1}{n!}$ is monotonically increasing.  
> Clearly, $n! \le 2^{n - 1}$, since $1 \cdot \ldots \cdot k \le 2 \cdot \ldots \cdots 2 \text{ (} k - 1 \text{ times)}$.  
> So $\frac{1}{n!} \le \frac{1}{2^{k - 1}}$ and $a_n \le 1 + 1 + \frac{1}{2} + \frac{1}{2^2} + \ldots + \frac{1}{2^{n - 1}}$.  
> Clearly, this is a monotonically increasing geometric progression, and so we can determine that $1 + 1 + \frac{1}{2} + \frac{1}{2^2} + \ldots + \frac{1}{2^{n - 1}} = \frac{1 - \left(\frac{1}{2}\right)^n}{1 - \frac{1}{2}}$.  
> Clearly, $\lim_{n \to \infty} \frac{1 - \left(\frac{1}{2}\right)^n}{1 - \frac{1}{2}} = \frac{1}{\frac{1}{2}} = 2$.  
> So $a_n \le \frac{1}{2^{k - 1}} \le 2$, and by the convergence theorem, the sequence converges.  
> As an aside, it converges to $e$.  

Does $a_1 = 1, a_{n + 1} = \sqrt{3 + 2a_n}$ converge?

> The first few elements of the sequence are $1, 2.23606797749979, 2.73352079834772, 2.90981813807933, 2.96978724425819$.  
> Clearly, $a_{n + 1} \ge a_n \iff \sqrt{3 + 2a_n} \ge a_n \iff a_n^2 - 2a_n - 3 \le 0$, or $-1 \le a_n \le 3$.  
> So $a_n$ is monotonically increasing if $[-1, 3]$.  
> Assume $a_n \le 3$. Then $3 + 2a_n \le 9$ and $\sqrt{3 + 2a_n} \le 3$. So $a_{n + 1} \le 3$.  
> So by induction, $a_n$ has an upper bound of 3.  
> So by the monotone convergence theorem, the sequence converges.  
> Also, note that if the limit exists, we can set $n \to \infty$ and so $a_{n + 1} = a_n$.  
> So $a_n^2 - 2a_n - 3 = 0$ and $a_n  = -1, 3$. -1 is a extraneous answer since the function is always positive, so $\lim_{n \to \infty} a_n = 3$.  

# 24/2/14

The monotone convergence theorem only tells us whether the sequence converges, but not what the actual limit is.

We usually prove the monotonicity and boundedness of sequences by comparing them to sequences with known properties (like geometric series), or by using induction.

To use induction to prove monotonicity, we simply need to prove that $a_{n + 1} \ge a_n$ for any $n$.

To use induction to prove boundedness, we first need to guess a $k$ that might be an upper or lower bound. Then, we verify that it works for the first element of the sequence, and then that $a_n \le k \implies a_{n + 1} \le k$.

If we know that the limit exists, sometimes we can find the limit by setting $n \to \infty$, which implies that $a_{n + 1} = a_n$ (since we are at the limit).

Then we can write $a_{n + 1}$ in terms of $a_n$, and we get a function over $a_n$, which we can often isolate and solve for, which gives us the limit $L = a_n$. The previous example uses this technique.

This doesn't always work. For example, it work doesn't for $a_0 = 1, a_{n + 1} = a_n + \frac{1}{n!}$. If we try to substitute it, we get $a_n = a_n + \frac{1}{n!} = a_n + \frac{1}{\infty} = a_n$. This doesn't help us find the limit.

Series
------

A series is a sum of terms. We denote this as $S_N = \sum_{n = 0}^N a_n, a_n \in \mb{R}$. Here, $N \in \mb{Z}, N \ge 0$.

For now, $a_n$ is a constant, which can depend on $n$. Eventually, we want to be able to build and analyze sequences of functions, which can depend on other variables like $x$.

If $N$ is finite, then $S_N$ is known as a **partial sum**.

We analyze series by analyzing the sequence of the sequence values: $\sum_{n = 0}^0 a_n, \sum_{n = 0}^1 a_n, \sum_{n = 0}^2 a_n, \ldots$.

So just as we take the limit of a sequence, we can take the limit of a series with $\lim_{N \to \infty} \sum_{n = 0}^N a_n$. This is the relation between sequences and series.

A sequence **converges** if this limit exists. Otherwise, it **diverges**.

For example, we previously saw the sequence $a_0 = 1, a_{n + 1} = a_n + \frac{1}{n!}$, which is actually equivalent to the series $S_N = \sum_{n = 0}^1 \frac{1}{n!}$. They are equivalent because $a_n = S_N$ when $n = N$.

We also define $\sum a_n = \sum_{n = k}^\infty a_n, k \in \mb{Z}$ for convenience.

# 26/2/14

### Geometric Series

The geometric series is $S_N = \sum_{n = 0}^N x^n = 1 + x + x^2 + x^3 + \ldots + x^n$.

The geometric series is a rare example of a series that can be written in **closed form** - non-recursively and in a finite number of symbols. In other words, we can write the value of the partial sum of the series as a function of $n$.

Which values of $n$ make the series converge?

First, we start with the identity of $1 - x^{N + 1} = (1 - x)(1 + x + x^2 + x^3 + \ldots + x^N)$. This is true because $(1 - x)(1 + x + x^2 + x^3 + \ldots + x^N) = (1 + x + x^2 + x^3 + \ldots + x^N) - (x + x^2 + x^3 + \ldots + x^{N + 1}) = 1 + x - x + x^2 - x^2 + x^3 - x^3 + \ldots + x^N - x^N - x^{N + 1} = 1 - x^{N + 1}$.

So $S_N = \sum_{n = 0}^N x^n = 1 + x + x^2 + x^3 + \ldots + x^N = \frac{1 - x^{N + 1}}{1 - x}$.

So the limit is $\lim_{N \to \infty} \frac{1 - x^{N + 1}}{1 - x} = \frac{1}{1 - x} - \frac{x}{1 - x} \lim_{N \to \infty} x^N$.

If $x = 1$, then $\lim_{N \to \infty} \sum_{n = 0}^N 1^n = 1 + \ldots + 1 = \infty$, and the sequence diverges.

If $x = -1$, then $\lim_{N \to \infty} \sum_{n = 0}^N (-1)^n = 1 - 1 + 1 - 1 + \ldots + 1 - 1 = ?$. This sum either has the value 0 or 1, and oscillates infinitely as we go to infinity. Therefore, the sequence diverges.

Clearly, if $x > 1$ or $x < -1$, the value goes to positive or negative infinity, and the sequence diverges.

Therefore, the geometric series converges only for $-1 < x < 1$, since if this is the case, $\lim_{N \to \infty} x^N = 0$ and $\lim_{N \to \infty} S_N = \frac{1}{1 - x}$.

Does $\sum_{k = 1}^\infty 3^{2k}5^{1 - k}$ converge?

> Clearly, $\sum_{k = 1}^\infty 3^{2k}5^{1 - k} = \sum_{k = 1}^\infty 9^k5^{1 - k} = 5\sum_{k = 1}^\infty 9^k5^{-k} = 5\sum_{k = 1}^\infty \frac{9^k}{5^k} = 5\sum_{k = 1}^\infty \left(\frac{9}{5}\right)^k$.  
> Since $\frac{9}{5} \ge 1$, the geometric sequence diverges as the limit of $\left(\frac{9}{5}\right)^k$ goes to infinity.   

Does $3 - \frac{3}{2}x^2 + \frac{3}{4}x - \frac{3}{8}x^2$ converge?

> Clearly, $3 - \frac{3}{2}x^2 + \frac{3}{4}x - \frac{3}{8}x^2 = 3 \sum_{n = 0}^\infty \left(-\frac{x}{2}\right)^n$.  
> Clearly, in order to converge, $-1 \le -\frac{x}{2} \le -1$, or $-1 \le \frac{x}{2} \le 1$.  
> As an aside, it converges to $\frac{3}{1 + \frac{x}{2}} = \frac{6}{2 + x}$.  

# 28/2/14

The value of the geometric series is $S_N = \sum_{n = 0}^N x^n = 1 + x + x^2 + \ldots + x^N = \begin{cases} \frac{1 - x^N}{1 - x} &\text{if } x \ne 1 \\ N + 1 &\text{if } x = 1 \end{cases}$

### Convergence

One of the simplest tests for convergence is that if the terms of a series are not getting closer and closer to 0, the series can never converge. In other words, $\lim_{n \to \infty} a_n = 0$ is a requirement for convergence.

Formally, if $\lim_{n \to \infty} a_n \ne 0$, then the sequence does not converge.

This is known as the **simple limit test** for series.

Our convergence tests can decide whether a series covnerges or not, but do not provide information about what it converges to.

The sum of two convergent series is also convergent - $\sum a_n + \sum b_n = \sum (a_n + b_n)$ if $\sum a_n$ and $\sum b_n$ are both convergent. However, this is not always true for divergent series. For example, $\sum_{n = 1}^\infty (-1)^n$ and $\sum_{n = 1}^\infty (-1)^{n + 1}$ are both divergent, but $\sum_{n = 1}^\infty {(-1)^n + (-1)^{n + 1}} = 0$.

P-series
--------

A **P-series** is a series of the form $\sum_{n = 1}^\infty \frac{1}{n^P}$m where $P \in \mb{R}$.

### Convergence

We want to figure out which values of $P$ allow the series to converge.

Clearly, $\sum_{n = 1}^\infty \frac{1}{n^P} = \sum_{n = 1}^\infty n^{-P}$.

Clearly, if $P \le 0$, then $\lim_{n \to \infty} n^{-P} \ne 0$. So by the simple limit test, the sequence does not converge.

If $P > 0$, then $f(n) = \frac{1}{n^P}$ is continuous, positive, and decreasing.

Clearly, $\int_1^\infty \frac{1}{x^P} \dee x = \frac{1}{1 - P} \evalat{x^{1 - P}}_1^\infty$ converges if and only if $P > 1$.

So by the integral test, $\sum_{n = 1}^\infty \frac{1}{n^P}$ converges if and only if $P > 1$.

So $\sum_{n = 1}^\infty \frac{1}{n^P}$ converges if and only if $P > 1$.

### Considerations

The series $\sum_1^\infty \frac{1}{n}$ is called the **harmonic series**. It diverges (very slowly, like the logarithmic functions), and this can be proven since it is a special case of the P-series where $P = 1$. This is a useful series because $\lim_{n \to \infty} \frac{1}{n} = 0$, yet the series diverges, so this is an example of the simple convergence test not being useful.

For example, a P-series where $P = 2$ is $\frac{\pi^2}{6}$. ;wip: how?

As an aside, we have closed forms for P-series for all even $P$ - always in the form of $\frac{m}{n}\pi^P$. However, we do not know anything at this time about odd $P$.

For example, a P-series where $P = 3$ results in a value that has no known exact form, and is still an unsolved problem in methematics.

Integral Test
-------------

This is based on the connection between an infinite series (like a Riemann sum) and integration.

Let $\sum_{n = 0}^\infty a_n$ be an infinite series. Then we can write $a_n$ be a function of $n$, like $f(n)$.

For example, for $\sum_{n = 0}^\infty \frac{1}{n^2}$, $f(n) = \frac{1}{n^2}$.

Now we can develop the **integral test**.

Given $f(n) = a_n$, if $f(n)$ is **continuous**, **positive**, and **decreasing** for all $n \ge 1$, then $\int_1^\infty f(n) \dee n$ converges if and only if $\sum_{n = 1}^\infty f(n)$ converges.

### Error Estimation

For series that satisfy the hypetheses of the integral test, we can estimate the error/remainder $R_N = \sum_1^\infty a_n - \sum_1^N a_n$ for any $N$.

This is useful because we can't explicitly calculate $\sum_1^\infty a_n$, but we can calculate $\sum_1^N a_n$.

So given $f(n) = a_n$ being continuous, positive, and decreasing, the error is bounded by $\int_{N + 1}^\infty f(x) \dee x \le R_N \le \int_N^\infty f(x) \dee x$.

In other words, the error is bounded between $\int_{N + 1}^\infty f(x)$ and $\int_N^\infty f(x) \dee x$.

For example, for the series $S_N = \sum_{n = 1}^N \frac{1}{n^2}$, $S_{10} \approxeq 1.54977$. We know that since $f(n) = \frac{1}{n^2}$ is continuous, positive, and decreasing, and $\int_1^\infty \frac{1}{n^2}$. ;wip

# 3/3/14

Comparison Test (Series)
------------------------

There is a deep connection between infinite series and improper integrals.

Like the improper integral, we can also have a form of the comparison test, but it is easier to use than with integrals.

Given $\sum a_n$ and $\sum b_n$, two series, with $0 \le a_n \le b_n$:

* If $\sum a_n$ diverges, then $\sum b_n$ also diverges.
* If $\sum b_n$ converges, then $\sum a_n$ also converges.

Here, $\sum a_n$ is the series we are interested in and $\sum b_n$ is the series we chose to compare it with.

### Limit Comparison Test

For series only - not integrals - we can rewrite this in a more useful form.

Let $\sum a_n$ and $\sum b_n$ be two series, with $a_n \ge 0, b_n \ge 0$.

Let $\rho = \lim_{n \to \infty} \frac{a_n}{b_n}$.

If $0 < \rho < \infty$ ($\rho$ is positive and finite), then:

* $\sum a_n$ and $\sum b_n$ both diverge.
* $\sum a_n$ and $\sum b_n$ both converge.

This is easily proved via contradiction or similar.

Note that if $\rho = 0$ or $\rho = \infty$, then we cannot say anything about whether they converge or not, and we need to pick a better comparison.

Prove that $\sum_{n = 1}^\infty \frac{\abs{\sin n}}{\sqrt{n + n^3}}$:

> Clearly, $\frac{\abs{\sin n}}{\sqrt{n + n^3}} \le \frac{1}{\sqrt{n + n^3}} < \frac{1}{\sqrt{n^3}} = \frac{1}{n^\frac{3}{2}}$.  
> Since this is a P-series where $P = \frac{3}{2}$, $\sum_{n = 1}^\infty \frac{1}{n^\frac{3}{2}}$ converges.  
> So by the comparison test, $\sum_{n = 1}^\infty \frac{\abs{\sin n}}{\sqrt{n + n^3}}$ converges.  

# 5/3/14

We can find useful comparisons to make by finding something bigger than the numerator, and smaller than the denominator, and trying that as a comparison.

For example, $\sum_1^\infty \frac{\sqrt{n}}{n^2 + 2} < \sum_1^\infty \frac{\sqrt{n}}{n^2} = \sum_1^\infty \frac{1}{n^\frac{3}{2}}$, which converges as it is a P-series with $P = \frac{3}{2}$.

For example, $\sum_1^\infty \frac{1}{2^nn} \le \sum_1^\infty \frac{1}{2^n} = \sum_1^\infty \left(\frac{1}{2}\right)^n$, which converges since it is a geometric series with $x = \frac{1}{2}$.

Does $\sum_1^\infty \frac{1}{n^{1 + \frac{1}{n}}$ exist?

> Clearly, $\sum_1^\infty \frac{1}{n^{1 + \frac{1}{n}} = \sum_1^\infty \frac{1}{n}\frac{1}{n^\frac{1}{n}} < \sum_1^\infty \frac{1}{n}$.  
> Using the limit comparison test, $\rho = \lim_{n \to \infty} \frac{\frac{1}{n}\frac{1}{n^\frac{1}{n}}}{\frac{1}{n}} = \lim_{n \to \infty} n^{-\frac{1}{n}} = e^{-\lim_{n \to \infty} \frac{1}{n}\ln n} \lH e^{-\lim_{n \to \infty} \frac{\frac{1}{n}}{1}} = e^{-0} = 1$.  
> Since $0 < \rho < \infty$, and $\sum_1^\infty \frac{1}{n}$ diverges, then $\sum_1^\infty \frac{1}{n^{1 + \frac{1}{n}}$ also diverges.  

Proof of limit comparison test:

> Let $\sum a_n$ and $\sum b_n$ be two series, with $a_n \ge 0, b_n \ge 0$.  
> Let $\rho = \lim_{n \to \infty} \frac{a_n}{b_n}$. Assume $0 < \rho < \infty$.  
> Clearly, $\exists m, M > 0, 0 < m < \rho < M < \infty$.  
> Clearly, $\lim_{n \to \infty} \frac{a_n}{b_n} \iff (\exists K, n > K \implies m < \frac{a_n}{b_n} < M)$.  
> So $mb_n < a_n < Mb_n$ and $\sum mb_n < \sum a_n < \sum Mb_n$, or $m\sum b_n < \sum a_n < M\sum b_n$.  
> Suppose $\sum b_n$ converges. Then $\sum a_n < M\sum b_n$ and by the comparison test, $\sum a_n$ converges.  
> Suppose $\sum b_n$ diverges. Then $m\sum b_n > \sum a_n$ and by the comparison test, $\sum a_n$ diverges.  
> So $\sum a_n$ converges if and only if $\sum b_n$ converges.  

Also, we can prove that sequences diverge by proving that they are increasing or decreasing without bound, or assuming that the sequence does converge, and deriving a contradiction.

# 7/3/14

Alternating Series
------------------

These are series where the sign of the terms alternate.

These usually take the form of $\sum a_n = \sum (-1)^n p_n, p_n > 0$.

Alternating series are useful to study because they have several useful properties.

### Error

The remainder/error after $N$ terms is easy to estimate. Clearly, $\abs{R_N} = \abs{\sum^\infty (-1)^n p_n - \sum^N (-1)^n p_n}$. So $\abs{R_N} \le p_{N + 1}$.

This is true because the terms of the series keep bouncing back and forth across the limit, so the remainder is always less than or equal to the value of each term.

For example, $\sum_1^\infty (-1)^{n + 1} \frac{1}{n} = 1 - \frac{1}{2} + \frac{1}{3} - \frac{1}{4} + \frac{1}{5} - \frac{1}{6} + \ldots = \ln 2$. We can estimate the error with $\abs{R_N} = \frac{1}{N + 1}$.

### Convergence

For an alternating series, if $\lim_{n \to \infty} p_n = 0$, and $p_{n + 1} \le p_n$, then the series converges.

In other words, if the terms of the sum tend to 0, and they are monotonically decreasing, then the series converges. This is one of the simplest convergence tests, but it only works on alternating series.

Alternating series also have special nomenclature that can be applied to them.

Let $\sum a_n = \sum (-1)^n p_n$ be an alternating series.

$\sum a_n$ is **absolutely convergent** if $\sum a_n$ and $\sum \abs{a_n}$ converge.

Absolute convergence means that the series is **well behaved** - it behaves like an ordinary number. We can add, subtract, multiply, and divide absolutely convergent series and the result is still sensible.

$\sum a_n$ is **conditionally convergent** if $\sum a_n$ converges, but $\sum \abs{a_n}$ diverges.

Conditional convergence means the series might not be well behaved.

For example, consider $1 - \frac{1}{2} + \frac{1}{3} - \frac{1}{4} + \frac{1}{5} - \frac{1}{6} + \ldots$.

For an absolutely convergent series, re-arrangement does nothing. This is not true for conditionally convergent series. In fact, the above can have its terms rearranged such that it sums up to any value we want, and this was proved by Riemann.

For example, we will make it sum up to 1.5:

> First, we add up positive terms until we pass 1.5: $1 + \frac{1}{3} + \frac{1}{5} \approxeq 1.53$.  
> Then we add negative terms until we fall below 1.5 again: $1 + \frac{1}{3} + \frac{1}{5} - \frac{1}{2} \approxeq 1.03$.  
> Then we repeat: $1 + \frac{1}{3} + \frac{1}{5} - \frac{1}{2} + \frac{1}{7} + \frac{1}{9} + \frac{1}{11} + \frac{1}{13} + \frac{1}{15} \approxeq 1.52$.  
> We can do this as many times as needed to get the desired value.  

Even though there are far more positive terms than negative terms, we can do this because we have an infinite number of terms that we can add up. This only works because the series is infinite.

# 10/3/14

Ratio Test
----------

This is the most useful of the convergence tests.

Let $\sum a_n$ be a series. Let $L = \lim_{n \to \infty} \abs{\frac{a_{n + 1}}{a_n}}$.

If $L < 1$, then $\sum a_n$ converges absolutely.

If $L > 1$, then $\sum a_n$ diverges.

Otherwise, if $L = 1$, the test is inconclusive. This test is very effective for powers and factorials, and especially for power series and Taylor series.

Determine if $\sum_{n = 0}^\infty \frac{(n + 4)!}{4!n!4^n}$ converges:

> We will use the ratio test.  
> Let $L = \lim_{n \to \infty} \abs{\frac{((n + 1) + 4)!}{4!(n + 1)!4^(n + 1)} \frac{4!n!4^n}{(n + 4)!}} = \lim_{n \to \infty} \frac{n + 5}{4!(n + 1)!4^(n + 1)} 4!n!4^n = \lim_{n \to \infty} \frac{n + 5}{4(n + 1)!} n! = \lim_{n \to \infty} \frac{n + 5}{4(n + 1)} \lH \lim_{n \to \infty} \frac{1}{4} = \frac{1}{4}$.  
> Since $L < 1$, $\sum_{n = 0}^\infty \frac{(n + 4)!}{4!n!4^n}$ converges absolutely.  

Proof:

> The idea is that if $L < 1$, then we can compare $\sum a_n$ to a convergent geometric series.  
> Assume $L < 1$. Then $\exists r \in \mb{R}, L < r < 1$.  
> Note that $\lim_{n \to \infty} \abs{\frac{a_{n + 1}}{a_n}}$ means that $\exists K > 0, n \ge K \implies \abs{\frac{a_{n + 1}}{a_n}} < L$.  
> So $\exists 0 \le N \le K, n \ge N \implies \abs{\frac{a_{n + 1}}{a_n}} < r$.  
> Assume $n \ge N$. Then $\abs{\frac{a_{n + 1}}{a_n}} < r$ and $\abs{a_{n + 1}} < r\abs{a_n}$.  
> So $\forall k, \abs{a_{N + k}} < \abs{a_N}r^k$. For example, $\abs{a_{N + 3}} < \abs{a_{N + 2}}r < \abs{a_{N + 1}}r^2 < \abs{a_N}r^3$.  
> So $\sum_{k = 0}^\infty \abs{a_{N + k}} < \sum_{k = 0}^\infty \abs{a_{N}}r^k$.  
> Clearly, $\sum_{k = 0}^\infty \abs{a_{N}}r^k = \abs{a_{N}}\sum_{k = 0}^\infty r^k$, which converges since it is a geometric series with $x < 1$.  
> So by the comparison test, $\sum a_n < \abs{a_{N}}\sum_{k = 0}^\infty r^k$, so $\sum a_n$ converges.  
> A similar proof can be made for the case when $L > 1$.  

Another example is $e^x = \sum_{n = 0}^\infty \frac{x^n}{n!}$. Note that if we take the limit of the series, we get the same series back.

### Root Test

Let $\sum a_n$ be a series. Let $L = \lim_{n \to \infty} \sqrt[n]{\abs{a_n}}$.

If $L < 1$, then $\sum a_n$ converges absolutely.

If $L > 1$, then $\sum a_n$ diverges.

This can be proved in a manner similar to the ratio test.

# 12/3/14

Using Convergence Tests
-----------------------

Let $\sum a_n$ be a series.

1. Simple Limit Test: If $\lim_{n \to \infty} a_n \ne 0$, then $\sum a_n$ diverges.
2. Alternating Series Test: If the series is alternating and decreasing ($\abs{a_{n + 1}} < \abs{a_n}$), then $\sum a_n$ converges.
3. Ratio Test/Root Test: Let $L = \lim_{n \to \infty} \abs{\frac{a_{n + 1}}{a_n}}$ or $L = \lim_{n \to \infty} \sqrt[n]{\abs{a_n}}$, whichever is easier to evaluate:
    1. If $L < 1$, then $\sum a_n$ converges.
    2. If $L > 1$, then $\sum a_n$ diverges.
4. If $a_n$ is an algebraic (polynomials and roots) function of $n$, then try using the Comparison Test with a P-series, $\sum \frac{1}{n^P}$.
5. If $a_n$ is closely related to a geometric series, then try using the Comparison Test with a geometric series, $\sum x^n$.
6. If $f(n) = a_n$ is positive, decreasing, and integrable, then try the Integral Test.

Prove whether the following converge or diverge:

* $\sum_{n = 1}^\infty \frac{n^2 + 7n}{\sqrt{n^5 + 4n^3 - 2} \le \frac{1}{\sqrt{n}}$.
* $\sum_{n = 1}^\infty \frac{n + 5}{5^n}$
* $\sum_{n = 1}^\infty n^2 e^{-n}$
* $\sum_{n = 1}^\infty \frac{1}{(\ln n)^{\ln n}$
* $\sum_{n = 1}^\infty \frac{e^\frac{1}{n}}{n^2}$

;wip

Power Series
------------

A power series is a series of the form $\sum_{n = 0}^\infty a_n (x - x_0)^n$, where $a_n \in \mb{R}$.

Here, $x_0$ is the **center** of the power series.

We want to figure out for which values of $x$ our series converges for. For this, we will usually use the ratio test.

For example, check if $\sum_{n = 1}^\infty \frac{(-1)^n x^n}{3^n \sqrt{n}}$ converges:

> Let $L = \lim_{n \to \infty} \abs{\frac{(-1)^{n + 1} x^{n + 1}}{3^{n + 1} \sqrt{n + 1}} \frac{3^n \sqrt{n}}{(-1)^n x^n}} = \lim_{n \to \infty} \abs{\frac{-x}{3 \sqrt{n + 1}} \sqrt{n}} = \frac{\abs{x}}{3} \lim_{n \to \infty} \frac{1}{\sqrt{n + 1}} \sqrt{n} = \frac{\abs{x}}{3} \lim_{n \to \infty} \sqrt{\frac{n}{n + 1}} = \frac{\abs{x}}{3}$.  ;wip: use l'hospital's rule or something to evaluate the limit properly
> Clearly, $L < 1$ whenever $-3 < x < 3$, so the series converges for any $-3 < x < 3$.  
> Clearly, $L > 1$ whenever $x < -3 \vee x > 3$, so the series diverges for any $x < -3 \vee x > 3$.  
> Now we need to consider $L = 1$, where $x = \pm 3$. Assume $x = 3$.  
> Then $\sum_{n = 1}^\infty \frac{(-1)^n x^n}{3^n \sqrt{n}} = \sum_{n = 1}^\infty \frac{(-1)^n 3^n}{3^n \sqrt{n}} = \sum_{n = 1}^\infty \frac{(-1)^n}{\sqrt{n}}$.  
> This is an alternating series, and since $\lim_{n \to \infty} \frac{1}{\sqrt{n}} = 0$ and $\frac{1}{\sqrt{n + 1}} < \frac{1}{\sqrt{n}}$, the series converges (conditionally) by the alternating series test.  
> Assume $x = -3$.  
> Then $\sum_{n = 1}^\infty \frac{(-1)^n x^n}{3^n \sqrt{n}} = \sum_{n = 1}^\infty \frac{(-1)^n (-3)^n}{3^n \sqrt{n}} = \sum_{n = 1}^\infty \frac{(-1)^n (-1)^n 3^n}{3^n \sqrt{n}} = \sum_{n = 1}^\infty \frac{1}{\sqrt{n}}$.  
> This is a P-series where $P = \frac{1}{2}$, so the series diverges.  
> So the series converges absolutely if and only if $x \in (-3, 3)$, and converges conditionally for $x = 3$.  

### Radius of Convergence

The **radius of convergence** for a power series is the maximum magnitude of the values of $x$ on the imaginary plane such that all numbers inside this radius of $x_0$ allow the power series to converge absolutely, and all numbers outside of this radius diverge.

The behaviour at the radius is not important.

The values of $x$ that allow the series to converge are known as the **interval of convergence**.

This is a number $\rho \in \mb{R}$ such that:

* $\sum_{n = 0}^\infty c_n (x - x_0)^n$ converges absolutely for all $\abs{x - x_0} < \rho$
* $\sum_{n = 0}^\infty c_n (x - x_0)^n$ diverges for all $\abs{x - x_0} > \rho$
* $\sum_{n = 0}^\infty c_n (x - x_0)^n$ may converge or diverge for $\abs{x - x_0} = \rho$

In the above example, the radius of convergence is 3.

All geometric series are power series where $a_n = 1$ and $x_0 = 0$.

The interval of convergence for a geometric series $\sum_{n = 0}^\infty x^n$ is $\abs{x} < 1$.

# 14/3/14

Within the radius of convergence, a power series behaves like an ordinary function. The idea is that if we are inside the radius of convergence, then we can treat the infinite series like a finite polynomial.

Let $f(x) = \sum_{n = 0}^\infty a_n (x - x_0)^n, g(x) = \sum_{n = 0}^\infty b_n (x - x_0)^n$:

* $f(x) \pm g(x) = \sum_{n = 0}^\infty (a_n \pm b_n) (x - x_0)^n$.
* $f(x) g(x) = \sum_{n = 0}^\infty c_n (x - x_0)^n$ where $c_n = a_0 b_n + a_1 b_{n - 1} + \ldots + a_{n - 1} b_1 + a_n b_0$.
* If $g(x) \ne 0$, then $\frac{f(x)}{g(x)} = \sum_{n = 0}^\infty d_n (x - x_0)^n$ ;wip: what is d_n?

More importantly, we can differentiate and integrate the terms of the sum:

So $\frac{\dee f}{\dee x} = \frac{\dee}{\dee x} (a_0 + a_1(x - x_0) + a_2 (x - x_0)^2 + \ldots) = 0 + a_1 + 2a_2 (x - x_0) + \ldots$. Note that the first term became 0, so we don't need to sum it.

So $\frac{\dee f}{\dee x} = \sum_{n = 0}^\infty a_n n(x - x_0)^{n - 1}$.

So $\int f(x) \dee x = \sum_{n = 0}^\infty \int a_n (x - x_0)^n \dee x = c + \sum_{n = 0}^\infty a_n \frac{(x - x_0)^{n + 1}}{n + 1}$.

Find the power series of $\frac{1}{1 - x}$ and use it to approximate $\ln$:

> Clearly, this is the value of the geometric series, as we saw earlier: $\frac{1}{1 - x} = \sum_{n = 0}^\infty x^n$ for $\abs{x} < 1$.  
> Clearly, $\int_0^t \frac{1}{1 - x} \dee x = -\ln \abs{1 - t} = \sum_{n = 0}^\infty \int_0^t x^n \dee x = \sum_{n = 0}^\infty \frac{t^{n + 1}}{n + 1}$ for $\abs{t} < 1$.  
> So $\ln \abs{1 - t} = -\sum_{n = 1}^\infty \frac{t^n}{n}$ for $\abs{t} < 1$.  
> Note that this only works for $\abs{t} < 1$. However, there are tricks we can use to avoid this issue.  
> For example, we can't use this approximation to find $\ln 3$, since for $\ln \abs{1 - t}$, $t = -2$, but note that $\ln \frac{1}{3} = -\ln 3$, so $\ln 3 = -\ln \frac{1}{3} = -\ln \abs{1 - \frac{2}{3}} = \sum_{n = 1}^\infty \frac{1}{n} \frac{2}{3}^n$.  
> We want a general form for all values in the domain of $\ln x$, so $x > 0$.  
> Clearly, $\ln \abs{1 - (-t)} - \ln \abs{1 - t} = \ln \abs{\frac{1 + t}{1 - t}} = -\sum_{n = 1}^\infty \frac{(-t)^n}{n} + \sum_{n = 1}^\infty \frac{t^n}{n} = \sum_{n = 1}^\infty (1 - (-1)^n)\frac{t^n}{n} = 2t + \frac{2}{3}t^3 + \frac{2}{5}t^5 + \ldots = \sum_{n = 1}^\infty \frac{2}{2n - 1}t^{2n - 1}$.  
> Let $x = \abs{\frac{1 + t}{1 - t}}$. Then $t = \abs{\frac{x - 1}{x + 1}} = \frac{x - 1}{x + 1}$, since $x > 0$.  
> So $\abs{t} < 1 \iff -x < x < x + 2 \iff x > 0$, so $\abs{t} < 1$ for all $x$ in the domain, as required.  
> Then we can write $\ln x = \ln \frac{1 + t}{1 - t} = \sum_{n = 1}^\infty \frac{2}{2n - 1}\left(\frac{x - 1}{x + 1}\right)^{2n - 1}$, for $x > 0$.  

This is actually how calculators evaluate these sorts of functions - by calculating the partial sums of a power series to a given error.

Find the power series for $\frac{1}{1 + x^2}$ and use it to approximate $\arctan$:

> Let $u = -x^2$. Then $\frac{1}{1 + x^2} = \frac{1}{1 - u} = \sum_{n = 0}^\infty u^n = \sum_{n = 0}^\infty (-1)^n x^{2n}$ for $\abs{u} < 1$.  
> Clearly, $\int_0^t \frac{1}{1 + x^2} \dee x = \arctan t = \sum_{n = 0}^\infty \int_0^t (-1)^n x^{2n} \dee x = \sum_{n = 0}^\infty \frac{(-1)^n}{2n + 1} x^{2n + 1}$ for $\abs{t} < t$.  
> So $\arctan t = \sum_{n = 0}^\infty \frac{(-1)^n}{2n + 1} x^{2n + 1}$ for $-1 < t < 1$.  

Taylor Series
-------------

What power series is identical to a function $f(x)$ and all its derivatives at a point $x = x_0$?

For $\abs{x - x_0} < \rho$, where $\rho$ is the radius of convergence, $f(x) = \sum_{n = 0}^\infty \frac{f^{(n)}(x_0)}{n!}(x - x_0)^n$ where $f^{(n)}(x_0) = \evalat{\frac{\dee^n f}{\dee x^n}}_{x = x_0}$, and $f^{(0)}(x_0) = f(x_0)$. This is known as a **Taylor series/Taylor polynomials**.

Find the Taylor polynomial for $e^x$ and use it to estimate $\int_0^1 e^{-x^2} \dee x$:

> Let $f(x) = e^x, x_0 = 0$. Then $f^{(n)} = \evalat{\frac{\dee^n f}{\dee x^n}}_{x = x_0} = \evalat{e^x}_{x = x_0} = 1$.  
> Then $f(x) = e^x = \sum_{n = 0}^\infty \frac{x^n}{n!}, \abs{x - x_0} < \rho$.  
> Let $L = \lim_{n \to \infty} \abs{\frac{x^{n + 1}}{(n + 1)!} \frac{n!}{n^n}} = \lim_{n \to \infty} \abs{\frac{x}{n + 1}} = 0$.  
> Then by the ratio test, the series converges for all $0 < 1$, and the radius of covnergence is $\rho = \infty$.  
> So $\int_0^1 e^{-x^2} \dee x = \int_0^1 f(-x^2) \dee x = \sum_{n = 0}^\infty \int_0^1 \frac{(-x^2)^n}{n!} \dee x = \sum_{n = 0}^\infty \frac{(-1)^n}{n!(2n + 1)}$.  

# 17/3/14

;wip: check to make sure assignment marks are on LEARN

The Taylor series has the same derivative and integral as the function for all possible values of $x$ within the radius of convergence.

The $N$th partial sum of a Taylor series has the same zero to $N$th derivatives.

Find the Taylor series for $\sin x$ and $\cos x$:

> Let $f(x) = \sin x, x_0 = 0$. Then $f^{(n)} = \evalat{\frac{\dee^n f}{\dee x^n}}_{x = x_0}$. Clearly, $f^{(0)}(0) = 0, f^{(1)}(0) = 1, f^{(1)}(0) = 0, f^{(1)}(0) = -1, \ldots$.  
> Since all the even powers are 0, then we simply omit those terms.  
> So $f(x) = \sin x = \sum_{n = 0}^\infty \frac{f^{(n)}(x_0)}{n!}x^n = x - \frac{x^3}{3} + \frac{x^5}{5!} - \frac{x^7}[7!} + \ldots = \sum_{n = 0}^\infty \frac{(-1)^n x^{2n + 1}}{(2n + 1)!}, \abs{x - x_0} < \rho$.  
> Let $L = \lim_{n \to \infty} \abs{\frac{(-1)^{n + 1} x^{2n + 3}}{(2n + 3)!} \frac{(2n + 1)!}{(-1)^n}} = \lim_{n \to \infty} \abs{\frac{x^2}{(2n + 3)(2n + 2)}} = 0$.  
> Then by the ratio test, the series converges for all $0 < 1$, and the radius of covnergence is $\rho = \infty$.  
> So the Taylor series is $\sin x = \sum_{n = 0}^\infty \frac{(-1)^n x^{2n + 1}}{(2n + 1)!}$.  
> We can find the Taylor series for $\cos x$ by taking derivatives of both sides: $\frac{\dee}{\dee x} \sin x = \cos x = \frac{\dee}{\dee x} \sum_{n = 0}^\infty \frac{(-1)^n x^{2n + 1}}{(2n + 1)!} = \sum_{n = 0}^\infty \frac{(-1)^n x^{2n}}{(2n)!}$.  

Taylor series allow us to do interesting analyses. For example, it is easy to see that $\sin(-x) = -\sin x$ from the fact that $\sum_{n = 0}^\infty \frac{(-1)^n (-x)^{2n + 1}}{(2n + 1)!} = -\sum_{n = 0}^\infty \frac{(-1)^n x^{2n + 1}}{(2n + 1)!}$.  

;wip: use the taylor series to show that $e^{i \theta} = \cos \theta + \imag \sin \theta$ - prove euler's identity

We want to find a simple formula to find $(1 + x)^P$ for any natural number $P$. This was found to be $1 + Px + \frac{P(P - 1)x^2}{2!} + \frac{P(P - 1)(P - 2)}{3!} + \ldots + \frac{P \cdot (P - 1) \cdot \ldots \cdot (P - (n - 1))}{n!}x^n + \ldots$.

Clearly, for any whole number $P$ the series must terminate after $P + 1$ terms - when one of the factors $(P - k)$ becomes 0. However, if $P$ is a fraction, then the series actually becomes infinite. As it turns out, this works for negative numbers too.

For example, $\sqrt{1 - x} = (1 + x)^\frac{1}{2} = 1 - \frac{1}{2}x - \frac{1}{8}x^2 - \frac{1}{16}x^3 - \ldots$.

Some common Taylor series are:

* Geometric series: $\sum_{n = 0}^\infty x^n = \frac{1}{1 - x}, \abs{x - x_0} < \rho$
* Exponential series: $\sum_{n = 0} \frac{x^n}{n!} = e^x, \abs{x - x_0} < \rho$
* Trigonometric series: $\sin x = \sum_{n = 0}^\infty \frac{(-1)^n x^{2n + 1}}{(2n + 1)!}$
* Binomial series: $1 + Px + \frac{P(P - 1)x^2}{2!} + \frac{P(P - 1)(P - 2)}{3!} + \ldots + \frac{P \cdot (P - 1) \cdot \ldots \cdot (P - (n - 1))}{n!}x^n + \ldots = (1 + x)^P$