MATH138
=======

Calculus II

    Instructor: Matthew Scott
    Section 002
    Email: mscott@uwaterloo.ca
    Office: MC 6114
    Office hours: Mondays 11:30am-12:15pm, 3:00pm-3:30pm
    Tutorial: Wednesdays 3:30pm in MC 2035, starting Jan. 15

# 6/1/14

Assignments are due every friday at 3:30pm. They are posted on LEARN.

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

By the way, $\dee x$ is called an **infinitesmall**.

Techniques of Integration
-------------------------

Techniques of integration rewrite functions in forms that we can't integrate into forms that we can integrate.

### Method of substitution

We know that $\int x \dee x = \frac{x^2}{2} + c$.

Using substitution, we can evaluate something like $-\int \cos x \sin x \dee x$.

How do we figure that out?

> Let $u = \sin x$. So $\dee u = \cos x \dee x$.  
> So $-\int \cos x \sin x \dee x = -\int \sin x \dee u = -\int u \dee u$.  
> Clearly, $-\int u \dee u = -\frac{u^2}{2} + c = -\frac{\sin^2 x}{2} + c$.  

Substitution is useful when we can figure out what a useful substitution would be.

One clue that the substitution is a good choice is if the derivative of the substitution appears in the numerator of the function.

How do we prove that $\int_1^x \frac{1}{t} = \ln x$? How do we know that both have the same properties ($\ln ab = ln a + \ln b$ and $\ln a^r = r \ln a$)?

We want to prove property 1:

> we want to prove that $\int_1^{ab} \frac{1}{t} \dee t = \int_1^a \frac{1}{t} \dee t + \int_1^b \frac{1}{t} \dee t$.  
> By linearity of integrals, we do $\int_1^{ab} \frac{1}{t} \dee t = \int_1^a \frac{1}{t} \dee t + \int_a^{ab} \frac{1}{t} \dee t$.  
> Let $u = \frac{t}{a}$. Then $\dee u = a \dee t$.  
> So when $t = a$, $u = 1$, and when $t = ab$, $u = b$.  
> So $\int_a^{ab} \frac{1}{t} \dee t = \int_1^{b} \frac{a \dee u}{tu} \dee t = \int_1^b \frac{1}{u} \dee u = \int_1^b \frac{1}{t} \dee t$ (dummy variable).  
> So $\int_1^{ab} \frac{1}{t} \dee t = \int_1^a \frac{1}{t} \dee t + \int_1^b \frac{1}{t} \dee t$.  

Property 2 is left as an exercise. ;wip