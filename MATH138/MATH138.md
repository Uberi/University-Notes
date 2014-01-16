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
> Let $\theta$ represent the angle between the . By the Pythagorean theorem, ;wip: trangle solve for x
> Let $x = 2 \tan \theta$. Then $\dee x = 2 \sec^2 \theta \dee \theta$.  ;wip: how on earth did we decide on this
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

;wip: write about solving \dee u = \dee x by differentiating both sides of u = x

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