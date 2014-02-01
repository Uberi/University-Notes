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
\newcommand{\evalat}[1]{\left.\left(#1\right)\right|}
\newcommand{\sech}{\operatorname{sech}}
\newcommand{\spn}{\operatorname{Span}}
\newcommand{\proj}{\operatorname{proj}}
\newcommand{\prp}{\operatorname{perp}}
\newcommand{\magn}[1]{\left\lVert #1 \right\rVert}
\newcommand{\rank}{\operatorname{rank}}
\newcommand{\sys}[2]{\left[ #1 \mid #2\hskip2pt \right]}
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

So $\int_a^b f(x) \frac{\dee}{\dee x} f(x) \dee x = \int_{u(a)}^{u(b)} u \frac{\dee u}{\dee x} \dee x = \int_{u(a)}^{u(b)} u \frac{\dee u}{\dee x} \frac{1}{\frac{\dee u}{\dee x}} \dee u = \int_{u(a)}^{u(b)} u \dee u = \frac{u^2}{2} + c = \frac{f(x)^2}{2} + c$.

Basically, if we can find a factor of the integrand $u$ such that its derivative also appears in the integrand, the method of substition can get rid of the derivative.

Evaluate $\int \cos x \sin x \dee x$

> Let $u = \sin x$. So $\dee u = \cos x \dee x$.  
> So $\int \cos x \sin x \dee x = \int \sin x \dee u = -\int u \dee u$.  
> Clearly, $\int u \dee u = \frac{u^2}{2} + c = \frac{\sin^2 x}{2} + c$.  

Substitution is useful when we can figure out what a useful substitution would be.

One clue that the substitution is a good choice is if the derivative of the substitution appears in the numerator of the function.

How do we prove that $\int_1^x \frac{1}{t} = \ln x$? How do we know that both have the same properties:

* Property 1 - multiplication rule: $\ln ab = ln a + \ln b$
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

Move the last term to the left: $(\frac{\dee}{\dee x} a(x)) b(x) = \frac{\dee}{\dee x} (a(x) b(x)) - a(x) \frac{\dee}{\dee x} b(x)$.

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

> ;wip

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
= \int \frac{1}{4 \tan^2 \theta 2 \sec \theta}} 2 \sec^2 \theta \dee \theta
= \frac{1}{4} \int \frac{\sec \theta}{\tan^2 \theta}} \dee \theta
= \frac{1}{4} \int \frac{\\cos \theta}{\sin^2 \theta}} \dee \theta$.  
> Let $u = \sin \theta$. Then $\dee x = \frac{1}{\cos \theta} \dee \theta$.  
> So $\frac{1}{4} \int \frac{\\cos \theta}{\sin^2 \theta}} \dee \theta = \frac{1}{4} \int \frac{\cos \theta}{u^2} \frac{1}{\cos \theta} \dee u = \frac{1}{4} \int \frac{1}{u^2} \dee u = -\frac{1}{4u} + c = -\frac{1}{4 \sin \theta} + c$.  
> Since $x = 2 \tan \theta$, $\theta = \arctan \frac{x}{2}$.  
;wip: rewrite in terms of x using the triangle again
> So $\int \frac{1}{x^2 \sqrt{x^2 + 4}} \dee x = -\frac{1}{4} \frac{\sqrt{4 + x^2}}{x} + c$.  

This works because $\cos \theta$ is always positive or 0 in the domain we are considering.

;wip: improve this day's notes so they actually make sense

# 15/1/14

We do substitution by choosing a $u = f(x)$, then doing $\frac{\dee u}{\dee x} = f'(x)$, so $\dee u = f'(x) \dee x$, so $\dee x = \frac{1}{f'(x)} \dee x$.

Evaluate $\int \frac{x}{\sqrt{3 - 2x - x^2}}$:

       /|
      / |
     /  | ;wip
    /___|

> We want to use trigonometric substitution to solve this, but it isn't in the right form.  
> We want to write $3 - 2x - x^2$ in the form of $a^2 + (x + b)^2$ (completing the square).  
> Clearly, $3 - 2x - x^2 = 3 - (2x + x^2) = 3 - (2x + x^2 + 1) + 1$ (make the term into a perfect square trinomial by adding $\frac{b}{2}$ in a way that cancels out).  
> So $3 - 2x - x^2 = 4 - (x + 1)^2$ and $\int \frac{x}{\sqrt{3 - 2x - x^2}} = \int \frac{x}{\sqrt{4 - (x + 1)^2}}$.  
> Let $u = x + 1$. Then $\dee u = \dee x$.  
> We can draw a triangle with the hypotenuse being 2, the opposite side $u$, and adjacent side $\sqrt{4 - u^2}$.  
> From the triangle, we know that $u = 2\sin \theta$ ($x = 2\sin \theta - 1$) and $\sqrt{4 - u^2} = 2 \cos \theta$, so $\dee u = 2 \cos \theta \dee \theta$.  
> So $\int \frac{x}{\sqrt{4 - (x + 1)^2}} = \int \frac{2\sin \theta - 1}{2 \cos \theta} 2\cos \theta \dee \theta = \int 2\sin \theta - 1 \dee \theta = -2 \cos \theta - \theta + c$.  
> ;wip: use the triangle to rewrite \cos x = \frac{\sqrt{4 - u^2}}{2}, or something like that
> Clearly, $\theta = \arcsin \frac{u}{2}$
> So $-2 \cos \theta - \theta + c$

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

We can also find $A$ and $B$ by setting up a system of equations. Clearly, $x + 1 = A(x + 3) + B(x + 2) = (A + B)x + (3A + 2B)$. Then $A + B = 1$ and $3A + 2B = 1$, so we solve for the two linear equations.

Evaluate $\int \frac{x - 1}{x^2 + 5x + 6} \dee x$:

> Clearly, $\int \frac{x - 1}{x^2 + 5x + 6} \dee x = \int \frac{x - 1}{(x + 2)(x + 3)} \dee x = \int \frac{A}{x + 2} \dee x + \int \frac{B}{x + 3} \dee x$ for some $A$ and $B$.  
> Now we need to find $A$ and $B$. We do this by solving $x + 1 = A(x + 3) + B(x + 2)$.  
> Note that $A$ and $B$ must work for any $x$. We now solve using the cover up method.  
> Choose $x = -3$ (because $A(x + 3) = 0$). Then $-3 + 1 = A(-3 + 3) + B(-3 + 2) = -2 = -B$. Then $B = 2$.  
> Choose $x = -2$ (because $B(x + 2) = 0$). Then $-2 + 1 = A(-2 + 3) + B(-2 + 2) = -1 = B$. Then $A = -1$.  
> Then $\int \frac{x - 1}{x^2 + 5x + 6} \dee x = -\int \frac{1}{x + 2} \dee x + \int \frac{2}{x + 3} \dee x = -\ln(x + 2) + 2\ln(x + 3) + c$.  

# 17/1/14

This only works for factorable polynomials.

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

> Clearly, $\frac{x + 1}{(x + 2)^2 (x + 3)} = \frac{A}{(x + 2)^2 (x + 3)}$ ;wip

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
> Clearly, $\int \frac{\frac{2}{7} - \frac{11}{7}x}{x^2 + x + 1} \dee x = \frac{1}{7} \int \frac{2 - 11x}{(x + \frac{1}{2})^2 + \frac{3}{4}} \dee x$
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

In the Riemann integral, that would be represented as $\int_a^b f(x) \dee x = \lim_{n \to \infty} \sum_{i = 1}^n \delta x_i f(x_i)$. Here, $\delta x_i$ is the base, and $f(x_i)$ is the height, and they form a rectangle.

The same idea can be applied to 3D, for the volume under a surface. We want to find the area under $f(x, y)$.

In the Riemann integral, that would be represented as $\int \int f(x, y) \dee x \dee y = \lim_{n \to \infty} \sum_{i = 1}^n \sum_{j = 1}^n \delta x_i \delta y_i f(x_i, y_i)$. Here, $\delta x_i \delta y_i$ is the base, and $f(x_i, y_i)$, and they form a rectangle.

;wip: use double integration symbol above

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

Here, $\delta V = A(x) \delta x$, and then we add up all these tiny volumes to get the total volume.

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

The method of shells uses the formula $\int_0^b h(x) 2\pi x \dee x$, where $b$ is the extent perpendicular to the axis of rotation.

Consider $y = 2x^2 - x^3 = x^2(2 - x)$ from 0 to 2 rotated about the y-axis:

> This solid looks like the top half of a donut.  
> The method of disks is difficult to use here, because we would need disks with holes in them. We will use the method of shells.  
> The height of each of our cylinders is $h(x) = 2x^2 - x^3$.  
> The volume of each shell is $\delta V = h(x) 2\pi x \dee x = 4\pi x^3 \dee x - 2\pi x^4 \dee x$.  
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

Consider $\int_{-1}^1 \dee x$: ;wip: what was the question?

> We might do $\int_{-1}^1 \dee x = \evalat{-\sqrt{x}}_{-1}^1 = -2$.  
> However, the integral **does not exist**. We need to be careful because the result looks just fine, and does not indicate that an error occurred.  
> The integral does not make any sense because the integrand diverges towards $\infty$ at $x = 0$.  

The idea behind this is that we need to figure out if an improper integral exists even without integrating it first.

If a function **converges**, that means it goes to a finite value. The opposite is if it **diverges**, when it goes to $\pm \infty$ or does not exist.

In other words, convergence means the result is a number, and divergence means the result is not a number.

### Comparison Theorem

Given functions $f(x), g(x)$ such that $f(x) \ge g(x) \ge 0$ for $x \ge a$, if $\int_a^\infty f(x) \dee x$ converges, then $\int_a^\infty g(x) \dee x$ also converges.

The contrapositive is also useful in that if $\int_a^\infty g(x) \dee x$ diverges, then $\int_a^\infty f(x) \dee x$ also diverges.

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
> The source is $\text{salt concentration} \cdot {inflow rate} = 0.25 \text{kg/L} \cdot 8 \text{L/min} = 2 \text{kg/min}$.  
> Clearly, $\frac{\dee}{\dee x} \text{liquid level} = \text{inflow rate} - \text{outflow rate} = 8 \text{L/min} - 12 \text{L/min} = -4 \text{L/min}$.  
> So the liquid level is $80 + \int \frac{\dee}{\dee x} \text{liquid level} \dee t = 80 - 4t$.  
> Clearly, $\text{salt concentration} = \frac{\text{mass of salt}}{\text{volume of tank}} = \frac{x(t)}{80 - 4t}$.  
> The sink is $\text{salt concentration} \cdot \text{outflow rate} = \frac{x(t)}{80 - 4t} \cdot 12 \text{kg/L} = \frac{3x(t)}{20 - t}$.  
> So $\frac{\dee}{\dee x} x(t) = 2 - \frac{3x(t)}{20 - t}$.  
> Note that the tank is empty when $t = 20$, when the outflow rate is undefined.  

There are many things we can say about the function even without solving it. These are called **qualitiative analyses**.

Suppose we have $\frac{\dee y}{\dee x} = f(x, y)$. Note that the left side is equal to the slope of the tangent line, and the right side is an expression for the slope of the tangent line for any point $(x, y)$.

Basically, every point on the Cartesian plane now has an associated slope, which we can represent as a 

Consider $\frac{\dee y}{\dee x} = 1 - y^2$:

> The slope of the tangent line is $\begin{cases} \text{negative} &\text{if } y < -1 \\ \text{positive} &\text{if } -1 < y < 1 \\ \text{negative} &\text{if } y > 1 \end{cases}$.  
> We can visualize this as a flow field. 