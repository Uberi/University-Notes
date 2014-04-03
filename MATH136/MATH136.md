MATH136
=======

Linear Algebra

    Instructor: Dan Wolczuk
    Section 081 (online)
    Email: dstwolcz@uwaterloo.ca
    Office Hours: MC 4013 on Mondays, Wednesdays, Fridays 1:00pm-2:00pm, Thursdays 1:30pm-4:00pm

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
\newcommand{\adj}{\operatorname{adj}}
\newcommand{\cof}{\operatorname{cof}}
\newcommand{\diag}{\operatorname{diag}}
$$

# 13/1/14 (I'm going to stop procrastinating this week, honest!)

Notation
--------

We represent vectors as column vectors (matrices of size $n \times 1$) to distinguish them from points: $\vec{v} = \begin{bmatrix} v_1 \\ \vdots \\ v_n \end{bmatrix}, v_i \in \mathbb{R}, 1 \le i \le n$.

However, sometimes we will also write them in $n$-tuple form (for example, $(3, 7, 2)$)

$\mb{R}^n, n \in \mathbb{Z}, n > 0$ is the set of all elements of the form $(x_1, \ldots, x_n), x_i \in \mathbb{R}, 1 \le i \le n$.

We usually think of these elements as points, but now we will think of them as vectors, abstract objects that we can perform operations on, like adding and subtracting.

This is called an $n$-dimensional Euclidean space, and is the set of all vectors that are of length (dimension) $n$. For example, $\mb{R}^3$ (arr-three) is the set of all 3D vectors, and $\vec{0} = \begin{bmatrix} 0 \\ 0 \\ 0 \end{bmatrix}$.

So $\mb{R}^3 = \set{\begin{bmatrix} x_1 \\ x_2 \\ x_3 \end{bmatrix} \middle| x_1, x_2, x_3 \in \mathbb{R}}$.

Likewise, $\mb{R}^n = \set{\begin{bmatrix} x_1 \\ \vdots \\ x_n \end{bmatrix} \middle| x_1, \ldots, x_n \in \mathbb{R}}$.

It might also occasionally be useful to think of these vectors as points, where the vectors are offsets from the origin. For example, a function $f\left(\begin{bmatrix} x_1 \\ \vdots \\ x_n \end{bmatrix}\right) = f(x_1, \ldots, x_n)$.

Operations
----------

Let $\vec{x} = \begin{bmatrix} x_1 \\ \vdots \\ x_n \end{bmatrix}, \vec{y} = \begin{bmatrix} y_1 \\ \vdots \\ y_n \end{bmatrix}, c \in \mb{R}$.

### Equality

$x = y$ if and only if $\forall 1 \le i \le n, x_i = y_i$.

In other words, two vectors are equal if and only if all their components are equal. Note that this is defined only for vectors with the same size (number of components).

### Addition/Subtraction

$$x + y = \begin{bmatrix} x_1 \\ \vdots \\ x_n \end{bmatrix} + \begin{bmatrix} y_1 \\ \vdots \\ y_n \end{bmatrix} = \begin{bmatrix} x_1 + y_1 \\ \vdots \\ x_n + y_n \end{bmatrix}$$

Also, $\vec{x} - \vec{y} = \vec{x} + (-\vec{y})$. Therefore, $x - y = \begin{bmatrix} x_1 \\ \vdots \\ x_n \end{bmatrix} - \begin{bmatrix} y_1 \\ \vdots \\ y_n \end{bmatrix} = \begin{bmatrix} x_1 - y_1 \\ \vdots \\ x_n - y_n \end{bmatrix}$.

### Scalar Multiplication

$$cx = c\begin{bmatrix} x_1 \\ \vdots \\ x_n \end{bmatrix} = \begin{bmatrix} cx_1 \\ \vdots \\ cx_n \end{bmatrix}$$

If $c = -1$, $c\vec{x} = -x$.

Linear Combination
------------------

A **linear combination** of vectors $\vec{v}_1, \ldots, \vec{v}_n$ is the value $L = c_1 v_1 + \ldots + c_n v_n, c_i \in \mathbb{R}, 1 \le i \le n$.

It is a linear expression with each term containing a coefficient and one vector value - a sum of scalar multiples.

### Theorem 1.1.1

If $\vec{x}, \vec{y}, \vec{w} \in \mathbb{R}^n, c, d \in \mathbb{R}$, then:

* Closure under addition: $\vec{x} + \vec{y} \in \mathbb{R}^n$.
* Associativity: $(\vec{x} + \vec{y}) + \vec{w} = \vec{x} + (\vec{y} + \vec{w})$
* Commutativity: $\vec{x} + \vec{y} = \vec{y} + \vec{x}$
* Additive identity: $\exists \vec{0} \in \mathbb{R}, \forall \vec{x} \in \mb{R}^n, \vec{x} + \vec{0} = \vec{x}$ ($\vec{0}$ is called the zero vector).
* Additive inverse: $\forall \vec{x} \in \mathbb{R}^n, \exists -\vec{x} \in \mathbb{R}^n, \vec{x} + (-\vec{x}) = \vec{0}$.
* Closure under scalar multiplication: $c\vec{x} \in \mathbb{R}^n$.
* $c(d\vec{x}) = (cd)\vec{x}$.
* Scalar distributivity: $(c + d)\vec{x} = c\vec{x} + d\vec{x}$.
* Vector distributivity: $c(\vec{x} + \vec{y}) = c\vec{x} + c\vec{y}$.
* Multiplicative identity: $1\vec{x} = \vec{x}$.

Closure under addition means that when we add two elements in the set, the resulting sum is also in the set.

Closure under scalar multiplication means that when we multiply an element in the set by a scalar, the resulting product is also in the set.

Because these Euclidean spaces are closed under addition and scalar multiplication, they are closed under linear combinations - all linear combinations of vectors in $\mb{R}^n$ are also in $\mb{R}^n$.

Span
----

The **span** of a set of vectors $\mathcal{B} = \set{\vec{v}_1, \ldots, \vec{v}_k}$ is the set of all linear combinations of the vectors in the set.

The span of an empty set is the set containing only the zero vector - $\spn \emptyset = \set{\vec{0}}$.

In other words, $\spn \mathcal{B} = \spn \set{\vec{v}_1, \ldots, \vec{v}_k} = \set{c_1 v_1 + \ldots + c_n v_n \middle| c_1, \ldots, c_n \in \mathbb{R}}$.

A span is always a subset of the space it is in. In other words, $\spn \mathcal{B} \subseteq \mb{R}^n$.

A span is just a set. Therefore, we can say that a set $\mathcal{B}$ **spans** another set $\mathcal{C}$ if and only if $\mathcal{C}$ is exactly the set of all linear combinations of the vectors in $\mathcal{B}$.

The **vector equation** of a set of vectors is the generalized equation for the linear combinations of each element in the set. For example, $\vec{x} = c_1 v_1 + \ldots + c_n v_n$ is the vector equation for $\mathcal{B}$.

### Theorem 1.1.2

If $\vec{v}_{k + 1}$ can be written as a linear combination of $\vec{v}_1, \ldots, \vec{v}_k$, then $\spn \set{\vec{v}_1, \ldots, \vec{v}_k, \vec{v}_{k + 1}} = \spn \set{\vec{v}_1, \ldots, \vec{v}_k}$.

In other words, if a vector in a set of vectors can already be represented by a linear combination of other vectors in the set, it doesn't affect the span at all.

Proof:

> Assume $\vec{v}_{k + 1}$ can be written as a linear combination of $\vec{v}_1, \ldots, \vec{v}_k$.  
> So $\exists c_1, \ldots, c_k \in \mathbb{R}, \vec{v}_{k + 1} = c_1 \vec{v}_1 + \ldots + c_k \vec{v}_k$.  
> We want to show that $\spn \set{\vec{v}_1, \ldots, \vec{v}_k, \vec{v}_{k + 1}} \subseteq \spn \set{\vec{v}_1, \ldots, \vec{v}_k}$.  
> Let $\vec{x}$ be an arbitrary element of $\spn \set{\vec{v}_1, \ldots, \vec{v}_k, \vec{v}_{k + 1}}$.  
> So $\exists d_1, \ldots, d_{k + 1} \in \mathbb{R}, \vec{x} = d_1 \vec{v}_1 + \ldots + d_k \vec{v}_k + d_{k + 1} \vec{v}_{k + 1}$.  
> So $\exists d_1, \ldots, d_{k + 1} \in \mathbb{R}, \vec{x} = d_1 \vec{v}_1 + \ldots + d_k \vec{v}_k + d_{k + 1} (c_1 \vec{v}_1 + \ldots + c_k \vec{v}_k)
= d_1 \vec{v}_1 + \ldots + d_k \vec{v}_k + d_{k + 1} c_1 \vec{v}_1 + \ldots + d_{k + 1} c_k \vec{v}_k
= d_1 \vec{v}_1 + \ldots + d_k \vec{v}_k + d_{k + 1} c_1 \vec{v}_1 + \ldots + d_{k + 1} c_k \vec{v}_k
= (d_1 + d_{k + 1} c_1) \vec{v}_1 + \ldots + (d_k + d_{k + 1} c_k) \vec{v}_k$.  
> Clearly, $x \in \spn \set{\vec{v}_1, \ldots, \vec{v}_k}$.  
> Clearly, $\spn \set{\vec{v}_1, \ldots, \vec{v}_k} \subseteq \spn \set{\vec{v}_1, \ldots, \vec{v}_k, \vec{v}_{k + 1}}$.  
> Therefore, $\spn \set{\vec{v}_1, \ldots, \vec{v}_k, \vec{v}_{k + 1}} = \spn \set{\vec{v}_1, \ldots, \vec{v}_k}$.  

Consider $\spn \set{\begin{bmatrix} 1 \\ 0 \\ 1 \end{bmatrix}, \begin{bmatrix} 2 \\ 0 \\ 2 \end{bmatrix}}$. Clearly, $\begin{bmatrix} 2 \\ 0 \\ 2 \end{bmatrix} = 2\begin{bmatrix} 1 \\ 0 \\ 1 \end{bmatrix}$.

Clearly, $\begin{bmatrix} 2 \\ 0 \\ 2 \end{bmatrix} = 2\begin{bmatrix} 1 \\ 0 \\ 1 \end{bmatrix}$, so $\spn \set{\begin{bmatrix} 1 \\ 0 \\ 1 \end{bmatrix}, \begin{bmatrix} 2 \\ 0 \\ 2 \end{bmatrix}} = \spn \set{\begin{bmatrix} 1 \\ 0 \\ 1 \end{bmatrix}}$ represents a line in 3D.

The span of the zero vector is itself. The span of a linearly independent vector is a line. The span of two linearly independent vectors is a plane. The span of 3 linearly independent vectors is a 3D space. The span of 4 linearly independent vectors is a 4D space, and so on.

### Linear Independence

When we say $\vec{v}_{k + 1}$ can be written as a linear combination of $\vec{v}_1, \ldots, \vec{v}_k$, we can also write $\vec{v}_{k + 1} \in \spn \set{\vec{v}_1, \ldots, \vec{v}_k}$.

Note that $\vec{0}$ can always be written as a linear combination of any vectors in the same space. The zero vector exists in all dimensions.

It is important to determine which vectors can be written as linear combinations of others.

A set of vectors is **linearly independent** if and only if the vectors in the set cannot be written as linear combinations of each other. Otherwise, the set is **linearly dependent**.

In other words, $\exists c_1, \ldots, c_n \in \mathbb{R}, c_1 \cdot \ldots \cdot c_n \ne 0 \implies c_1 \vec{v}_1 + \ldots + c_{k - 1} \vec{v}_{k - 1} + c_{k + 1} \vec{v}_{k + 1} + \ldots + c\_n vec{v}_n = c_k \vec{v}_k$. Rearranging, we get $\exists c_1, \ldots, c_n \in \mathbb{R}, c_1 \cdot \ldots \cdot c_n \ne 0 \implies c_1 \vec{v}_1 + \ldots + c_{k - 1} \vec{v}_{k - 1} - c_k \vec{v}_k + c_{k + 1} \vec{v}_{k + 1} + \ldots + c\_n vec{v}_n = \vec{0}$.

### Theorem 1.1.3

Therefore, a set of vectors $\set{\vec{v}_1, \ldots, \vec{v}_n}$ is linearly dependent if and only if $\exists c_1, \ldots, c_n \in \mathbb{R}, c_1 \cdot \ldots \cdot c_n \ne 0 \implies c_1 \vec{v}_1 + \ldots + c_n vec{v}_n = \vec{0}$, and otherwise linearly independent.

The solution where $c_i = 0, 1 \le i \le n$ is called the trivial solution, because all the coefficients are 0. The trivial solution is always a solution to the above equation.

In other words, the set is linearly independent if and only if the zero vector cannot be written as a linear combination of the vectors in the set, except when all the coefficients are 0.

To prove that a set is linearly independent, we need to prove that the only solution to the above equation is the trivial solution.

To prove that a set is linearly independent, we need to prove that there is a solution to the above equation where at least one of the coefficients is non-aero.

When we find a solution to the equation, we can use this to find the vectors that are in the span of all the others - the vectors that can be written as a linear comnbination of the others. In the solution, **all vectors with non-zero coefficients can be written as linear combinations of all the other vectors**. If we rearrange the solved equation, we can find this linear combination.

### Theorem 1.1.4

Note that any set of vectors that contains $\vec{0}$ is linearly dependent.

Proof:

> Let $\mathcal{B} = \set{\vec{v}_1, \ldots, \vec{v}_n}$ and $\vec{v}_i = \vec{0}, 1 \le i \le n$.  
> $\mathcal{B}$ is linearly dependent if and only if $\exists c_1, \ldots, c_n \in \mathbb{R}, c_1 \vec{v}_1 + \ldots + c_n \vec{v}_n = \vec{0} \wedge \exists 1 \le i \le n, c_i \ne 0$.  
> Construct $c_1, \ldots, c_{i - 1}, c_{i + 1}, \ldots, c_n = 0, c_i = 1$.  
> Then $c_i \ne 0$ and $c_1 \vec{v}_1 + \ldots + c_n \vec{v}_n = \vec{0}$.  
> Therefore, $\mathcal{B}$ is linearly dependent.  

The vector equation of a linearly independent set is known as a simplified vector equation. A vector equation can be converted into a simplified one by removing terms where the vector can be written as a linear combination of the others.

Geometrically, two vectors span a plane if they are not parallel, and three vectors span a 3D space if they do not all lie on the same plane.

Bases
-----

A linearly independent set of vectors is always simpler than a linearly dependent one. A linearly dependent set of vectors can always be converted into a linearly dependent one with the same span. Therefore, the simplest set of vectors that spans a given set is always linearly independent.

Given $\mathcal{B} = \set{\vec{v}_1, \ldots, \vec{v}_n}$, $\mathcal{B}$ is a **basis** for $\spn \mathcal{B}$ if $\mathcal{B}$ is linearly independent.

In other words, a basis for a set is a linearly independent set of vectors such that its span is exactly the set.

The basis for $\set{\vec{0}}$ is the empty set ($\emptyset$).

The **standard basis** is a basis that is easy to write for any number of dimensions. The standard basis is of the form $\set{\vec{e}_1, \ldots, \vec{e}_n}$, where $\vec{e}_i$ has all components set to 0, except for the $i$-th component, for $1 \le i \le n$.

For example, the standard basis of $\mb{R}^4$ is $\set{\begin{bmatrix} 1 \\ 0 \\ 0 \\ 0 \end{bmatrix}, \begin{bmatrix} 0 \\ 1 \\ 0 \\ 0 \end{bmatrix}, \begin{bmatrix} 0 \\ 0 \\ 1 \\ 0 \end{bmatrix}, \begin{bmatrix} 0 \\ 0 \\ 0 \\ 1 \end{bmatrix}}$.

In order to prove that a set is the basis of another, we need to prove that it is linearly independent, and that it spans the set (by proving that an arbitrary vector in the second set can be written as a linear combination of the elements of the first).

Prove that $\mathcal{B} = \set{\begin{bmatrix} 1 \\ 3 \end{bmatrix}, \begin{bmatrix} -1 \\ -1 \end{bmatrix}}$ is a basis for $\mb{R}^2$:

> Let $\begin{bmatrix} x_1 \\ x_2 \end{bmatrix} \in \mathbb{R}^2$.  
> We will find the coefficients we want by solving $\begin{bmatrix} x_1 \\ x_2 \end{bmatrix} = c_1 \begin{bmatrix} 1 \\ 3 \end{bmatrix} + c_2 \begin{bmatrix} -1 \\ -1 \end{bmatrix}$ for $c_1, c_2$.  
> Construct $c_1 = \frac{x_2 - x_1}{2}, c_2 = \frac{x_2 - 3x_1}{2}$.  
> Clearly, $\begin{bmatrix} x_1 \\ x_2 \end{bmatrix} = \frac{x_2 - x_1}{2} \begin{bmatrix} 1 \\ 3 \end{bmatrix} + \frac{x_2 - 3x_1}{2} \begin{bmatrix} -1 \\ -1 \end{bmatrix}$.  
> So $\exists c_1, c_2 \in \mathbb{R}, \begin{bmatrix} x_1 \\ x_2 \end{bmatrix} = c_1 \begin{bmatrix} 1 \\ 3 \end{bmatrix} + c_2 \begin{bmatrix} -1 \\ -1 \end{bmatrix}$.  
> So $\mathcal{B}$ spans $\mb{R}^2$.  
> Note that there is only the trivial solution when $\begin{bmatrix} x_1 \\ x_2 \end{bmatrix} = \begin{bmatrix} 0 \\ 0 \end{bmatrix}$, so $\mathcal{B}$ is also linearly independent.  
> Therefore, $\mathcal{B}$ is a basis for $\mb{R}^2$.  

A basis for $\mb{R}^n$ has exactly $n$ elements.

Shapes
------

Points are conceptually applicable in any dimension above 0.

Lines are conceptually applicable in any dimension above 1.

Planes are conceptually applicable in any dimension above 2.

A line in $\mb{R}^n$ takes the form of $\vec{x} = c_1 \vec{v}_1 + \vec{b}, c_1 \in \mathbb{R}$ given $\vec{v}_1, \vec{b} \in \mathbb{R}^n$. This is a line in $\mb{R}^n$ that passes through $\vec{b}$.

A plane in $\mb{R}^n$ takes the form of $\vec{x} = c_1 \vec{v}_1 + c_2 \vec{v}_2 + \vec{b}, c_1, c_2 \in \mathbb{R}$ given $\vec{v}_1, \vec{v}_2, \vec{b} \in \mathbb{R}^n$ and $\set{\vec{v}_1, \vec{v}_2}$ being a linearly independent set. This is a plane in $\mb{R}^n$ that passes through $\vec{b}$.

A $k$-plane in $\mb{R}^n$ takes the form of $\vec{x} = c_1 \vec{v}_1 + \ldots + c_k \vec{v}_k + \vec{b}, c_1, c_2 \in \mathbb{R}$ given $\vec{v}_1, \ldots, \vec{v}_k, \vec{b} \in \mathbb{R}^n$ and $\set{\vec{v}_1, \ldots, \vec{v}_k}$ being a linearly independent set. This is a $k$-plane in $\mb{R}^n$ that passes through $\vec{b}$. A $k$-plane is a $k$-dimensional plane.

A hyperplane is a $k$-plane, where $k = n - 1$. It is an $n - 1$-dimensional plane.

For example, $\spn \set{\begin{bmatrix} 1 \\ 0 \\ 0 \\ 1 \end{bmatrix}, \begin{bmatrix} 0 \\ 1 \\ 0 \\ −2 \end{bmatrix}, \begin{bmatrix} 0 \\ 1 \\ 1 \\ −1 \end{bmatrix}}$ defines a hyperplane in $\mb{R}^n$, since the set is linearly independent.

# 20/1/14 (OK, so it's like week 3 and I'm behind, I get it)

Subspaces
---------

A **subspace** of $\mb{R}^n$ is a non-empty subset $\mb{S}$ of $\mb{R}^n$ such that it satisfies all ten properties defined in Theorem 1.1.1.

All subspaces are **spaces**, which are subsets of a vector space.

But since properties 2-5 and 7-10 follow from properties 1 and 6, all we need to do to prove all ten properties is to prove properties 1 and 6 hold.

### Theorem 1.2.1 (Subspace Test)

Given a set $\mb{S}$, $\mb{S}$ is a subspace of $\mb{R}^n$ if and only if:

* $\mb{S}$ is a subset of $\mb{R}^n$.
* $\mb{S}$ is non-empty.
* $\forall \vec{x}, \vec{y} \in \mb{S}, \vec{x} + \vec{y} \in \mb{S}$.
* $\forall \vec{x} \in \mb{S}, c \in \mb{R}, c\vec{x} \in \mb{S}$

To prove a set is a subspace, we need to prove all four properties.

Clearly, if conditions 2 and 4 hold, $\vec{0} \in \mb{S}$. So if $\vec{0} \notin \mb{S}$, then one or both of the conditions is not met and the set is not a subspace.

We can use this to check if a set is a subspace by seeing if $\vec{0}$ is in it.

Prove $\mb{S} = \set{ \begin{bmatrix} x \\ y \\ z \end{bmatrix} \middle| x + y = 0, x - z = 0}$ is a subspace of $\mb{R}^3$ and write a basis for the subspace:

> Clearly, $\mb{S}$ is a subset of $\mb{R}^3$.  
> Clearly, $\vec{0} \in \mb{S}$, so the set is non-empty.  
> Let $\vec{a}, \vec{b} \in \mb{S}$.  
> So $a_1 + a_2 = a_1 - a_3 = 0$ and $b_1 + b_2 = b_1 - b_3 = 0$.  
> Clearly, $(a_1 + b_1) + (a_2 + b_2) = (a_1 + b_1) - (a_3 + b_3) = 0$.  
> So $\vec{a} + \vec{b} \in \mb{S}$ and $\mb{S}$ is closed under addition.  
> Clearly, $c(a_1 + a_2) = c(a_1 - a_3) = c0$.  
> So $c\vec{a} \in \mb{S}$ and $\mb{S}$ is closed under scalar multiplication.  
> So $\mb{S}$ is a subspace of $\mb{R}^3$.  
> Since $a_1 + a_2 = a_1 - a_3 = 0$, $a_2 = -a_1$ and $a_3 = a_1$.  
> So the general vector is $\vec{v}(a_1) = \begin{bmatrix} a_1 \\ -a_1 \\ a_1 \end{bmatrix} = a_1 \begin{bmatrix} 1 \\ -1 \\ 1 \end{bmatrix}$.  
> So a basis for $\mb{S}$ is $\set{\begin{bmatrix} 1 \\ -1 \\ 1 \end{bmatrix}}$.  

We find a basis of a subspace by finding the general form of a vector in the subspace, using this to find a spanning set for $S$, and then reducing it into a linearly independent set.

### Theorem 1.2.2

If $\vec{v}_1, \ldots, \vec{v}_k \in \mb{R}^n$, then $\mb{S} = \spn \set{\vec{v}_1, \ldots, \vec{v}_k}$ is a subspace of $\mb{R}^n$.

Proof:

> Clearly, the set is a subset of $\mb{R}^n$.  
> Clearly, $\vec{0} \in \mb{S}$, since $\vec{0} = 0\vec{v}_1 + \ldots + 0\vec{v}_k$.  
> Let $\vec{a}, \vec{b} \in \mb{S}, w \in \mb{R}$.  
> Then $\exists c_1, \ldots, c_k \in \mb{R}, \vec{a} = c_1 \vec{v}_1 + \ldots + c_k \vec{v}_k$ and $\exists d_1, \ldots, d_k \in \mb{R}, \vec{b} = d_1 \vec{v}_1 + \ldots + d_k \vec{v}_k$.  
> So $\vec{a} + \vec{b} = (c_1 + d_1) \vec{v}_1 + \ldots + (c_k + d_k) \vec{v}_k$, and $\vec{a} + \vec{b} \in \mb{S}$.  
> So $w\vec{a} = wc_1 \vec{v}_1 + \ldots + wc_k \vec{v}_k$ and $w\vec{a} \in \mb{S}$.  
> So $\mb{S}$ is a subspace of $\mb{R}^n$.  

Dot Product
-----------

The **dot product** of two vectors $\vec{a}$ and $\vec{b}$ is defined as $\vec{a} \cdot \vec{b} = \begin{bmatrix} a_1 \\ \vdots \\ a_k \end{bmatrix} \cdot \begin{bmatrix} b_1

The dot product also has the geometric interpretation $\vec{a} \cdot \vec{b} = \abs{a} \abs{b} \cos \theta$, where $\theta$ is the angle between the two vectors.

The dot product is also known as the **scalar product** or **standard inner product** of $\mb{R}^n$.

### Theorem 1.3.2

If $\vec{x}, \vec{y}, \vec{z} \in \mb{R}^n, s, t, \in \mb{R}$, then:

* $\vec{x} \cdot \vec{x} \ge 0$, and $\vec{x} \cdot \vec{x} = 0 \iff \vec{x} = \vec{0}$.
* $\vec{x} \cdot \vec{y} = \vec{y} \cdot \vec{x}$.
* $\vec{x} \cdot (s\vec{y} + t\vec{z}) = s (\vec{x} \cdot \vec{y}) + t (\vec{x} \cdot \vec{z})$.

The **length** or **norm** (Euclidean norm) of a vector $\vec{v} = \begin{bmatrix} v_1 \\ \vdots \\ v_k \end{bmatrix}$ is $\magn{\vec{v}} = \sqrt{\sum_{i = 1}^k v_i^2}$. Note the similarity to scalars, where $\abs{x} = \sqrt{x^2}$.

A vector of length 1 is a unit vector. A unit vector is therefore one such that $\sum_{i = 1}^k v_i^2 = 1$.

Also, $\vec{x} \cdot \vec{x} = \magn{x}^2$, which should be obvious since $\theta = 0$ and $\cos \theta = 1$, so $\vec{x} \cdot \vec{x} = \magn{x} \magn{x} = \magn{x}^2$.

### Theorem 1.3.3

If $\vec{x}, \vec{y} \in \mb{R}^n, c \in \vec{R}$, then:

* $\magn{\vec{x}} \ge 0$, and $\magn{\vec{x}} = 0 \iff \vec{x} = \vec{0}$
* $\magn{cx} = \abs{c}\magn{\vec{x}}$
* $\abs{\vec{x} \cdot \vec{y}} \le \magn{\vec{x}}\magn{\vec{y}}$ (Cauchy-Schwarz-Buniakowski Inequality)
* $\magn{\vec{x} + \vec{y}} \le \magn{\vec{x}} + \magn{\vec{y}}$ (Triangle Inequality)

Proof of third consequence:

> Clearly, if $\vec{x} = \vec{0}$ then the inequality holds. Assume $\vec{x} \ne \vec{0}$.  
> Clearly, $\forall t \in \mb{R}, (t\vec{x} + \vec{y}) \cdot (t\vec{x} + \vec{y}) \ge 0$ (from properties of dot product), so $t^2(\vec{x} \cdot \vec{x}) + 2t(\vec{x} \cdot \vec{y}) + \vec{y} \cdot \vec{y} \ge 0$.
> Clearly, this is a quadratic polynomial where $t$ is the variable. The polynomial is greater or equal to 0 if and only if it has at most 1 root.  
> So the discriminant in the quadratic formula, $b^2 - 4ac$, must be less or equal to 0.  
> So $4(\vec{x} \cdot \vec{y})^2 - 4(\vec{x} \cdot \vec{x})(\vec{y} \cdot \vec{y}) \le 0$.  
> So $(\vec{x} \cdot \vec{y})^2 \le (\vec{x} \cdot \vec{x})(\vec{y} \cdot \vec{y})$ and $(\vec{x} \cdot \vec{y})^2 \le \magn{x}^2\magn{y}^2$.  
> So $\vec{x} \cdot \vec{y} \le \magn{x}\magn{y}$.  

### Angle

The **angle** between two vectors $\vec{x}$ and $\vec{y}$ is defined as the angle $\theta$ such that $\vec{x} \cdot \vec{y} = \magn{x} \magn{y} \cos \theta$.

In other words, $\theta = \arccos\left(\frac{\vec{x} \cdot \vec{y}}{\magn{x} \magn{y}}\right)$.

Two vectors are **orthogonal** if the angle between them is 90 degrees - if their dot product is 0.

One of the reasons the standard bases are easy to work with is specifically because they are orthogonal to each other and because they are unit vectors.

### Planes/Hyperplanes

We can use the dot product to derive a **scalar equation** form for a plane, that makes use of the fact that the normal of a plane is just a vector.

Let $A(a_1, a_2, a_3)$ be a fixed point on the plane. Let $X(x_1, x_2, x_3)$ be an arbitrary point on the plane.

Then $\vec{X} - \vec{A}$ is a vector that lies on the plane.

In other words, if $\vec{x} = s\vec{u} + t\vec{v}, s, t \in \mb{R}$, then $\vec{x} - \vec{b}$ is clearly a vector that lies on the plane.

Let $\vec{n}$ be a vector normal to the plane. Clearly, $\vec{n} \cdot (\vec{X} - \vec{A}) = 0$.

So $n_1 (x_1 - a_1) + n_2 (x_2 - a_2) + n_3 (x_3 - a_3) = 0 = n_1 x_1 + n_2 x_2 + n_3 x_3 - n_1 a_1 - n_2 a_2 - n_3 a_3$.

So $n_1 x_1 + n_2 x_2 + n_3 x_3 = n_1 a_1 + n_2 a_2 + n_3 a_3$. Since $\vec{A}$ is fixed, $n_1 a_1 + n_2 a_2 + n_3 a_3$ is constant and the equation is a function of $x_1, x_2, x_3$.

Since $\vec{x}$ is arbitrary, this holds for every point on the plane, and so is an equation of the plane.

Using the above, we can find the scalar equation of any plane given the normal and a fixed point on the plane.

Additionally, we can easily extend this to hyperplanes. The scalar equation of a hyperplane given the normal $\vec{n}$ and fixed point $\vec{a}$ pn the plane is $\vec{n} \cdot \vec{x} = \vec{n} \cdot \vec{a}$.

### Cross Product

However, we will typically be given the vector equation of the plane, like $\vec{x} = c_1 \vec{u} + c_2 \vec{v} + \vec{w}$.

We can calculate the normal of the plane by finding two linearly independent vectors that lie on the plane, and finding a vector that is orthogonal to both of them.

Clearly, $\vec{u}$ and $\vec{v}$ lie on the plane, being the solutions when $c_2 = 0$ or $c_1 = 0$, respectively.

Then for the normal $\vec{n}$ we know $\vec{n} \cdot \vec{u} = \vec{n} \cdot \vec{v} = 0$. So $n_1 u_1 + n_2 u_2 + n_3 u_3 = n_1 v_1 + n_2 v_2 + n_3 v_3 = 0$.

Solving two equations for three unknowns, we find that one possible solution is $\vec{n} = \begin{bmatrix} u_2 v_3 - u_3 v_2 \\ u_3 v_1 - u_1 v_3 \\ u_1 v_2 - u_2 v_1 \end{bmatrix}$.

This problem is so common that we gave its solution a name, the **cross product**. The cross product of two vectors $\vec{u}$ and $\vec{v}$ is $\vec{u} \times \vec{v} = \begin{bmatrix} u_2 v_3 - u_3 v_2 \\ u_3 v_1 - u_1 v_3 \\ u_1 v_2 - u_2 v_1 \end{bmatrix}$, and is always a vector that is orthogonal to both vectors.

Note that this operation is only defined in $\mb{R}^3$ and $\mb{R}^7$.

Projections
-----------

Given the vectors $\vec{u}, \vec{v}, \vec{w} \in \mb{R}^n, \vec{v} \ne \vec{0}, \vec{v} \cdot \vec{w} = 0$, we want to write $\vec{u}$ as the sum of a scalar multiple of $\vec{v}$ and $\vec{w}$, as the vector $\vec{u} = c\vec{v} + \vec{w}, c \in \mb{R}$.

We first need to find out how much of $\vec{u}$ is in the direction of $\vec{v}$ - find $c$. Clearly, $\vec{u} \cdot \vec{v} = (c\vec{v} + \vec{w}) \cdot \vec{v} = c\magn{v}^2 + \vec{w} \cdot \vec{v} = c\magn{v}^2$.

So $c = \frac{\vec{u} \cdot \vec{v}}{\magn{v}^2}$.

The **projection** of $\vec{u}$ onto $\vec{v}$ is defined as $\proj_{\vec{v}} \vec{u} = c\vec{v} = \frac{\vec{u} \cdot \vec{v}}{\magn{v}^2}\vec{v}$, and is the vector along the same direction as $\vec{v}$ such that it has the same extent along $\vec{v}$ as $\vec{u}$.

The **perpendicular** of $\vec{u}$ onto $\vec{v}$ is the vector that when added to the projection, results in $\vec{u}$. Therefore, the perpendicular is $\prp_{\vec{v}} \vec{u} = \vec{u} - \proj_{\vec{v}} \vec{u}$.

### Planes

How do we project a vector onto a plane? We can notice that the projection of a vector onto a plane is the perpendicular of the vector projected onto the normal of the plane.

Therefore, the projection of a vector $\vec{v}$ onto a plane with normal $\vec{n}$ is $\prp_{\vec{n}} \vec{v}$.

Systems of Linear Equations
---------------------------

A **linear equation** is an equation of the form $a_1 x_1 + \ldots + a_n x_n = b, a_k, b \in \mb{C}, 1 \le k \le n, n \in \mb{N}$. This also includes equations that can be rewritten into this form.

A set of linear equations with the same variables $x_1, \ldots, x_n$ (including those where there are zero coefficients) is called a **system of linear equations**.

A system of linear equations can be written as $\begin{cases}
a_{1, 1} x_1 + \ldots + a_{1, n} x_n = b_1 \\
\vdots
a_{m, 1} x_1 + \ldots + a_{m, n} x_n = b_m \\
\end{cases}$. Here, $a_{i, j}$ represents the $j$th coefficient in the $i$th equation.

A **solution** to a system of linear equation is a vector $\vec{s} = \begin{bmatrix} s_1 \\ \vdots \\ s_n \end{bmatrix}, \vec{s} \in \mb{R}^n$ such that if $(\forall 1 \le i \le n, x_i = s_i)$, all the equations in the system are satisfied.

A system of linear equations is **consistent** if it has at least one solution, and **inconsistent** otherwise.

Two systems of linear equations are **equivalent** if and only if they both have the same solution set.

Interpreted geometrically, a system of $m$ linear equations with $n$ variables is a set of $m$ hyperplanes in $\mb{R}^n$. The solution to this system is represented by a vector that lies on all these hyperplanes.

### Theorem 2.1.1

If a set of linear equations is consistent with more than 1 solution, then it has infinite solutions.

In other words, if $\begin{cases}
a_{1, 1} x_1 + \ldots + a_{1, n} x_n = b_1 \\
\vdots
a_{m, 1} x_1 + \ldots + a_{m, n} x_n = b_m \\
\end{cases}$ has solutions $\vec{s}$ and $\vec{t}$ such that $\vec{s} \ne \vec{t}$, then $\vec{s} + c(\vec{s} - \vec{t})$ is a solution for all $c \in \mb{R}$.

Proof:

> Assume $\begin{cases}
a_{1, 1} x_1 + \ldots + a_{1, n} x_n = b_1 \\
\vdots
a_{m, 1} x_1 + \ldots + a_{m, n} x_n = b_m \\
\end{cases}$ has solutions $\vec{s}$ and $\vec{t}$.  
> Clearly, for all $1 \le i \le n$, $a_{i, 1} (s_1 + c(s_1 - t_1)) + \ldots + a_{i, n} (s_n + c(s_n - t_n))
= (a_{i, 1} s_1 + \ldots + a_{i, n} s_n) + c(a_{i, 1} s_1 + \ldots + a_{i, n} s_n) - c(a_{i, 1} t_1 + \ldots + a_{i, n} t_n)
= b_i + cb_i - cb_i = b_i$.  
> So each equation is satisfied, and the system is consistent.  

The set of all solutions to a system of linear equations is known as a **solution set**.

### Solving

When we use the substitution and elimination techniques for solving systems of linear equations, we are forming new systems of lienar equations that have the same solution set as the original. We aim to obtain one that is easier to find the solution set for, and therefore solve the original system.

Note that when we solve a linear system, we don't really need the $x$ variables. Instead, we could write the system $\begin{cases}
a_{1, 1} x_1 + \ldots + a_{1, n} x_n = b_1 \\
\vdots
a_{m, 1} x_1 + \ldots + a_{m, n} x_n = b_m \\
\end{cases}$ more concisely as $\left[\begin{array}{ccc|c}
a_{1, 1} & \ldots & a_{1, n} & b_1 \\
\vdots & \vdots & \vdots & \vdots \\
a_{m, 1} & \ldots & a_{m, n} & b_1 \\
\end{array}\right]$.

This is called the **augmented matrix** of the system of linear equations.

The **coefficient matrix** of the system of linear equations is the same thing, but without the last column containing the constant value. In this case, it would be $\left[\begin{array}{ccc}
a_{1, 1} & \ldots & a_{1, n} \\
\vdots & \vdots & \vdots \\
a_{m, 1} & \ldots & a_{m, n} \\
\end{array}\right]$.

We can combine a coefficient matrix $A$ and a constant vector $\vec{b}$ into an augmented matrix by using the $\left[A \middle| \vec{b}\right]$. This simply adds $\vec{b}$ as a column to the end of $A$.

Solve $\begin{cases}
2x_1 + 3x_2 &= 11 \\
3x_1 + 6x_2 &= 7 \\
\end{cases}$:

> We multiply the first equation by $-3$ to obtain $-6x_1 - 9x_2 = -33$.  
> We multiply the second equation by $2$ to obtain $6x_1 + 12x_2 = 14$.  
> Now we add the first equation to the second equation to obtain $0x_1 + 3x_2 = -19$.  
> Now we multiply the second equation by $\frac{1}{3}$ to obtain $0x_1 + x_2 = -\frac{19}{3}$.  
> Now we add the second equation, multiplied by $9$, to the first equation to obtain $-6x_1 + 0x_2 = -90$.  
> Now we multiply the first equation by $-6$ to obtain $x_1 + 0x_2 = 15$.  
> So $x_1 = 15$ and $x_2 = -\frac{19}{3}$.  

Now solve using operations on the matrix form of the equations, $\left[\begin{array}{cc|c}
2 & 3 & 11 \\
3 & 6 & 7 \\
\end{array}\right]$:

> We multiply the first row by $-3$ to obtain $\left[\begin{array}{cc|c}
-6 & -9 & -33 \\
3 & 6 & 7 \\
\end{array}\right]$.  
> We multiply the second row by $2$ to obtain $\left[\begin{array}{cc|c}
-6 & -9 & -33 \\
6 & 12 & 14 \\
\end{array}\right]$.  
> We add the first to the seocnd to obtain $\left[\begin{array}{cc|c}
-6 & -9 & -33 \\
0 & 3 & -19 \\
\end{array}\right]$.  
> We multiply the second equation by $\frac{1}{3}$ to obtain $\left[\begin{array}{cc|c}
-6 & -9 & -33 \\
0 & 1 & -\frac{19}{3} \\
\end{array}\right]$.  
> Now we add the second equation multiplied by 9 to the first equation to obtain $\left[\begin{array}{cc|c}
-6 & 0 & -90 \\
0 & 1 & -\frac{19}{3} \\
\end{array}\right]$.  
> Now we multiply the first equation by $-\frac{1}{6}$ to obtain $\left[\begin{array}{cc|c}
1 & 0 & 15 \\
0 & 1 & -\frac{19}{3} \\
\end{array}\right]$.  
> So $x_1 = 15$ and $x_2 = -\frac{19}{3}$.  

Note that at every step, we had a system of linear equations that had the same solution set as the original system. Eventually, we reduced the matrix down into a form that we could easily read the values off of.

Also note that there were only really two different operations that we used to solve the system. To make it easier for computers to work with, we define an additional swapping operation:

* Multiplying a row by a non-zero scalar ($cR_i$ multiplies the $i$th row by $c \in \mb{R}, c \ne 0$).
* Adding a multiple of one row to another ($R_i + cR_j$ adds the $j$th row multiplied by $c \in \mb{R}, c \ne 0, i \ne j$ to the $i$th row).
* Swapping two rows ($R_i \leftrightarrow R_j, i \ne j$).

These operations we call the **elementary row operations** (EROs). Note that they are also fully reversible - all EROs have an inverse that undoes the effect of the operation. This is trivial to prove.

Two matrices are **row equivalent** if one can be transformed into another by application of EROs. Since EROs are reversible, if a matrix $A$ is row equivalent to $B$, then $B$ is also transformable into $A$ via the inverse of those EROs, and so $B$ is row equivalent to $A$. In other words, row equivalence is commutative.

A matrix of size $m \times n$ ("$m$ by $n$") has $m$ rows and $n$ columns. With $x_{i, j}$, rows are indexed by $i$, and columns by $j$. This is called row-major ordering.

### Row Reduced Echelon Form

A matrix is in **reduced row echelon form/row canonical form** (RREF) if and only if:

1. All rows with only zeroes are at the bottom. For example, $\begin{bmatrix} 1 & 2 \\ 0 & 0 \end{bmatrix}$, but not $\begin{bmatrix} 0 & 0 \\ 1 & 2 \end{bmatrix}$.
2. The first non-zero entry in each row is 1 (this is called the **leading one**). For example, $\begin{bmatrix} 1 & 0 & 1 \\ 0 & 1 & 3 \end{bmatrix}$, but not $\begin{bmatrix} 4 & 0 & 1 \\ 0 & 1 & 3 \end{bmatrix}$.
3. The leading one in each row, if it exists, appears to the right of the leading one of the row above it. For example, $\begin{bmatrix} 1 & 0 \\ 0 & 1 \end{bmatrix}$, but not $\begin{bmatrix} 1 & 0 \\ 1 & 0 \end{bmatrix}$.
4. The leading one in each row must be the only non-zero entry in its column. For example, $\begin{bmatrix} 1 & 0 & 5 \\ 0 & 1 & 2 \end{bmatrix}$, but not $\begin{bmatrix} 1 & 3 & 5 \\ 0 & 1 & 2 \end{bmatrix}$.

For augmented matrices, we check only the values in all but the last column when seeing if it is in RREF (the values on the left of the vertical line). In other words, we ignore the last column when checking for RREF form.

All matrices are representable in RREF. All matrices have one and only one representation in RREF.

### Theorem 2.2.2

The RREF of a matrix is unique. In other words, each matrix has at most one possible matrix that it is both row equivalent to, and is in RREF.

Proof:

> ;wip: something about proving this in chapter 4

Row reduce $\left[\begin{array}{ccc|c} 1 & 1 & 0 & -7 \\ 2 & 4 & 1 & -16 \\ 1 & 2 & 1 & 9 \end{array}\right]$:

> $\left[\begin{array}{ccc|c}
1 & 1 & 0 & -7 \\
2 & 4 & 1 & -16 \\
1 & 2 & 1 & 9 \\
\end{array}\right]$ is row equivalent to $\left[\left[\begin{array}{ccc|c}
1 & 1 & 0 & -7 \\
0 & 0 & -1 & -34 \\
1 & 2 & 1 & 9 \\
\end{array}\right]$ via $R_2 + (-2)R_3$.  
> This is row equivalent to $\left[\begin{array}{ccc|c}
1 & 1 & 0 & -7 \\
1 & 2 & 1 & 9 \\
0 & 0 & -1 & -34 \\
\end{array}\right]$ via $R_2 \leftrightarrow R_3$.  
> This is row equivalent to $\left[\begin{array}{ccc|c}
1 & 1 & 0 & -7 \\
1 & 2 & 1 & 9 \\
0 & 0 & 1 & 34 \\
\end{array}\right]$ via $(-1)R_3$.  
> This is row equivalent to $\left[\begin{array}{ccc|c}
1 & 1 & 0 & -7 \\
0 & 1 & 1 & 16 \\
0 & 0 & 1 & 34 \\
\end{array}\right]$ via $R_2 - R_1$.  
> This is row equivalent to $\left[\begin{array}{ccc|c}
1 & 1 & 0 & -7 \\
0 & 1 & 0 & -18 \\
0 & 0 & 1 & 34 \\
\end{array}\right]$ via $R_2 - R_3$.  
> This is row equivalent to $\left[\begin{array}{ccc|c}
1 & 0 & 0 & 11 \\
0 & 1 & 0 & -18 \\
0 & 0 & 1 & 34 \\
\end{array}\right]$ via $R_2 - R_3$.  
> This is in RREF.  

Note the general technique used in reducing the matrix. First, we want to obtain a triangle of 0 elements with leading ones diagonally rightwards, by going from top to bottom. Then, we make sure each leading one is the only non-zero element in its column by subtracting from rows below from bottom to top.

This technique is basically modifying the matrix until all the properties except for property 4. Then property 4 can be solved for relatively easily.

It is the basic technique behind **Guass-Jordan elimination**.### Solution Set

A matrix is inconsistent if and only if its RREF contains a row of the form $\left[\begin{array}{ccc|c} 0 & \ldots & 0 & 1 \end{array}\right]$ - no possible values can satisfy this equation ($0 = 1$), so there are no solutions.

Recall that if consistent, a system of linear equations has either one or infinitely many solutions.

Solve $\begin{cases} x_1 + x_2 + x_3 &= 4 \\ x_2 + x_3 &= 3 \end{cases}$:

> The augmented matrix is $\left[\begin{array}{ccc|c} 1 & 1 & 1 & 4 \\ 0 & 1 & 1 & 3 \end{array}\right]$.  
> The matrix in RREF is $\left[\begin{array}{ccc|c} 1 & 0 & 0 & 1 \\ 0 & 1 & 1 & 3 \end{array}\right]$.  
> Note that this corresponds to $x_1 = 1$ and $x_2 + x_3 = 3$, and that the second equation has infinitely many solutions.  
> We can find the general solution by writing everything in terms of the fewest variables possible.  
> Clearly, $x_3 = 3 - x_2$, so the solution is $\vec{x} = \begin{bmatrix} 1 \\ x_2 \\ x_3 \end{bmatrix} = \begin{bmatrix} 1 \\ x_2 \\ 3 - x_2 \end{bmatrix} = \begin{bmatrix} 1 \\ 0 \\ 3 \end{bmatrix} + x_2\begin{bmatrix} 0 \\ 1 \\ -1 \end{bmatrix}$.  
> We can denote this as $\vec{x} = \begin{bmatrix} 1 \\ 0 \\ 3 \end{bmatrix} + s\begin{bmatrix} 0 \\ 1 \\ -1 \end{bmatrix}, s \in \mb{R}$, by assigning $x_2$ to the parameter $s$.  
> This represents a line at the intersection of two planes in $\mb{R}^3$.  

The solution set is, geometrically, either a point, a line, a plane, a hyperplane, or empty (no solutions). If there is only one solution, the solution set is a point.

If a **column** in a coefficient matrix has **no leading ones**, the corresponding variable is called a **free variable**. A free variable is a variable that can be any value. Free variables exists if and only if there are an infinite number of solutions.

### Solving Linear Systems

We can take this technique and generalize it a bit to solve any linear system, or show it to not have any solutions:

1. Write the augmented matrix for the system.
2. Row reduce the matrix.
3. Write the linear system for the new, reduced matrix.
4. Check for equations of the form $0 = b, b \ne 0$, and stop and flag as inconsistent if found.
5. Write all variables in terms of the free variables.
6. Assign a parameter to each free variable.  
7. Write the components that are not already fully solved in terms of the free variables.
8. Write the solution as a linear combination of vectors using vector operations.

The standard technique for row reducing matrices is Guass-Jordan elimination. However, this is not always the most efficient way to do it, and there are a lot of tricks that can be used to speed it up in some special cases.

;wip: rewrite my linear solver lib to multiply only, and divide only at the end, this is precision-preserving through bignum and gmp

However, we don't always need to solve a system. Sometimes, we just need to figure out if there are zero, one, or infinite solutions. We will now look at some tools that can be used to analyze this.

The **rank** of a matrix is the number of leading ones in the RREF of the matrix. This is equivalent to the number of variables minus the number of free variables.

The rank of a matrix $A$ is denoted $\rank A$.

### Theorem 2.2.3

Given an $m \times n$ coefficient matrix $A$ for a linear system:

* If $\rank A < \rank \sys{A}{\vec{b}}$, then the system is inconsistent, where $\vec{b}$ is the right hand side vector for the linear system. In other words, if the rank of the coefficent matrix is less than that of the augmented matrix, then the matrix is inconsistent.
* If $\sys{A}{\vec{b}}$ is consistent, then there are $n - \rank A$ free variables. If there are 0 free variables, then the system has only one solution.
* $\rank A = m$ if and only if the system $\sys{A}{\vec{b}}$ is consistent for every $\vec{b} \in \mb{R}^m$. In other words, there are no free variables if and only if the the system is consistent for every possible vector of right hand side values.

Proof of first:

(point 1)

> Assume $\rank A < \rank \sys{A}{\vec{b}}$.  
> Then there must be a row in the RREF of the augmented matrix with all zeros except the last element, which is 1.  
> This corresponds to $0 = 1$, which makes the system inconsistent.  

Proof:

(point 2)

> Assume $\sys{A}{\vec{b}}$ is consistent.  
> The number of free variables is the number of variables minus the number of those that are not free.  
> Those that are not free have leading ones, so $\rank A$ is the number of non-free variables.  
> So the number of free variables is $n - \rank A$.  

Proof:

(point 3)

> First, we will prove that if the system $\sys{A}{\vec{b}}$ is not consistent for every $\vec{b} \in \mb{R}^m$, then $\rank A \ne m$.  
> Suppose $\sys{A}{\vec{b}}$ is inconsistent for some $\vec{b} \in \mb{R}^m$.  
> Then there must be a row in the RREF of the augmented matrix with all zeros except the last element, which is 1.  
> This row does not contain a leading one, so $\rank A < m$.  
> Now we will prove that if $\rank A \ne m$, then the system $\sys{A}{\vec{b}}$ is not consistent for every $\vec{b} \in \mb{R}^m$.  
> Suppose $\rank A \ne m$. Then $\rank A < m$. Then there is a row of all zeroes in the RREF of A.  
> Then there must be a row in the RREF of the augmented matrix with all zeros except the last element, which is 1.  
> Then the system is inconsistent.  

### Homogenous Systems

A system is **homogenous** if and only if the right-hand side contains only zeros. In other words, it has the form $\sys{A}{\vec{0}}$.

A homogenous matrix is one where the last column is all 0 - a matrix corresponding to a homogenous system.

Note that since the right side is always 0, the RREF of a homogenous matrix also has the right side always 0.

Also note that it is impossible to get a row where every element is 0 except the right hand side. Therefore, **homogenous systems are always consistent**.

For example, $\vec{0}$ is always a solution to a homogenous system. This is called the **trivial solution**.

When we row reduce a homogenous matrix, we can save space by just row reducing the coefficient matrix instead. The last column will all be 0 anyways.

### Theorem 2.2.4

Given an $m \times n$ matrix $A$, $\rank A \le \min{m, n}$.

### Theorem 2.2.5

The solution set of a homogenous system with $n$ variables is a subspace of $\mb{R}^n$.

Note that the solution set of a homogenous system written as a vector equation always has $\vec{0}$ as the constant term. That means that all solutions are linear combinations of a few vectors.

As a result, we can always write the solution set of a homogenous system as the span of a set of vectors.

Because all spans are subspaces (by Theorem 1.2.2), the solution set is a subspace.

Because the solution set is a subspace, we often call it the **solution space** of a aystem.

# 30/1/14

Matrices
--------

Matrices are abstract objects like vectors. We usually denote matrix variables with capital letters.

An $m \times n$ matrix $A$ is a rectangular array with $m$ rows and $n$ columns. We represent the $i$th row and $j$th column as $a_{i, j}$, or $(A)_{i, j}$.

In other words, $A = \begin{bmatrix} a_{1, 1} & \ldots & a_{1, n} \\ \vdots & \vdots & \vdots \\ a_{m, 1} & \ldots & a_{m, n} \end{bmatrix}$.

All $m \times n$ matrices belong to the set $M_{m \times n}$, similar to how all $n$-dimensional vectors belong to the set $\mb{R}^n$.

### Operations

Let $A, B, C$ be matrices.

Equality: $A = B \iff \forall 1 \le i \le m, \forall 1 \le j \le n, (A)_{i, j} = (B)_{i, j}$.

In other words, two matrices are equal if and only if they are both the same size and contain the same entries.

Addition/subtraction: $A \pm B = C \iff \forall 1 \le i \le m, \forall 1 \le j \le n, (C)_{i, j} = (A)_{i, j} \pm (B)_{i, j}$.

In other words, when we add matrices (only defined for matrices of the same size), we simply add their corresponding entries.

Scalar multiplication: $t \in \mb{R}; tA = C \iff \forall 1 \le i \le m, \forall 1 \le j \le n, (C)_{i, j} = t(A)_{i, j}$.

In other words, when we multiply a matrix by a scalar or a scalar by a matrix, we simply multiply each entry in the matrix by the scalar.

With these operations, we can take linear combinations of matrices.

### Theorem 3.1.1

For all $A, B, C \in M_{m \times n}, s, t, \in \mb{R}$:

* Closure under addition: $A + B \in M_{m \times n}$.
* Associativity: $(A + B) + C = A + (B + C)$
* Commutativity: $A + B = B + A$
* Additive identity: $\exists O \in M_{m \times n}, \forall A \in M_{m, n}, A + O = A$ ($O$ is called the zero matrix).
* Additive inverse: $\forall A \in M_{m, n}, \exists -A \in M_{m, n}, A + (-A) = O$.
* Closure under scalar multiplication: $cA \in M_{m, n}$.
* $c(dA) = (cd)A$
* Scalar distributivity: $(c + d)A = cA + dA$.
* Vector distributivity: $c(A + B) = cA + cB$.
* Multiplicative identity: $1A = A$.

### Transpose

Vectors and matrices are closely related. We have been writing vectors as columns for a while now. In fact, we can use vectors to represent the columns of a matrix.

For example, if $\vec{u} = \begin{bmatrix} 1 \\ 2 \\ 3 \end{bmatrix}, \vec{v} = \begin{bmatrix} 4 \\ 5 \\ 6 \end{bmatrix}$, then $\begin{bmatrix} \vec{u} & \vec{v} \end{bmatrix} = \begin{bmatrix} 1 & 4 \\ 2 & 5 \\ 3 & 6 \end{bmatrix}$.

The **transpose** of a matrix $A \in M_{m, n}$ is $A^T \in M_{n, m}$ ("A transposed"), a matrix such that $(A)_{i, j} = (A^T)_{j, i}$.

Note that the dimensions were swapped around. Basically, the rows became the columns, and the columns became the rows - we reflected the entries around a diagonal line starting from the top left.

* $A = \begin{bmatrix} 1 \\ 2 \\ 3 \end{bmatrix}; A^T = \begin{bmatrix} 1 & 2 & 3 \end{bmatrix}$.
* $B = \begin{bmatrix} 1 & 2 \\ 3 & 4 \\ 5 & 6 \end{bmatrix}; B^T = \begin{bmatrix} 1 & 3 & 5 \\ 2 & 4 & 6 \end{bmatrix}$.
* $C = \begin{bmatrix} 1 & 0 \\ 0 & 3 \end{bmatrix}; C^T = \begin{bmatrix} 1 & 0 \\ 0 & 3 \end{bmatrix}$.

Some matrices satisfy the property $A = A^T$. These matrices are called **symmetric**, because they are symmetric about the diagonal line. Note that only square matrices can be symmetric.

Transposes are useful for representing the rows of a matrix with vectors, rather than columns.

For example, if $\vec{u} = \begin{bmatrix} 1 \\ 2 \\ 3 \end{bmatrix}, \vec{v} = \begin{bmatrix} 4 \\ 5 \\ 6 \end{bmatrix}$, then $\begin{bmatrix} \vec{u}^T \\ \vec{v}^T \end{bmatrix} = \begin{bmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \end{bmatrix}$.

### Theorem 3.1.2

For all $A, B \in M_{m, n}, c \in \mb{R}$:

* $(A^T)^T = A$
* $(A + B)^T = A^T + B^T$
* $(cA)^T = c(A^T)$

Also, $(AB)^T = B^T A^T$. Note that the order reversed.

Proof:

(proof of first)

> Clearly, $\forall 1 \le i \le m, \forall 1 \le j \le n, ((A^T)^T)_{i, j} = (A^T)_{j, i} = (A)_{i, j}$.  
> So $(A^T)^T = A$.  

(proof of second)

> Clearly, $\forall 1 \le i \le m, \forall 1 \le j \le n, ((A + B)^T)_{i, j} = (A + B)_{j, i} = (A)_{j, i} + (B)_{j, i} = (A^T)_{i, j} + (B^T)_{i, j}$.  
> So $(A + B)^T = A^T + B^T$.  

(proof of third)

> Clearly, $\forall 1 \le i \le m, \forall 1 \le j \le n, ((cA)^T)_{i, j} = (cA)_{j, i} = c((A)_{j, i}) = c((A^T)_{i, j})$.  
> So $(cA)^T = c(A^T)$.  

# 1/2/14

Matrix Multiplication
---------------------

### Matrix-Vector Multiplication

Consider the linear system $\sys{A}{\vec{B}}$ with the solution $\vec{x}$.

When we multiply a matrix by a vector, we want to have it so that $A\vec{x} = \vec{b}$. This is because it would be very useful to help solve systems of linear equations.

Matrix-vector multiplication can be defined in terms of matrices with represented with row vectors or column vectors.

We will first define it in terms of row vectors.

Let $A = \begin{bmatrix} \vec{a}_1^T \\ \vdots \\ \vec{a}_m^T \end{bmatrix}$ and $A \in M_{m, n}$.

Note that $\vec{a}_i^T$ represents the coefficients of the $i$th equation of the system. So if and only if $\vec{x}$ is a solution, $\vec{x} \cdot \vec{a}_i^T = b_i$.

Now we can define matrix multiplication: $A\vec{x} = \begin{bmatrix} \vec{a}_1^T \cdot \vec{x} \\ \vdots \\ \vec{a}_m^T \cdot \vec{x} \end{bmatrix} = \vec{b}$.

Basically, we take the dot product of each row and assemble it together into a vector. The product of a matrix and a vector is therefore a vector.

Note that in order for matrix-vector multiplication to be defined, the number of columns in $A$ must equal the number of rows/components in $\vec{x}$ in order for the dot product to work. An $m \times n$ matrix can only be multiplied by vectors in $\mb{R}^n$.

Now we can also define it in terms of column vectors.

Note that the system $\begin{cases}
a_{1, 1} x_1 + \ldots + a_{1, n} x_n = b_1 \\
\vdots
a_{m, 1} x_1 + \ldots + a_{m, n} x_n = b_m \\
\end{cases}$ has the coefficient matrix $A = \begin{bmatrix} \begin{bmatrix} a_{1, 1} \\ \vdots \\ a_{m, 1} \end{bmatrix} \cdots \begin{bmatrix} a_{1, n} \\ \vdots \\ a_{m, n} \end{bmatrix} \end{bmatrix} = \begin{bmatrix} \vec{c}_1 \ldots \vec{c}_n \end{bmatrix}$, where $\vec{c}_i$ represents the $i$th column of the matrix.

Note that the system can be written as $x_1\begin{bmatrix} a_{1, 1} \\ \vdots \\ a_{m, 1} \end{bmatrix} + \ldots + x_n\begin{bmatrix} a_{1, n} \\ \vdots \\ a_{m, n} \end{bmatrix} = \vec{b}$.

So we can write the system as $x_1 \vec{c}_1 + \ldots + x_n \vec{c}_n = \vec{b}$.

Now we define matrix-vector multiplication in terms of columns as $A\vec{x} = x_1 \vec{c}_1 + \ldots + x_n \vec{c}_n$, where $\vec{c}_i$ represents the $i$th column of $A$.

We define it this way because now we can represent the system with $A\vec{x} = \vec{b}$.

Note that we can use this to select one particular column of the matrix using a standard basis vector (a vector of all zeros except a lone one).

For example, multiplying an $m \times n$ matrix by the $i$th standard basis vector in $\mb{R}^n$ (the vector with all components set to 0 except for the $ith$ component, which is set to 1) will result in the $i$th column of the matrix.

### Matrix-Matrix Multiplication

Now we can define the product of a matrix and a matrix.

Given an $m \times n$ matrix $A = \begin{bmatrix} \vec{a}_1^T \\ \vdots \\ \vec{a}_n^T \end{bmatrix}$ and an $n \times p$ matrix $B = \begin{bmatrix} \vec{b}_1 & \ldots & \vec{b}_p \end{bmatrix}$, $AB = A\begin{bmatrix} \vec{b}_1 & \ldots & \vec{b}_p \end{bmatrix} = \begin{bmatrix} A\vec{b}_1 & \ldots & A\vec{b}_p \end{bmatrix}$ is an $m \times p$ matrix.

Basically, when we multiply a matrix by a matrix, we multiply the first matrix by each of the column vectors in the second matrix.

Note that this requires that the number of columns in $A$ must be the same as the number of rows in $B$, since the dot product must be defined.

Note that $(AB)_{i, j} = \vec{a}_i^T \vec{b}_j = \vec{a}_i \cdot \vec{b}_j = \sum_{k = 1}^n (a_i^T)_k (\vec{a}_k)_j = \sum_{k = 1}^n (A)_{i, k} (B)_{k, j}$.

### Theorem 3.1.3 (Properties of Matrix Multiplication)

If $A, B, C$ are matrices of the required dimensions, $t \in \mb{R}$:

* Distributivity: $A(B + C) = AB + AC$ (left distributive) and $(A + B)C = AC + BC$ (right distributive).
* Scalar multiplication: $t(AB) = (tA)B = A(tB)$.
* Associativity: $(AB)C = A(BC)$.
* Transposition distributivity: $(AB)^T = A^T B^T$.

Note that matrix multiplication is not commutative over matrices: $AB \ne BA$ for some matrices.

### Theorem 3.1.4 (Matrix Multiplication Cancellation)

Note that $A = B \implies AC = BC \wedge CA = BA$. However, $AC = BC \vee CA = BA$ **does not imply** $A = B$ - there is no cancellation law for matrix multiplication.

That said, given $A, B \in M_{m, n}$, $(\forall \vec{x} \in \mb{R}^n, A\vec{x} = B\vec{x}) \implies A = B$.

In other words, if the product of a matrix with an arbitrary vector are equal to each other, then the matrices are themselves equal to each other.

Proof:

> Let $A = \begin{bmatrix} \vec{a}_1 & \ldots & \vec{a}_n \end{bmatrix}, B = \begin{bmatrix} \vec{b}_1 & \ldots & \vec{b}_n \end{bmatrix}$.  
> Let $i \in \mb{N}, i \le n$.  
> Let $\vec{e}_i$ be the $i$th standard basis vector in $\mb{R}^n$ (the vector with all zeroes except the $i$th element, which is 1).  
> Let $\vec{x} \in \mb{R}^n$. Construct $\vec{x} = \vec{e}_i$.  
> Assume $A\vec{x} = B\vec{x}$. Then $A\vec{e}_i = B\vec{e}_i = \vec{a}_i = \vec{b}_i$.  
> Since $i$ is arbitrary, $forall 1 \le i \le n, \vec{a}_i = \vec{b}_i$.  
> So $A = B$.  

# 3/2/14

Identity Matrix
---------------

The identity matrix is the matrix such that, when multiplied with any matrix, or when any matrix is multiplied by it, results in that same matrix.

Formally, the **identity matrix** is the unique matrix $I \in M_{n, n}$ such that $I_{i, j} = \begin{cases} 1 &\text{if } i = j \\ 0 &\text{if } i \ne j \end{cases}$.

We denote this with $I_n$ to represent the square matrix of dimensions $n \times n$. We can also write it as $I_n = \begin{bmatrix} \vec{e}_1 & \ldots & \vec{e}_n \end{bmatrix}$.

In other words, we want to find $I$ such that $\forall A \in M_{m, n}, AI = IA = A$.

Note that this is only possible when $m = n$, since if it wasn't, the product of the matrices would result in a matrix of a different size.

We will now find the identity matrix. We want $A = AI$. So $\begin{bmatrix} \vec{a}_1 & \ldots & \vec{a}_n \end{bmatrix} = A\begin{bmatrix} \vec{i}_1 & \ldots & \vec{i}_n \end{bmatrix} = \begin{bmatrix} A\vec{i}_1 & \ldots & A\vec{i}_n \end{bmatrix}$.

So $\vec{a}_c = A\vec{i}_c$ for all $1 \le c \le n$. Recall that $\vec{i}_c = \vec{e}_c \implies \vec{a}_c = A\vec{i}_c$, where $\vec{e}_c$ is the $c$th standard basis vector. So $\vec{i}_c = \vec{e}_c$.

Therefore, one possible value of $I$ is $\begin{bmatrix} \vec{e}_1 & \ldots & \vec{e}_n \end{bmatrix}$.

We can also construct a similar proof for $A = IA$.

### Thoerem 3.1.5

If $I = \begin{bmatrix} \vec{e}_1 & \ldots & \vec{e}_n \end{bmatrix}$, then $A = AI = IA$.

### Theorem 3.1.6

The multiplicative identity for $M_{n, n}$ is unique.

Proof:

> Let $I_1, I_2$ be two possibly equal multiplicative identities in $M_{n, n}$.  
> Since $I_1$ is a multiplicative identity, $I_2 = I_1 I_2$.  
> Since $I_2$ is a multiplicative identity, $I_1 = I_1 I_2$.  
> So $I_1 = I_2$ and all multiplicative identities are equal to each other.  
> Therefore, multiplicative identities are unique.  

For example, for $I \in M_{4, 4}$, $I = \begin{bmatrix} 1 & 0 & 0 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \end{bmatrix}$.

Block Matrices
--------------

Previously, we defined multiplication by splitting up a matrix into its columns. As it turns out, it's also useful to split a matrix up in other ways.

When we write $A = \begin{bmatrix} \vec{a}_1 & \ldots & \vec{a}_n \end{bmatrix}$, we actually split up $A$ into $n$ different blocks, each one with only one column (so we can represent them using vectors).

A **block matrix** is a matrix that contains **blocks**, which are simply smaller matrices that we build the larger matrix out of.

Formally, if $A$ is an $m \times n$ matrix, then $A$ can be written as a $u \times v$ block matrix $A = \begin{bmatrix} A_{1, 1} & \ldots & A_{1, v} \\ \vdots & \vdots & \vdots \\ A_{u, 1} & \ldots & A_{u, v} \end{bmatrix}$, where $A_{x, y}$ is a block and all blocks in any given row in $A$ have the same number of rows, and all blocks in any given column in $A$ have the same number of columns.

For example, given $A = \begin{bmatrix} 1 & 2 & 3 & 4 \\ 5 & 6 & 7 & 8 \end{bmatrix}$, we can split it up to form a block matrix $A = \begin{bmatrix} B & C \end{bmatrix}$, where $B = \begin{bmatrix} 1 & 2 \\ 5 & 6 \end{bmatrix}$ and $C = \begin{bmatrix} 3 & 4 \\ 7 & 8 \end{bmatrix}$.

When we multiply block matrices, we can actually treat the blocks as simple values and multiply them using the same rules as we would use for numbers.

For example, $\begin{bmatrix} A_{1, 1} & A_{1, 2} \end{bmatrix} \begin{bmatrix} B_{1, 1} \\ B_{2, 1} \end{bmatrix} = \begin{bmatrix} A_{1, 1} B_{1, 1} + A_{1, 2} B_{2, 1} \end{bmatrix}$.

# 8/2/14

Matrix Mappings
---------------

A **function** is a rule that associates $x \in A$ to $f(x) \in B$. This is written as $f: A \to B$, where $A$ is the **domain** of $f$, and $B$ is the **codomain** of $f$.

$f(a)$ is the "**image** of $a$ under $f$". An **image** is a subset of the codomain corresponding to the function values for a subset of the domain.

Formally, $I = \set{y \in C : \exists x \in D, f(x) = y}$ where $C$ is the codomain, $D$ is a subset of the domain, and $I$ is the image,

A **matrix mapping** is a function $f: \mb{R}^n \to \mb{R}^m$ where $f(\vec{x}) = A\vec{x}$ for some matrix $A \in M_{m, n}$.

In other words, it is a function over vectors that multiplies matrix by the given vector.

We can write this as $f\left(\begin{bmatrix} x_1 \\ \vdots \\ x_n \end{bmatrix}\right) = \begin{bmatrix} y_1 \\ \vdots \\ y_m \end{bmatrix}$, or with the more aesthetically pleasing notation $f(x_1, \ldots, x_n) = (y_1, \ldots, y_m)$.

What is the domain/codomain of $f(\vec{x}) = A\vec{x}, A = \begin{bmatrix} 2 & 3 \\ -4 & 0 \\ 5 & 1 \end{bmatrix}$.

> Clearly, $f$ is defined iff and only if the matrix multiplication is defined, which is when $\vec{x}$ has 2 components.  
> So $\vec{x} \in \mb{R}^2$.  
> Since $A$ has 3 rows, $f(\vec{x})$ also has 3 rows.  
> So $f(\vec{x}) \in \mb{R}^3$.  

We can also write the function in a simpler form, $f(\vec{x}) = \begin{bmatrix} 2x_1 + 3x_2 \\ -4x_1 \\ 5x_1 + x_2 \end{bmatrix}$.

# 10/2/14

Note that if $f(\vec{x}) = A\vec{x}$ is a matrix mapping, then $A = \begin{bmatrix} f(1, 0, \ldots, 0) & f(0, 1, \ldots, 0) & \ldots & f(0, \ldots, 1, 0) & f(0, \ldots, 0, 1) \end{bmatrix}$.

### Theorem 3.3.1 (Linearity of Matrix Mappings)

Given $A \in M_{m, n}, f(\vec{x}) = A\vec{x}$, $\forall \vec{x}, \vec{y} \in \mb{R}^n, \forall s, t \in \mb{R}, f(s\vec{x} + t\vec{y}) = sf(\vec{x}) + tf(\vec{y})$.

In other words, when we multiply a matrix by a linear combination of vectors, it is equivalent to the linear combination of multiplying the matrix by the vectors directly.

This is the **linearity property**. What this theorem states is that all matrix mappings have the linearity property.

Proof:

> Let $A \in M_{m, n}, f(\vec{x}) = A\vec{x}, \vec{x}, \vec{y} \in \mb{R}^n, s, t \in \mb{R}$.  
> Then $f(s\vec{x} + t\vec{y}) = A(s\vec{x} + t\vec{y}) = As\vec{x} + At\vec{y} = sA\vec{x} + tA\vec{y} = sf(\vec{x}) + tf(\vec{y})$.  

Linear Mappings
---------------

A **linear mapping/linear transformation/linear operator** is a function $L: \mb{R}^n \to \mb{R}^m$ that has the linearity property.

In other words, given $L: \mb{R}^n \to \mb{R}^m$, $L$ is a linear mapping if and only if $L(s\vec{x} + t\vec{y}) = sL(\vec{x}) + tL(\vec{y}), \vec{x}, \vec{y} \in \mb{R}^n, s, t \in \mb{R}$.

To prove that a function is a lienar mapping, we simply need to prove that it has the inearity property.

Prove that $\proj_{\vec{a}}$ is a linear operator:

> $$
\begin{align}
\proj_{\vec{a}} (s\vec{x} + t\vec{y}) &= \left((s\vec{x} + t\vec{y}) \cdot \frac{\vec{a}}{\magn{a}}\right) \frac{\vec{a}}{\magn{a}} \\
&= \left(s\vec{x} \cdot \frac{\vec{a}}{\magn{a}}\right) \frac{\vec{a}}{\magn{a}} + \left(t\vec{y} \cdot \frac{\vec{a}}{\magn{a}}\right) \frac{\vec{a}}{\magn{a}} \\
&= s\proj_{\vec{a}} \vec{x} + t\proj_{\vec{a}} \vec{y} \\
\end{align}
$$
> Therefore, $\proj_{\vec{a}}$ has the linearity property and is a linear mapping.  

### Theorem 3.2.2

If $L: \mb{R}^n \to \mb{R}^m$ is a linear mapping, then $L(\vec{x}) = A\vec{x}$, where $A = \begin{bmatrix} L(\vec{e}_1) & \ldots & L(\vec{e}_n) \end{bmatrix}$ and $\vec{e}_i$ is the $i$th standard basis vector in $\mb{R}^n$.

Proof:

> Let $\vec{x} \in \mb{R}^n$ and $\vec{e}_i$ be the $i$th standard basis vector. Then $\vec{x} = x_1 \vec{e}_1 + \ldots + x_n \vec{e}_n$.  
> Then $L(\vec{x}) = L(x_1 \vec{e}_1 + \ldots + x_n \vec{e}_n) = x_1 L(\vec{e}_1) + \ldots + x_n L(\vec{e}_n) = \begin{bmatrix} L(\vec{e}_1) & \ldots & L(\vec{e}_n) \end{bmatrix} \vec{x}$.  
> Let $A = \begin{bmatrix} L(\vec{e}_1) & \ldots & L(\vec{e}_n) \end{bmatrix}$.  
> Then $L(\vec{x}) = A\vec{x}$.  

The matrix $A$ in the theorem above is called the **standard matrix** of the linear mapping $L$. It is the matrix such that $L(\vec{x}) = A\vec{x}$

We denote this as $A = [L]$, where $L$ is a linear mapping. Additionally, $L(\vec{x}) = [L]\vec{x}$

Find the standard matrix of $\proj_{\vec{a}}$:

> $$
\begin{align}
\proj_{\vec{a}} \vec{x} &= \left(\vec{x} \cdot \frac{\vec{a}}{\magn{a}}\right) \frac{\vec{a}}{\magn{a}} \\
\proj_{\vec{a}} \vec{e}_i &= \frac{\vec{a}_i}{\magn{a}} \frac{\vec{a}}{\magn{a}} = \vec{a}_i \frac{\vec{a}}{\magn{a}^2} \\
f(\vec{x}) &= A\vec{x} = \proj_{\vec{a}} \\
A &= \begin{bmatrix} \vec{a}_1 \frac{\vec{a}}{\magn{a}^2} & \ldots & \vec{a}_n \frac{\vec{a}}{\magn{a}^2} \end{bmatrix} \\
\end{align}
$$

# 11/2/14

### Rotations

$R_\theta: \mb{R}^2 \to \mb{R}^2$ is a linear mapping $R_\theta(x_1, x_2)$ that rotates a vector by an angle $\theta$ counterclockwise.

We can geometrically determine that the location of $\vec{x}$ after rotation is $R_\theta(x_1, x_2) = \begin{bmatrix} x_1 \cos \theta - x_2 \sin \theta \\ x_1 \sin \theta + x_2 \cos \theta \end{bmatrix}$.

Now we can convert it into a matrix mapping: $R_\theta(\vec{e}_1) = x_1 \begin{bmatrix} \cos \theta \\ \sin \theta \end{bmatrix}, R_\theta(\vec{e}_2) = x_2 \begin{bmatrix} -\sin \theta \\ \cos \theta \end{bmatrix}$.

So $R_\theta(\vec{x}) = \begin{bmatrix} \cos \theta & -\sin \theta \\ \sin \theta & \cos \theta \end{bmatrix}\vec{x}$.

$\begin{bmatrix} \cos \theta & -\sin \theta \\ \sin \theta & \cos \theta \end{bmatrix}$ is called a **rotation matrix**.

### Reflections

$\refl_P: \mb{R}^n \to \mb{R}^n$ is a linear mapping $\refl_P(\vec{x})$ that reflects $\vec{x}$ about the hyperplane $P$.

We geometrically determine that the relection of a vector about a hyperplane is the projection of the vector on the hyperplane minus the perpendicular.

In other words, $\refl_P \vec{x} = \proj_P \vec{x} - \prp_P \vec{x} = (\vec{x} - \prp_P \vec{x}) - \prp_P \vec{x} = \vec{x} - 2\prp_P \vec{x} = \vec{x} - 2\proj_{\vec{n}} \vec{x}$, where $\vec{n}$ is the normal of the hyperplane.

Now we find the standard matrix of this operation. Let $\vec{n}$ be the normal of the plane. Then $\refl_P \vec{e}_i = \vec{e}_i - 2\proj_{\vec{n}} \vec{e}_i$.

So $\refl_P \vec{x} = \begin{bmatrix} \vec{e}_1 - 2\proj_{\vec{n}} \vec{e}_1 & \ldots & \vec{e}_n - 2\proj_{\vec{n}} \vec{e}_n \end{bmatrix} \vec{x}$.

# 14/2/14

Range
-----

The **range** of a function $f: \mb{R}^n \to \mb{R}^m$ is the set of all images (function values) that $f$ produces for any $\vec{x} \in \mb{R}^n$.

Range in mathematics can refer to this set of images, or to the codomain. The difference between the image and the codomain is that the image is always a subset of the codomain - the codomain also may include values that $f(\vec{x})$ cannot possibly produce. The codomain is something we define for the function, while the image is a property of the function itself.

For example, the image of $f(\vec{x}) = \vec{0}$ ($f: \mb{R}^2 \to \mb{R}^3$) is $\set{\vec{0}}$, while the codomain is $\mb{R}^3$. The domain is $\mb{R}^2$.

Formally, we denote range as $\range f = \set{f(\vec{x}) \middle| \vec{x} \in \mb{R}^n}$. It is basically the set of all values the function can produce.

A value $\vec{y}$ is in the range (image) if $\exists \vec{x} \in \mb{R}^n, f(\vec{x}) = \vec{y}$. We simply prove that $\vec{y} \in \range f$

### Theorem 3.3.2

If $L: \mb{R}^n \to \mb{R}^m$ is linear, then $\range L$ is a subspace of the codomain, $\mb{R}^m$.

Also, if $L$ is linear, then $L(\vec{0}) = \vec{0}$.

Proof:

> Assume $L: \mb{R}^n \to \mb{R}^m$ is linear.  
> By definition, $\range L \subseteq \mb{R}^m$.  
> Since $L(\vec{0}) = \vec{0}$, $\vec{0} \in \range L$.  
> Let $\vec{y}, \vec{z} \in \range L$.  
> Then $\exists \vec{w} \in \mb{R}^n, L(\vec{w}) = \vec{y}$ and $\exists \vec{x} \in \mb{R}^n, L(\vec{x}) = \vec{z}$.  
> Clearly, $\vec{y} + \vec{z} = L(\vec{w}) + L(\vec{x}) = L(\vec{w} + \vec{x})$ and $L(\vec{w} + \vec{x}) \in \range L$, so $\vec{y} + \vec{z} \in \range L$.  
> Clearly, $c\vec{y} = cL(\vec{w}) = L(c\vec{w})$ and $L(c\vec{w}) \in \range L$, so $c\vec{y} \in \range L$.  
> So $\range L$ satisfies the subspace test, and is a subspace of $\mb{R}^m$.  

Find a basis of $\range L$ where $L(x_1, x_2, x_3) = (x_1 + x_2, 0, x_3)$:

> Clearly, $L\left(\begin{bmatrix} x_1 \\ x_2 \\ x_3 \end{bmatrix}\right) = \begin{bmatrix} x_1 + x_2 \\ 0 \\ x_3 \end{bmatrix} = (x_1 + x_2)\begin{bmatrix} 1 \\ 0 \\ 0 \end{bmatrix} + x_3\begin{bmatrix} 0 \\ 0 \\ 1 \end{bmatrix}$.  
> So $\set{\begin{bmatrix} 1 \\ 0 \\ 0 \end{bmatrix}, \begin{bmatrix} 0 \\ 0 \\ 1 \end{bmatrix}}$ spans $\range L$.  
> Clearly, this set is linearly independent. So it is a basis of $\range L$.  

Kernel
------

The **kernel** of a linear mapping $L: \mb{R}^n \to \mb{R}^m$ is the set of all vectors in the domain $\mb{R}^n$ that have an image of $\vec{0}$ under $L$ ($L(\vec{x}) = 0$).

Formally, $\ker L = \set{\vec{x} \in \mb{R}^n \middle| L(\vec{x}) = \vec{0}}$. Basically, it is the set of vectors that make the function produce the zero vector.

A vector $\vec{x}$ is in the kernel of the function if and only if $L(\vec{x}) = \vec{0}$.

### Theorem 3.3.2

If $L: \mb{R}^n \to \mb{R}^m$ is linear, then $\ker L$ is a subspace of the domain, $\mb{R}^n$.

Proof:

> Assume $L: \mb{R}^n \to \mb{R}^m$ is linear.  
> By definition, $\ker L \subseteq \mb{R}^n$.  
> Since $L(\vec{0}) = \vec{0}$, $\vec{0} \in \range L$.  
> Let $\vec{y}, \vec{z} \in \ker L$.  
> Clearly, $L(\vec{y} + \vec{z}) = L(\vec{y}) + L(\vec{z}) = \vec{0} + \vec{0} = \vec{0}$, so $\vec{y} + \vec{z} \in \ker L$.  
> Clearly, $L(c\vec{y}) = cL(\vec{y}) = c\vec{0} = \vec{0}$ and $\vec{y} \in \ker L$, so $c\vec{y} \in \range L$.  
> So $\ker L$ satisfies the subspace test, and is a subspace of $\mb{R}^n$.  

Find a basis of the kernel of $L(x_1, x_2, x_3) = (x_1 + x_2, 0, x_3)$:

> Let $\vec{x} \in \ker L$.  
> By definition, $L(x_1, x_2, x_3) = (0, 0, 0)$.  
> So $\begin{cases} x_1 + x_2 &= 0 \\ x_3 &= 0 \end{cases}$, and $x_2 = -x_1$, so $\vec{x} = \begin{bmatrix} x_1 \\ -x_1 \\ 0 \end{bmatrix} = x_1\begin{bmatrix} 1 \\ -1 \\ 0 \end{bmatrix}$.  
> Clearly, $\set{\begin{bmatrix} 1 \\ -1 \\ 0 \end{bmatrix}}$ spans $\ker L$ and is linearly independent, so it is a basis.  

### Theorem 3.3.4

Given a linear mapping $L: \mb{R}^n \to \mb{R}^m$ with a standard matrix $A = [L]$, $\vec{x} \in \ker L \iff A\vec{x} = \vec{0}$.

The **nullspace** of a matrix $A$ is the set $\operatorname{Null}(A) = \set{\vec{x} \in \mb{R}^n \middle| A\vec{x} = \vec{0}}$. In other words, the set of all vectors that make its corresponding linear mapping produce the zero vector.

Also, if $L: \mb{R}^n \to \mb{R}^m$ is linear, then $\ker L = \operatorname{Null}([L])$.

### Theorem 3.3.5

Given a linear mapping $L: \mb{R}^n \to \mb{R}^m$ with a standard matrix $A = [L] = \begin{bmatrix} \vec{a}_1 & \ldots & \vec{a}_n \end{bmatrix}$, then $\range L = \spn \set{\vec{a}_1, \ldots, \vec{a}_n}$.

Proof:

> Let $\vec{y} \in \range L$. Then $\exists \vec{x} \in \mb{R}^n, L(\vec{x}) = \vec{y}$.  
> Clearly, $\vec{y} = L(\vec{x}) = A\vec{x} = \begin{bmatrix} \vec{a}_1 & \ldots & \vec{a}_n \end{bmatrix}\vec{x} = x_1\vec{a}_1 + \ldots + x_n\vec{a}_n$.  
> Since $\vec{x}$ is arbitrary, $x_1\vec{a}_1 + \ldots + x_n\vec{a}_n \in \spn \set{\vec{a}_1, \ldots, \vec{a}_n}$.  
> So $\range L \subseteq \spn \set{\vec{a}_1, \ldots, \vec{a}_n}$.  
> Clearly, $\spn \set{\vec{a}_1, \ldots, \vec{a}_n} \subseteq \range L$, so $\range L = \spn \set{\vec{a}_1, \ldots, \vec{a}_n}$.  

The **column space** of a matrix $A = \begin{bmatrix} \vec{a}_1 & \ldots & \vec{a}_n \end{bmatrix}$ is $\operatorname{Col}(A) = \set{A\vec{x} \middle| \vec{x} \in \mb{R}^n} = \spn \set{\vec{a}_1, \ldots, \vec{a}_n}$.

Also, if $L: \mb{R}^n \to \mb{R}^m$ is linear, then $\range L = \operatorname{Col}([L])$.

The **row space** of a matrix $A$ is $\operatorname{Row}(A) = \operatorname{Col}(A^T)$. It is simply the span of the rows of the matrix instead of the columns.

The **left nullspace** of a matrix $A$ is $\operatorname{Null}(A^T)$. It is simply the nullspace of the matrix transposed.

Operations on Linear Mappings
-----------------------------

Let $L: \mb{R}^n \to \mb{R}^m$ and $M: \mb{R}^n \to \mb{R}^m$ be linear mappings. Let $t \in \mb{R}$.

Equality: $L = M \iff \forall \vec{x} \in \mb{R}^n, L(\vec{x}) = M(\vec{x})$.

Addition/subtraction: we can define $L \pm M: \mb{R}^n \to \mb{R}^m$, and $\forall \vec{x} \in \mb{R}^n, (L \pm M)(\vec{x}) = L(\vec{x}) \pm M(\vec{x})$.

Scalar multiplication: we can define $tL: \mb{R}^n \to \mb{R}^m$, and $\forall \vec{x} \in \mb{R}^n, (tL)(\vec{x}) = tL(\vec{x})$.

The set $\mb{L}$ is the set of all possible linear mappings. The domain is $\mb{R}^n$ and the codomain is $\mb{R}^m$ for all linear mappings in this set.

### Theorem 3.4.1

$[L \pm M] = [L] \pm [M]$ and $[tL] = t[L]$. In other words, addition and scalar multiplication over linear mappings are equivalent to the same operation applied to their standard matrices.

Proof:

> Let $\vec{x} \in \mb{R}^n$.  
> Clearly, $(L + M)(\vec{x}) = L(\vec{m}) + M(\vec{x}) = ([L] + [M])\vec{x}$.  
> So $[L + M] = [L] + [M]$.  
> Clearly, $(tL)(\vec{x}) = tL(\vec{x}) = (t[L])\vec{x}$.  
> So $[tL] = t[L]$.  

### Theorem 3.4.2

Let $L, M, N \in \mb{L}$ and $c, d \in \mb{R}$:

* Closure under addition: $L + M \in \mb{L}$.
* Associativity: $(L + M) + N = L + (M + N)$.
* Commutativity: $L + M = M + L$.
* Additive identity: $\exists O \in \mb{L}, L + O = L$ ($O(\vec{x}) = \vec{0} = O\vec{x}$).
* Additive inverse: $\exists (-L) \in \mb{L}, L + (-L) = O$.
* Closure under scalar multiplication: $cL \in \mb{L}$.
* $c(dL) = (cd)L$.
* $(c + d)L = cL + dL$.
* $c(L + M) = cL + cM$.
* Multiplicative identity: $1L = L$.

### Composition

Given $L: \mb{R}^n \to \mb{R}^m$ and $M: \mb{R}^m \to \mb{R}^p$, $M \circ L = M(L(\vec{x})) = [M][L]\vec{x}$.

Also, $[M \circ L] = [M][L]$.

Find the standard matrix of $R_\frac{\pi}{2} \circ R_\frac{3\pi}{2}$:

> Recall that $R_\theta = \begin{bmatrix} \cos \theta & -\sin \theta \\ \sin \theta & \cos \theta \end{bmatrix}$.  
> So $R_\frac{\pi}{2} \circ R_\frac{3\pi}{2} = \begin{bmatrix} 0 & -1 \\ 1 & 0 \end{bmatrix} \begin{bmatrix} 0 & 1 \\ -1 & 0 \end{bmatrix}\vec{x} = \begin{bmatrix} 1 & 0 \\ 0 & 1 \end{bmatrix} \vec{x}$.  
> So the standard matrix is $\begin{bmatrix} 1 & 0 \\ 0 & 1 \end{bmatrix}$

Note that this is the identity matrix. This is because we rotated the vector by 90 degrees, then 270 degrees - back to where we started.

The **identity mapping** $I \in \mb{L}$ is the mapping such that $I(\vec{x}) = I\vec{x}$. Note that the standard matrix of this linear mapping is the identity matrix.

A linear mapping $L$ is **invertible** if and only if there exists another linear mapping $M$ such that $L \circ M = I$ ($L(M(\vec{x})) = \vec{x}$). If $M$ exists, then $M = L^{-1}$.

The standard matrix of $M$ is such that $[L][M] = I$. Note that in order for the inverse to exist, $L$ must therefore have the same number of rows as $M$ has columns.

In summary, the four **fundamental subspaces** of a matrix are:

* Row space
* Column space
* Nullspace
* Left Nullspace

# 1/3/14

Vector Spaces
-------------

A **real vector space** is a set $\mb{V}$ of vectors put together with an addition operation, denoted $\vec{x} \oplus \vec{y}$, and a scalar multiplication operation, denoted $t \odot \vec{x}$, such that for any $\vec{a}, \vec{b}, \vec{c} \in \mb{V}, u, v \in \mb{V}$:

* Closure under addition: $\vec{a} \oplus \vec{b} \in \mb{V}$
* Associativity: $(\vec{a} \oplus \vec{b}) \oplus \vec{c} = \vec{a} \oplus (\vec{b} \oplus \vec{c})$
* Commutativity: $\vec{a} \oplus \vec{b} = \vec{b} \oplus \vec{a}$
* Additive identity: $\exists \vec{0} \in \mb{V}, \vec{a} \oplus \vec{0} = \vec{a}$. This is known as the zero vector.
* Additive inverse: $\exists (-\vec{a}) \in \mb{V}, \vec{a} \oplus (-\vec{a}) = \vec{0}$
* Closure under scalar multiplication: $u \odot \vec{a} \in \mb{V}$
* $u \odot (v \odot \vec{a}) = (uv) \odot \vec{a}$
* Scalar distributivity: $(u + v) \odot \vec{a} = (u \odot \vec{a}) \oplus (v \odot \vec{a})$
* Vector distributivity: $u \odot (\vec{a} \oplus \vec{b}) = u \odot \vec{a} \oplus u \odot \vec{b}$
* Scalar multiplicative identity: $1 \odot \vec{a} = \vec{a}$

The "vectors" in a vector space don't necessarily have to be traditional vectors. They can also be things like polynomials or even sets.

Unlike with subspaces, we cannot assume that a few properties will imply the rest. So in order to prove that something is a vector space, we have to prove all ten properties are satisfied.

In this course, a **vector space** is the same thing as a real vector space. In practice, there are other types of vector spaces, like complex vector spaces.

We are using $\oplus$ and $\odot$ rather than $+$ and $\cdot$ because it makes it easier to see that the operations are not necessarily the same thing as real addition or multiplication - that they are non-standard.

$+$ and $\cdot$ are called the **standard addition** and **standard multiplication**, respectively.

We can denote the zero vector of a vector space with $\vec{0}_{\mb{V}}$ to show which vector space it is in.

An example of a vector space is $\mb{R}^n$ with standard addition and standard multiplication. It is obvious that this satisfies all ten properties of the definition of a vector space.

Another example of a vector space is $P_n(\mb{R})$, which is the set of all polynomials with degree less than or equal to $n$ with real coefficients. Here, the addition operation is standard addition of polynomials, and the scalar multiplication operation is the standard scalar multiplication of polynomials.

Another example of a vector space is $M_{m \times n}$. Together with standard matrix multiplication and scalar multiplication of the matrices, this forms a vetor space. Likewise with linear mappings, with the standard linear mapping operations.

### Theorem 4.1.1

If $\mb{V}$ is a vector space and $\vec{v} \in \mb{V}$, then $\vec{0} = 0 \odot \vec{v}$ and $-\vec{v} = (-1) \odot \vec{v}$.

In other words, scalar multiplication by 0 results in the additive identity and scalar multiplication by -1 results in the additive inverse.

Using this, we can always find the additive identity by picking any vector and multiplying by 0, and always find the additive inverse by multiplying by -1.

Proof:

> Clearly, $0 \odot \vec{v} = 0 \odot \vec{v} \oplus \vec{0} = 0 \odot \vec{v} \oplus 1\vec{v} \oplus (-\vec{v}) = (0 + 1) \odot \vec{v} \oplus (-\vec{v}) = \vec{v} \oplus (-\vec{v}) = \vec{0}$.  
> Clearly, $(-1) \odot \vec{v} = \vec{0} \oplus (-1) \odot \vec{v} = 1\vec{v} + (-\vec{v}) \oplus (-1) \odot \vec{v} = 0\vec{v} + (-\vec{v}) = -\vec{1\vec{v} + (-\vec{v}) \oplus (-1) \odot \vec{v}}$.  

Prove that $\vec{D} = \set{\vec{x} \in \mb{R} \middle| x > 0}$, $x, y \in \mb{D}$, where $x \oplus y = xy$ and $t \odot x = x^t$:

> Let $x, y, z \in \mb{D}, c, d \in \mb{R}$.  
> So $xy > 0$, and $x \oplus y \in \mb{D}$.  
> So $(x \oplus y) \oplus z = (xy)z = x(yz) = x \oplus (y \oplus z)$.  
> So $x \oplus y = xy = yx = y \oplus x$.  
> So $\vec{0} = 0 \odot x = x^0 = 1$, by theorem 4.1.1.  
> So $-x = -1 \odot x = x^{-1} = \frac{1}{x}$, by theorem 4.1.1.  
> So $x^c > 0$, and $c \odot x \in \mb{D}$.  
> So $c \odot (d \cdot x) = x^{cd} = x^{dc} = d \odot (c \odot x)$.  
> So $(c + d) \odot x = x^{c + d} = x^c x^d = c \odot x \oplus d \odot x$.  
> So $c \odot (x \oplus y) = (xy)^c = x^c y^c = c \odot x \oplus c \odot y$.  
> So $1 \odot x = x^1 = x$.  
> So all ten properties are satisfied and this is a vector space.  

Note that all $\vec{x} \in \mb{R}$ can be related to $\vec{y} \in \mb{D}$ using $\vec{y} = a^\vec{x}$, where $a > 1$.

For example, the empty set is not a vector space because all vector spaces must have at least one element, the zero vector.

### Subspaces

A set $\mb{S}$ is a **subspace** of $\mb{V}$ if and only if:

* $\mb{S}$ is a subset of $\mb{V}$.
* $\mb{S}$ is a vector space using the same operations as $\mb{V}$.

Since we know more about $\mb{S}$ and $\mb{V}$ - that they are vector spaces - we can again use the **subspace test** to see if some $\mb{S}$ is a subspace of some $\mb{V}$.

### Theorem 4.1.2 (Subspace Test for Vector Spaces)

A set $\mb{S}$ is a subspace of a set $\mb{V}$ if and only if, for any $\vec{x}, \vec{y} \in \mb{S}, t \in \mb{R}$:

* $\mb{S}$ is not empty (this allows us to instantiate $\vec{x}$ and $\vec{y}$). We can test this by checking if the zero vector is in the set.
* $\mb{S}$ is a subset of $\mb{V}$.
* Closure under addition: $\vec{x} \oplus \vec{y} \in \mb{S}$.
* Closure under scalar multiplication: $t \odot \vec{x} \in \mb{S}$.

The proof of this is roughly the same as the proof for the subspace test for $\mb{R}$.

### Spanning

Let $\mathcal{B} = \set{\vec{v}_1, \ldots, \vec{v}_k}$ where $\vec{v}_1, \ldots, \vec{v}_k \in \mb{V}$ and $\mb{V}$ is a vector space.

The **span** of $\mathcal{B}$ is $\spn \mathcal{B} = \set{c_1 \vec{v}_1 + \ldots + c_k \vec{v}_k \middle| c_1, \ldots, c_k \in \mb{R}}$.

This is just a generalization of the concept of a span in $\mb{R}^n$ into all vector spaces.

As with subspaces in $\mb{R}^n$, we can prove a vector $\vec{x}$ is in a span if the linear system $\vec{x} = c_1 \vec{v}_1 + \ldots + c_k \vec{v}_k$ has at least one solution. Here, we are solving for $c_1, \ldots, c_k$.

### Linear Independence

If $c_1 \odot \vec{v}_1 \oplus \ldots \oplus c_k \odot \vec{v}_k = \vec{0}_{\mb{V}}$ has any solutions where $c_i \ne 0$ for $1 \le i \le k$, then $\mathcal{B}$ is **linearly dependent**. Otherwise, it is **linearly independent**.

This is just a generalization of the concept of linear independence in $\mb{R}^n$ into all vector spaces.

Also, we can find which vectors are causing the set to be linearly dependent by following these steps:

1. Write the solution to $c_1 \odot \vec{v}_1 \oplus \ldots \oplus c_k \odot \vec{v}_k = \vec{0}_{\mb{V}}$ as a vector equation in the form of $\begin{bmatrix} c_1 \\ \vdots \\ c_n \end{bmatrix} = a_1 \vec{v}_1 + \ldots + a_n \vec{v}_n, a_1, \ldots, a_n \in \mb{R}$.
2. For each $\vec{v}_i, 1 \le i \le n$, let $\vec{c} = \vec{v}_i$ by setting $a_i = 1$ and all other coefficients to 0.
3. For each $\vec{c} = \vec{v}_i$, write each $c_i, 1 \le i \le n$ as a linear equation. For example, $c_4 = c_1 + c_2 + c_3$.
4. Find the vectors that can be written in terms of the other vectors.
5. These are the vectors that can be removed to make the set linearly independent.

### Theorem 4.1.3

Then $\spn \mathcal{B}$ is a subspace of $\mb{V}$.

In other words, the span of a set of vectors that are in a vector space is always a subspace of that vector space.

### Theorem 4.1.4

Then if for some $1 \le i \le k$, $v_i \in \spn \set{\vec{v}_1, \ldots, \vec{v}_{i - 1}, \vec{v}_{i + 1}, \ldots, \vec{v}_k}$, $\spn \mathcal{B} = \spn \set{\vec{v}_1, \ldots, \vec{v}_{i - 1}, \vec{v}_{i + 1}, \ldots, \vec{v}_k}$.

In other words, if a vector in a set can be written as a linear combination of the other vectors in the set (it is in the span), then the span of the set is the same as the span of the set without that vector.

### Theorem 4.1.5

Then $\mathcal{B}$ is linearly dependent if and only if for some $1 \le i \le k$, $v_i \in \spn \set{\vec{v}_1, \ldots, \vec{v}_{i - 1}, \vec{v}_{i + 1}, \ldots, \vec{v}_k}$.

### Theorem 4.1.6

If $\vec{0}_{\mb{V}} \in \mathcal{B}$, then $\mathcal{B}$ is linearly independent.

### Bases

A set $\mathcal{B}$ is a **basis** for the vector space $\mb{V}$ if and only if it spans $\mb{V}$ and is linearly independent.

In other words, given $\mathcal{B} = \set{\vec{v}_1, \ldots, \vec{v}_n}$ and a vector space $\mb{V}$, $\mathcal{B}$ is a basis for $\mb{V}$ if and only if $\spn \mathcal{B} = \mb{V}$ and $\mb{B}$ is linearly independent.

Also, the span of an empty set is $\vec{0}_\mb{V}$.

The vectors in a set that is a basis are known as **basis vectors** and are often given by $\vec{e}_i$ where $` \le i \le n$. The basis can then be represented as $\mathcal{B} = \set{\vec{e}_1, \ldots, \vec{e}_n}$.

We can find bases given a vector space $\mb{V}$ by using the following steps:

1. Write $\vec{v} \in \mb{V}$ in its most general form.
2. Write $\vec{v}$ as a linear combination of vectors $\vec{v}_1, \ldots, \vec{v}_n \in \mb{V}$.
3. Let $\mathcal{B} = \set{\vec{v}_1, \ldots, \vec{v}_n}$.
4. Remove vectors from $\mathcal{B}$ until it is linearly independent.
5. $\mathcal{B}$ is now a basis for $\mb{V}$.

Find a basis for the subspace $\mb{P} = \set{a + bx + cx^2 \in P_2(\mb{R}) \middle| a + c = b}$:

> Let $f(x) \in \mb{P}$. Clearly, $f(x) = a + bx + cx^2$ where $a + c = b$.  
> Then $f(x) = a + (a + c)x + cx^2 = a(1 + x) + c(x + x^2)$.  
> So $f(x)$ is a linear combination of $1 + x \in \mb{P}$ and $x + x^2 \in \mb{P}$, so $\spn \set{1 + x, x + x^2} = \mb{P}$.  
> Clearly, $\set{1 + x, x + x^2}$ is lienarly independent, so it is a basis for $\mb{P}$.  

### Unique Representation Theorem

Let $\mathcal{B} = \set{\vec{v}_1, \ldots, \vec{v}_k}$ be a basis for vector space $\mb{V}$.

Then for every $\vec{v} \in \mb{V}$ can be written as a unique linear combination of $\vec{v}_1, \ldots, \vec{v}_k$ (there is only one of these linear combinations).

> Since $\mathcal{B}$ spans $\mb{V}$, by definition $\exists c_1, \ldots, c_n \in \mb{R}, c_1 \vec{v}_1 + \ldots + c_n \vec{v}_n = \vec{v}$.  
> Let $\vec{v} = d_1 \vec{v}_1 + \ldots + d_n \vec{v}_n$ for some $d_1, \ldots, d_n \in \mb{R}$.  
> Clearly, $d_1 \vec{v}_1 + \ldots + d_n \vec{v}_n = c_1 \vec{v}_1 + \ldots + c_n \vec{v}_n$, so $(c_1 - d_1) \vec{v}_1 + \ldots + (c_n - d_n) \vec{v}_n = \vec{0}_\mb{V}$.  
> Since $\mathcal{B}$ is linearly independent, the only solution is $c_1 - d_1 = \ldots = c_n - d_n = 0$, the trivial solution.  
> So $c_i = d_i$ for all $1 \le i \le n$ and the linear combination is unique.  

For example, consider the polynomials vector space, $P_n(\mb{R})$:

> Let $\mathcal{B} = \set{1, x, x^2, \ldots, x^n}$.  
> Clearly, $\spn \mathcal{B} = P_n(\mb{R})$.  
> Clearly, $\mathcal{B}$ is linearly independent because $c_1 1 + \ldots c_n x^n = 0 + \ldots + 0x^n \implies c_1 = \ldots = c_n = 0$.  
> In fact, we define the standard basis of $P_n(\mb{R})$ to be $\set{1, x, x^2, \ldots, x^n}$.  

Dimension
---------

### Theorem 4.2.1

Let $\mathcal{B} = \set{\vec{v}_1, \ldots, \vec{v}_n}$ be a basis for vector space $\mb{V}$.

If $\set{\vec{w}_1, \ldots, \vec{w}_k}$ is linearly independent, then $k \le n$.

Proof:

> Suppose $k > n$.  
> Clearly, $\forall 1 \le i \le k, \vec{w}_i = a_{i, 1} \vec{v}_1 + \ldots + a_{i, n} \vec{v}_n$.  
> So $c_1 \vec{w}_1 + \ldots + c_k \vec{w}_k = \vec{0}_\mb{V} = c_1 (a_{1, 1} \vec{v}_1 + \ldots + a_{1, n}) + \ldots + c_k (a_{k, 1} \vec{v}_1 + \ldots + a_{k, n}) = (c_1 a_{1, 1} + \ldots + c_k a_{k, 1}) \vec{v}_1 + \ldots + (c_1 a_{1, n} + \ldots + c_k a_{k, n}) \vec{v}_1$.  
> Since $\mathcal{B}$ is linearly independent, the only solution for the coefficients of $\vec{v}_i$ is the trivial solution, which is $\begin{cases} c_1 a_{1, 1} + \ldots + c_k a_{k, 1} &= 0 \\ \vdots \\ c_1 a_{1, n} + \ldots + c_k a_{k, n} &= 0 \end{cases}$.  
> This solution is itself a system of linear equations that we can represent with the $n \times k$ coefficient matrix $A$.  
> Clearly, $\rank A \le n$ since $A$ has $k$ columns, so there are infinite solutions.  
> So $c_1 \vec{w}_1 + \ldots + c_k \vec{w}_k = \vec{0}_\mb{V}$ has infinite solutions.  
> This is a contradiction because the set is linearly independent. Therefore, $k < n$.  

### Theorem 4.2.2

If $\set{\vec{v}_1, \ldots, \vec{v}_n}$ and $\set{\vec{w}_1, \ldots, \vec{w}_k}$ are both bases in $\mb{V}$, then $k = n$.

This is easily proves using theorem 4.2.1.

### Definition

The **dimension** of a vector space $\mb{V}$ is the number of elements in a basis $\mathcal{B}$ of $\mb{V}$.

In other words, if $\mathcal{B} = \set{\vec{v}_1, \ldots, \vec{v}_n}$ is a basis for $\mb{V}$, then the dimension of $\mb{V}$ is $\dim \mb{V} = n$ and $\mb{V}$ is an $n$-dimensional vector space.

Since $\set{\vec{0}_\mb{V}}$ has only the basis $\emptyset$, the dimension is $\dim \set{\vec{0}_\mb{V}} = 0$.

If the basis of a vector space has infinite elements, then the vector space is **infinite-dimensional**.

For example:

* $\dim \mb{R}^n = n$ since the standard basis is $\set{\begin{bmatrix} 1 \\ 0 \\ \vdots \\ 0 \end{bmatrix}, \ldots, \begin{bmatrix} 0 \\ \vdots \\ 0 \\ 1 \end{bmatrix}}$.
* $\dim M_{m \times n}(\mb{R}) = mn$ since the standard basis is a set of $mn$ matrices with a single 1 in unique locations.
* $\dim P_n(\mb{R}) = n + 1$ since the standard basis is $\set{1, x, x^2, \ldots, x^n}$.

To find the dimension of a vector space, we simply need to find a basis.

For example, find $\dim \mb{W}$ where $\mb{W} = \set{p(x) \in P_3(\mb{R}) \middle| p(3) = 0}$:

> Let $p(x) \in \mb{W}$. Then $p(3) = 0$.  
> So $\exists a, b, c \in \mb{R}, p(x) = (x - 3)(a + bx + cx^2) = a(x - 3) + bx(x - 3) + cx^2(x - 3) = a(x - 3) + b(x^2 - 3x) + c(x^3 - 3x^2)$.  
> So $\set{x - 3, x^2 - 3x, x^3 - 3x^2}$ spans $\mb{W}$ and since it is linearly independent, it is a basis for $\mb{W}$.  
> So $\dim \mb{W} = 3$, since there are 3 elements in the basis.  

### Theorem 4.2.3

Given a vector space $\mb{V}$:

* A set with more than $\dim \mb{V}$ elements is linearly dependent.
* A set with less than $\dim \mb{V}$ elements cannot span $\mb{V}$.
* Given a set $\mathcal{B}$ with $n$ elements, $\mathcal{B}$ spans $\mb{V}$ if and only if $\mathcal{B}$ is linearly independent.

;wip: prove this

Let $A_1 = \begin{bmatrix} 1 & 1 \\ 0 & 0 \end{bmatrix}, A_2 = \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}$. Extend $\set{A_1, A_2}$ to be a basis for $M_{2 \times 2}(\mb{R})$:

> Clearly, $\set{E_1, E_2, E_3, E_4}$ spans $M_{2 \times 2}(\mb{R})$ where $E_i$ is the $i$th standard basis matrix (the $i$th entry in the matrix is 1 and all the others are 0).  
> So $\set{A_1, A_2, E_1, \ldots, E_4}$ spans $M_{2 \times 2}(\mb{R})$. Let $A \in M_{2 \times 2}(\mb{R})$.  
> Then $\exists c_1, c_2, c_3, c_4, c_5, c_6 \in \mb{R}, A = c_1 \begin{bmatrix} 1 & 1 \\ 0 & 0 \end{bmatrix} + c_2 \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} + c_3 \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix} + c_4 \begin{bmatrix} 0 & 1 \\ 0 & 0 \end{bmatrix} + c_5 \begin{bmatrix} 0 & 0 \\ 1 & 0 \end{bmatrix} + c_6 \begin{bmatrix} 0 & 0 \\ 0 & 1 \end{bmatrix}$.  
> The augmented matrix for this system is $\left[\begin{array}{cccccc|c}
1 & 1 & 1 & 0 & 0 & 0 & 0 \\
1 & 1 & 0 & 1 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 & 1 & 0 & 0 \\
0 & -1 & 0 & 0 & 0 & 1 & 0 \\
\end{array}\right]$, and the RREF is $\left[\begin{array}{cccccc|c}
1 & 0 & 0 & 1 & 0 & 1 & 0 \\
0 & 1 & 0 & 0 & 0 & -1 & 0 \\
0 & 0 & 1 & -1 & 0 & 0 & 0 \\
0 & 0 & 0 & 0 & 1 & 1 & 0 \\
\end{array}\right]$.  
> So $\begin{bmatrix} c_1 \\ c_2 \\ c_3 \\ c_4 \\ c_5 \\ c_6 \end{bmatrix} = s\begin{bmatrix} -1 \\ 0 \\ 1 \\ 1 \\ 0 \\ 0 \end{bmatrix} + t\begin{bmatrix} -1 \\ 1 \\ 0 \\ 0 \\ -1 \\ 1 \end{bmatrix}, s, t \in \mb{R}$.  
> So $\begin{bmatrix} c_1 \\ c_2 \\ c_3 \\ c_4 \\ c_5 \\ c_6 \end{bmatrix} = \begin{bmatrix} -1 \\ 0 \\ 1 \\ 1 \\ 0 \\ 0 \end{bmatrix}$ and $\begin{bmatrix} c_1 \\ c_2 \\ c_3 \\ c_4 \\ c_5 \\ c_6 \end{bmatrix} = \begin{bmatrix} -1 \\ 1 \\ 0 \\ 0 \\ -1 \\ 1 \end{bmatrix}$ are solutions.  
> From this we determine that $E_2 = A_1 - E_1$ and $E_4 = A_1 - A_2 + E_3$.  
> So $\spn \set{A_1, A_2, E_1, \ldots, E_4} = \spn \set{A_1, A_2, E_1, E_3}$.  
> Clearly, $\set{A_1, A_2, E_1, E_3}$ is linearly independent and spans $M_{2 \times 2}(\mb{R})$, so it is a basis.  


### Theorem 4.2.4

Given $n$-dimensional vector space $\mb{V}$ and linearly independent set $\set{\vec{v}_1, \ldots, \vec{v}_k}$ where $k \le n$, then there exist $n - k$ vectors $\vec{w}_{k + 1}, \ldots, \vec{w}_n$ such that $\set{\vec{v}_1, \ldots, \vec{v}_k, \vec{w}_{k + 1}, \ldots, \vec{w}_n}$ is a basis for $\mb{V}$.

Also, all linearly independent sets of vectors in $\mb{V}$ with $n$ elements are bases for $\mb{V}$.

Also, if $\mb{S}$ is a subspace of $\mb{V}$, then $\dim \mb{S} \le \dim \mb{V}$.

Coordinates
-----------

Let $\mb{V}$ be an $n$-dimensional vector space. Let $\mathcal{B} = \set{\vec{e}_1, \ldots, \vec{e}_n}$ be a basis for $\mb{V}$. Let $\vec{x} \in \mb{V}$.

Then $\exists c_1, \ldots, c_n \in \mb{R}, \vec{x} = c_1 \vec{e}_1 + \ldots + c_n \vec{e}_n$.

The **coordinate vector** of $\vec{x}$ with respect to $\mathcal{B}$ is defined as $[\vec{x}]_\mathcal{B} = \begin{bmatrix} c_1 \\ \vdots \\ c_n \end{bmatrix}$. The **coordinates** are simply $c_1, \ldots, c_n$ - the values of the variables themselves.

A $\mathcal{B}$-coordinate is a coordinate with respect to $\mathcal{B}$.

Note that $\vec{x}$ is not the same thing as $[\vec{x}]_\mathcal{B}$ - $\vec{x}$ can be whatever type of thing exists in the vector space, like polynomials or matrices, but $[\vec{x}]_\mathcal{B}$ is always a vector in $\mb{R}^n$.

Note that all coordinates are relative to a vector, so it is important to know which basis a coordinate vector is written with respect to. The order of the basis vectors matter too, so we must give the vectors in the basis a particular fixed order.

### Theorem 4.3.2

For all $\vec{v}, \vec{w} \in \mb{V}, s, t \in \mb{R}$, $[s\vec{v} + t\vec{w}]_\mathcal{B} = s[\vec{v}]_\mathcal{B} + t[\vec{w}]_\mathcal{B}$.

Proof:

> Clearly, $\exists b_1, \ldots, b_n \in \mb{R}, \vec{v} = b_1 \vec{e}_1 + \ldots + b_n \vec{e}_n$.  
> Clearly, $\exists c_1, \ldots, c_n \in \mb{R}, \vec{w} = c_1 \vec{e}_1 + \ldots + c_n \vec{e}_n$.  
> So $s\vec{v} + t\vec{w} = (sb_1 + tc_1)\vec{v}_1 + \ldots + (sb_n + tc_n)\vec{v}_n$.  
> So $[s\vec{v} + t\vec{w}] = \begin{bmatrix} sb_1 + tc_1 \\ \vdots \\ sb_n + tc_n \end{bmatrix}_\mathcal{B} = \begin{bmatrix} sb_1 + tc_1 \\ \vdots \\ sb_n + tc_n \end{bmatrix}_\mathcal{B} = s\begin{bmatrix} b_1 \\ \vdots \\ b_n \end{bmatrix} + t\begin{bmatrix} c_1 \\ \vdots \\ c_n \end{bmatrix} = s[\vec{v}] + t[\vec{w}]$.  

### Change of Coordinates

Sometimes, we want to change coordinates from one basis to another.

Let $\mb{V}$ be an $n$-dimensional vector space. Let $\vec{x} \in \mb{V}$.

Let $\mathcal{B} = \set{\vec{v}_1, \ldots, \vec{v}_n}$ and $\mathcal{C}$ be bases for $\mb{V}$.

Given a coordinate with respect to $\mathcal{B}$, we want to find a coordinate with respect to $\mathcal{C}$ that represents the same vector. In other words, given $[\vec{x}]_\mathcal{B}$, we want to quickly find $[\vec{x}]_\mathcal{C}$.

Clearly, $\exists b_1, \ldots, b_n \in \mb{R}, \vec{x} = b_1 \vec{v}_1 + \ldots + b_n \vec{v}_n$. So $[\vec{x}]_\mathcal{B} = \begin{bmatrix} b_1 \\ \vdots \\ b_n \end{bmatrix}$.

Clearly, $[\vec{x}]_\mathcal{C} = [b_1 \vec{v}_1 + \ldots + b_n \vec{v}_n]_\mathcal{C} = b_1 [\vec{v}_1]_\mathcal{C} + \ldots + b_n [\vec{v}_n]_\mathcal{C}$.

We can write this using vectors or matrices: $[\vec{x}]_\mathcal{C} = \begin{bmatrix} [\vec{v}_1]_\mathcal{C} \\ \vdots \\ [\vec{v}_n]_\mathcal{C} \end{bmatrix} \cdot [\vec{x}]_\mathcal{B} = \begin{bmatrix} [\vec{v}_1]_\mathcal{C} & \ldots & [\vec{v}_n]_\mathcal{C} \end{bmatrix} [\vec{x}]_\mathcal{B}$.

The matrix ${}_\mathcal{C}P_\mathcal{B} = \begin{bmatrix} [\vec{v}_1]_\mathcal{C} & \ldots & [\vec{v}_n]_\mathcal{C} \end{bmatrix}$ is called the **change of coordinates matrix/change of basis matrix** from $\mathcal{B}$ to $\mathcal{C}$.

This is the matrix that satisfies $[\vec{x}]_\mathcal{C} = {}_\mathcal{C}P_\mathcal{B} [\vec{x}]_\mathcal{B}$.

### Theorem 4.3.3

${}_\mathcal{C}P_\mathcal{B} {}_\mathcal{B}P_\mathcal{C} = I = {}_\mathcal{B}P_\mathcal{C} {}_\mathcal{C}P_\mathcal{B}$.

Proof:

> Let $A = {}_\mathcal{B}P_\mathcal{C} {}_\mathcal{C}P_\mathcal{B}$.  
> Then $A[\vec{x}]_\mathcal{B} = {}_\mathcal{B}P_\mathcal{C} {}_\mathcal{C}P_\mathcal{B} [\vec{x}]_\mathcal{B} = {}_\mathcal{B}P_\mathcal{C} [\vec{x}]_\mathcal{C} = [\vec{x}]_\mathcal{B}$.  
> So $A[\vec{x}]_\mathcal{B} = [\vec{x}]_\mathcal{B}$, so $A = {}_\mathcal{B}P_\mathcal{C} {}_\mathcal{C}P_\mathcal{B} = I$.  
> The same technique can be used for for ${}_\mathcal{C}P_\mathcal{B} {}_\mathcal{B}P_\mathcal{C} = I$.  

Given $\mathcal{B} = \set{1, x, x^2}, \mathcal{C} = \set{1, x + 1, (x + 1)^2}$, find ${}_\mathcal{C}P_\mathcal{B}$:

> Clearly, ${}_\mathcal{C}P_\mathcal{B} = \begin{bmatrix} [1]_\mathcal{C} & [x]_\mathcal{C} & [x^2]_\mathcal{C} \end{bmatrix}$.  
> Clearly, $[1]_\mathcal{C} = \begin{bmatrix} 1 \\ 0 \\ 0 \end{bmatrix}, [x]_\mathcal{C} = \begin{bmatrix} -1 \\ 1 \\ 0 \end{bmatrix}, [x^2]_\mathcal{C} = \begin{bmatrix} 1 \\ -2 \\ 1 \end{bmatrix}$, by inspection.  
> So ${}_\mathcal{C}P_\mathcal{B} = \begin{bmatrix} 1 & -1 & 1 \\ 0 & 1 & -2 \\ 0 & 0 & 1 \end{bmatrix}$.  

# 17/3/14

Inverses of Matrices
--------------------

Let $A \in M_{m \times n}, B, C \in M_{n \times m}$.

Then $B$ is the **right inverse** of $A$ if and only if $AB = I_m$.

Then $C$ is the **left inverse** of $A$ if and only if $CA = I_n$

A matrix $A$ is **square** if and only if $A \in M_{n \times n}$.

### Finding Inverses

Suppose we wanted to find the right inverse $B$ of $A$.

Clearly, $B = \begin{bmatrix} \vec{b}_1 & \ldots & \vec{b}_n \end{bmatrix}$. So $AB = I = A\begin{bmatrix} \vec{b}_1 & \ldots & \vec{b}_n \end{bmatrix} = \begin{bmatrix} A\vec{b}_1 & \ldots & A\vec{b}_n \end{bmatrix}$.

So $A\vec{b}_i = \vec{e}_i$. We can then find the inverse by solving each system.

There is also a faster way. We can simply put the system $\sys{A}{I}$ into RREF and read off the inverse directly from the resulting matrix.

In fact, this is a useful method for solving multiple systems of linear equations with the same coefficients but different right hand sides at the same time.

For example, find the right inverse of $A = \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}$:

> Clearly, $\left[\begin{array}{cc|cc}
1 & 2 & 1 & 0 \\
3 & 4 & 0 & 1 \\
\end{array}\right]$ in RREF is $\left[\begin{array}{cc|cc}
1 & 0 & -2 & 1 \\
0 & 1 & \frac{3}{2} & -\frac{1}{2} \\
\end{array}\right]$.  
> So the inverse is $\begin{bmatrix} -2  1 \\ \frac{3}{2} & -\frac{1}{2} \end{bmatrix}$. To verify, $\begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix} \begin{bmatrix} -2  1 \\ \frac{3}{2} & -\frac{1}{2} \end{bmatrix} = \begin{bmatrix} 1 & 0 \\ 0 & 1 \end{bmatrix}$, as required.  

### Theorem 5.1.1

If $A \in M_{m \times n}$ where $m > n$, then $A$ cannot have a right inverse.

If $A \in M_{m \times n}$ where $m < n$, then $A$ cannot have a left inverse.

Proof:

> Let $A \in M_{m \times n}$ where $m > n$.  
> Suppose $B = \begin{bmatrix} \vec{b}_1 & \ldots & \vec{b}_m \end{bmatrix}$ is a right inverse for $A$.  
> Then $I_m = \begin{bmatrix} \vec{e}_1 & \ldots & \vec{e}_m \end{bmatrix} = AB = \begin{bmatrix} A\vec{b}_1 & \ldots & A\vec{b}_m \end{bmatrix}$.  
> Then $\forall 1 \le i \le m, A\vec{b}_i = \vec{e}_i$.  
> Let $\vec{y} \in \mb{R}^m$. Then $\vec{y} = y_1\vec{e}_1 + \ldots y_m\vec{e}_m = y_1A\vec{b}_1 + \ldots y_mA\vec{b}_m = A(y_1\vec{b}_1 + \ldots y_m\vec{b}_m)$.  
> So $A\vec{x} = \vec{y}$ has a solution $\vec{x} = y_1\vec{b}_1 + \ldots y_m\vec{b}_m$ for all $\vec{y} \in \mb{R}^m$, and $\rank A = m$ by theorem 2.2.4.  
> So $n \ge m$, a contradiction. Therefore, $A$ has no right inverse.  

### Inverse Matrices

Let $A$ be an $n \times n$ square matrix. If $BA = I = AB$, then $B$ is the **inverse** of $A$. If $B$ exists, then $A$ is **invertible**.

The inverse of the matrix is denoted $B = A^{-1}$ - $B$ is the inverse of $A$.

In other words, only square matrices can have inverses, but not all of them do. 

### Theorem 5.1.3

The inverse of a matrix is always unique.

Proof:

> Let $B, C$ be inverses of $A$. Then $B = BI = B(AC) = (BA)C = IC = C$.  

### Theorem 5.1.4

If $A, B \in M_{n \times n}$ such that $AB = I$, then $A = B^{-1}$ and $B = A^{-1}$, and $BA = I$.

Also, the RREF of $A$, and the RREF of $B$, are both $I$.

Basically, if a square matrix has a left or right inverse, then this is also the right or left inverse, and is simply the inverse of the matrix.

So we can simply use the algorithm for finding left or right inverses to find the multiplciative inverse of the matrix.

So if $A$ is invertible, then row reducing $\sys{A}{I}$ results in $\sys{I}{A^{-1}}$ - **row reducing the system results in the inverse**.

Proof:

> Let $B\vec{x} = \vec{0}$. Then $\vec{0} = A\vec{0} = A(B\vec{x}) = (AB)\vec{x} = I\vec{x} = \vec{x}$.  
> So $\vec{x} = 0$ and $\vec{x}$ is the unique solution to the system. Since the solution is unique, $\rank B = n$ and there is a leading one in each column of the RREF, so the RREF of $B$ is $I$.  
> Since the RREF of $B$ is $I$, $\forall \vec{b} \in \mb{R}^n, \exists \vec{x} \in \mb{R}^n, B\vec{x} = \vec{b}$.  
> Clearly, $BA\vec{b} = (BA)(B\vec{x}) = B(AB)\vec{x} = BI\vec{x} = B\vec{x} = \vec{b}$.  
> By theorem 3.1.4, $BA = I$.  
> Now the same argument used to prove $\rank B = n$ can then be used to probe $\rank A = n$.  

### Theorem 5.1.5

If the RREF of a matrix $A \in M_{n \times n}$ is $I$, then the $A^{-1}$ exists.

In other words, if $\rank A = n$, then $A$ is invertible.

Find the general inverse of $A = \begin{bmatrix} a & b \\ c & d \end{bmatrix}$:

> Clearly, $\left[\begin{array}{cc|cc}
a & b & 1 & 0 \\
c & d & 0 & 1 \\
\end{array}\right]$ in RREF is $\left[\begin{array}{cc|cc}
1 & 0 & \frac{d}{ad - bc} & -\frac{b}{ad - bc} \\
0 & 1 & -\frac{c}{ad - bc} & \frac{a}{ad - bc} \\
\end{array}\right]$.  
> So $A^{-1} = \begin{bmatrix} \frac{d}{ad - bc} & -\frac{b}{ad - bc} \\ -\frac{c}{ad - bc} & \frac{a}{ad - bc} \end{bmatrix} = \frac{1}{ad - bc}\begin{bmatrix} d & -b \\ -c & a \end{bmatrix}$, and is defined whenever $ad - bc \ne 0$.  

### Theorem 5.1.6

Given $A, B \in M_{n \times n}$ such that $A$ and $B$ are invertible and $k \in \mb{R}$:

* $(kA)^{-1} = \frac{1}{k}A^{-1}$
* $(AB)^{-1} = B^{-1}A^{-1}$
* $(A^T)^{-1} = (A^{-1})^T$

Proof:

(proof of first)

> Clearly, $kA(kA)^{-1} = I$. Clearly, $kA\frac{1}{k}A^{-1} = AA^{-1} = I$.  
> Since the inverse is always unique, $(kA)^{-1} = \frac{1}{k}A^{-1}$.  

(proof of second)

> Clearly, $AB(AB)^{-1} = I$. Clearly, $ABB^{-1}A^{-1} = AIA^{-1} = I$.  
> Since the inverse is always unique, $(AB)^{-1} = B^{-1}A^{-1}$.  

(proof of third)

> Clearly, $A^T(A^T)^{-1} = I$. Clearly, $A^T(A^{-1})^T = (A^{-1}A)^T = I^T = I$.  
> Since the inverse is always unique, $(A^T)^{-1} = (A^{-1})^T$.  

### Theorem 5.1.7 (Invertible Matrix Theorem)

Given $A \in M_{n \times n}$, all of the following are equivalent:

* $A$ is invertible.
* The RREF of $A$ is $I$.
* $\rank A = n$.
* The system of equations $A\vec{x} = \vec{b}$ has unique solutions for all $\vec{b} \in \mb{R}^n$.
* The nullspace of $A$ is $\set{\vec{0}}$.
* The rows or columns of $A$ form a basis for $\mb{R}^n$.
* $A^T$ is invertible.

Proof of third:

> Clearly, $\rank A = n$ if and only if the RREF of $A$ is $I$.  
> Clearly, the RREF is $I$ if and only if there are a sequence of elementary matrices $E_k \cdots E_1$ such that $E_k \cdots E_1 = I$.  
> Clearly, this the inverse, so $A$ is invertible if and only if $E_k \cdots E_1$ exist.  

Proof of fourth:

> Clearly, $A\vec{x} = \vec{b}$ has unique solutions for all $\vec{b} \in \mb{R}^n$ if and only if there are no free variables.  
> Clearly, there are no free variables if and only if $\rank A = n$.  

Proof of fifth:

> Clearly, the nullspace of $A$ is $\set{\vec{0}}$ if and only if $\vec{x} = \vec{0}$ is the only solution to $A\vec{x} = \vec{0}$.  
> Clearly, the solution is unique if and only if $\rank A = n$.  

Proof of sixth:

> Clearly, the rows or columns of $A form a basis for $\mb{R}^n$ if and only if they span $\mb{R}^n$ and are linearly independent.  
> Since the rows or columns are linearly independent, the nullspace of $A$ is $\set{\vec{0}}$.  

Proof of seventh:

> Clearly, $A^T$ is invertible if and only if $(A^{-1})^T$ exists.  
> CLearly, $(A^{-1})^T$ exists if and only if $A$ is invertible.  

Also note that $A\vec{x} = \vec{b}$ if and only if $A^{-1}A\vec{x} = \vec{x} = A^{-1}\vec{b}$.

In other words, we can solve linear systems this way. If $A\vec{x} = \vec{b}$, then $\vec{x} = A^{-1}\vec{b}$, and the converse is true as well.

Elementary Matrices
-------------------

When we found the inverse of a matrix $A$ by row reducing $#\sys{A}{I}$ into $\sys{I}{A^{-1}}$, we applied a series of elementary row operations in a certain order, and this resulted in finding $A^{-1}$.

Since we can, given any $A^{-1}$, find $A$ again, those elementary row operations must have been encoded in $A^{-1}$ somehow.

An **elementary matrix** is the result of applying an elementary row operation on the $n \times n$ identity matrix. The elementary matrix **represents** the elementary row operation.

### Theorem 5.2.1-5.2.3

Let $A \in M_{m \times n}$. Let $E$ be the elementary matrix representing an elementary row operation ($R_i + cR_j, c \ne 0, i \ne j$, $cR_i, c \ne 0$, or $R_i \leftrightarrow R_j, i \ne j$).

Then $EA$ is the matrix obtained by applying that elementary row operation directly onto $A$.

In other words, applying elementary row operations to identity matrices allow the matrices to represent the operations in a more elegant way.

Since the elementary row operations cannot change the rank of the matrix, $\rank EA = \rank A$

Since all elementary row operations are reversible, likewise all elementary matrices are invertible. In fact, the inverse of an elementary matrix is the reverse of the elementar row operation applied to the identity matrix.

For example, $E = \begin{bmatrix} 1 & 0 \\ 0 & -5 \end{bmatrix}$ represents the elementary row operation $-5R_2$, and the reverse operation is $-\frac{1}{5}R_2$. So $E^{-1} = \begin{bmatrix} 1 & 0 \\ 0 & -\frac{1}{5} \end{bmatrix}$.

Matrix Decomposition
--------------------

### Theorem 5.2.5

If $A$ is an $m \times n$ matrix, and $R$ is the RREF of $A$, then $\exists E_1, \ldots, E_k \in M_{m \times m}, E_k \cdots E_1 A = R$.

Also, if $E_k \cdots E_1 A = R$, then $A = E_1^{-1} \cdots E_k^{-1} R$.

This can be derived by multiplying both sides of $E_k \cdots E_1 A = R$ by $E_k^{-1}, \ldots, E_1^{-1}$ repeatedly.

Convert $A = \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}$ into RREF using elementary matrices:

> Clearly, $A = \begin{bmatrix} 1 & 0 \\ -3 & 1 \end{bmatrix} \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix} = \begin{bmatrix} 1 & 2 \\ 0 & -2 \end{bmatrix}$
> Clearly, $\begin{bmatrix} 1 & 1 \\ 0 & 1 \end{bmatrix} \begin{bmatrix} 1 & 2 \\ 0 & -2 \end{bmatrix} = \begin{bmatrix} 1 & 0 \\ 0 & -2 \end{bmatrix}$
> Clearly, $\begin{bmatrix} 1 & 1 \\ 0 & -\frac{1}{2} \end{bmatrix} \begin{bmatrix} 1 & 0 \\ 0 & -2 \end{bmatrix} = \begin{bmatrix} 1 & 0 \\ 0 & 1 \end{bmatrix}$.  
> So $\begin{bmatrix} 1 & 0 \\ 0 & 1 \end{bmatrix} = \begin{bmatrix} 1 & 1 \\ 0 & -\frac{1}{2} \end{bmatrix} \begin{bmatrix} 1 & 1 \\ 0 & 1 \end{bmatrix} \begin{bmatrix} 1 & 0 \\ -3 & 1 \end{bmatrix} \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}$.  

### Inverses

If $A is invertible, then the RREF $R$ is $I$, so $E_k \cdots E_1 A = I$ and $A = E_1^{-1} \cdots E_k^{-1} I$.

So $E_k \cdots E_1$ is the left inverse of $A$, by definition. So $A^{-1} = E_k \cdots E_1$. Also, $A = E_1^{-1} \cdots E_k^{-1}$.

In other words, if $A$ is invertible, then $A and $A^{-1}$ can both be written as products of elementary matrices.

Also, since we are row reducing $\sys{A}{I}$ into $\sys{I}{A^{-1}}$, and $I = E_k \cdots E_1 A$, then $A^{-1} = E_k \cdots E_1 I = E_k \cdots E_1$. In other words, we are getting the inverse written in terms of elementary row operations.

Matrix Determinants
-------------------

The **determinant** of a matrix is an expression over the values within the matrix. The value of the determinant provides important information about it, such as whether it is invertible. The determinant **only applies to square matrices**.

We denote the determinant of a matrix $A$ as $\det A = \begin{vmatrix} a_{1, 1} & \ldots & a_{1, n} \\ \vdots & \vdots & \vdots \\ a_{m, 1} & \ldots & a_{m, n} \end{vmatrix}$. Importantly, $A$ is invertible if and only if $\det A \ne 0$.

The determinant of a $1 \times 1$ matrix $A = \begin{bmatrix} a \end{bmatrix}$ is $\det A = a$. This is because the matrix is invertible if and only if $a \ne 0$.

The determinant of the $2 \times 2$ matrix $A = \begin{bmatrix} a & b \\ c & d \end{bmatrix}$ is $\det A = ad - bc$. Note that this is equal to $a\begin{vmatrix} d \end{vmatrix} - b\begin{vmatrix} c \end{vmatrix}$.

The determinant of the $3 \times 3$ matrix $A = \begin{bmatrix} a & b & c \\ d & e & f \\ g & h & i \end{bmatrix}$ is $\det A = aei - afh + bfg - bdi + cdh - cei$. Note that this is equal to $a\begin{vmatrix} e & f \\ h & i \end{vmatrix} - b\begin{vmatrix} d & f \\ g & i \end{vmatrix} + c\begin{bmatrix} d & e \\ g & h \end{bmatrix}$.

For systems of linear equations, the determinant is 0 if and only if the system has one and only one solution.

### Cofactors

Let $A \in M_{m \times n}$, $n \ge 2$. Let $A(i, j) \in M_{m - 1, n - 1}$ be $A$, except without row $i$ and column $j$.

The **cofactor** of $A_{i, j}$ is $C_{i, j} = (-1)^{i + j} \det A(i, j)$. $A$ therefore has $mn$ cofactors.

Using this notation, we can write the determinant of a $3 \times 3$ matrix as $\det A = a_{1, 1}C_{1, 1} + a_{1, 2}C_{1, 2} + a_{1, 3}C_{1, 3}$ or $a_{2, 1}C_{2, 1} + a_{2, 2}C_{2, 2} + a_{2, 3}C_{2, 3}$ or even $a_{1, 1}C_{1, 1} + a_{2, 2}C_{2, 2} + a_{3, 3}C_{3, 3}$.

The cofactors of $A$ are denoted $\cof A = \begin{bmatrix} C_{1, 1} & \ldots & C_{1, n} \\ \vdots & \vdots & \vdots \\ C_{n, 1} & \ldots & C_{n, n} \end{bmatrix}$.

### Theorem 5.3.1

Given $A \in M_{n \times n}, n \ge 2$, for all $1 \le i \le n$, $\det A = a_{i, 1}C_{i, 1} + \ldots + a_{i, n}C_{i, n} = \sum_{j = 1}^n a_{i, j}C_{i, j}$ and $\det A = a_{1, i}C_{1, i} + \ldots + a_{n, i}C_{n, i} = \sum_{j = 1}^n a_{j, i}C_{j, i}$.

$\sum_{j = 1}^n a_{i, j}C_{i, j}$ is the **cofactor expansion** across the $i$th row.

$\sum_{j = 1}^n a_{j, i}C_{j, i}$ is called the **cofactor expansion** across the $i$th column.

In other words, we can calculate the determinant of any $n \times n$ matrix using a simple formula based on the determinant of $n$ $(n - 1) \times (n - 1)$ matrices.

We can choose any $i$ we want. Often, the best choice has a lot of zeros in $a_{i, j}$, so that we can avoid as much computation as possible.

For example, find $\det \begin{bmatrix} 3 & -2 & 8 & 2 \\ 0 & -2 & 5 & 5 \\ 0 & 0 & 4 & 8 \\ 0 & 0 & 0 & 7 \end{bmatrix}$:

> We choose to cofactor expand across the fourth row, since there are a lot of zeros there.  
> Clearly, $\det \begin{bmatrix} 3 & -2 & 8 & 2 \\ 0 & -2 & 5 & 5 \\ 0 & 0 & 4 & 8 \\ 0 & 0 & 0 & 7 \end{bmatrix} = a_{4, 1}C_{4, 1} + a_{4, 2}C_{4, 2} + a_{4, 3}C_{4, 3} + a_{4, 4}C_{4, 4} = 0C_{4, 1} + 0C_{4, 2} + 0C_{4, 3} + 7C_{4, 4} = 7C_{4, 4}$.  
> So $7C_{4, 4} = 7(-1)^{4 + 4}\det \begin{bmatrix} 3 & -2 & 8 \\ 0 & -2 & 5 \\ 0 & 0 & 4 \end{bmatrix}$.  
> We choose to cofactor expand across the third row, since there are a lot of zeroes there.  
> So $7C_{4, 4} = 7(b_{3, 1}C_{3, 1} + b_{3, 2}C_{3, 2} + b_{3, 3}C_{3, 3}) = 7(0C_{3, 1} + 0C_{3, 2} + 4C_{3, 3}) = 28C_{3, 3}$.  
> So $28C_{3, 3} = 28(-1)^{3 + 3}\det \begin{bmatrix} 3 & -2 \\ 0 & -2 \end{bmatrix} = 28(3 \cdot -2 - (-2) \cdot 0) = 28 \cdot -6$.  
> So $\det \begin{bmatrix} 3 & -2 & 8 & 2 \\ 0 & -2 & 5 & 5 \\ 0 & 0 & 4 & 8 \\ 0 & 0 & 0 & 7 \end{bmatrix} = -168$.  

### Triangular Matrices

Let $1 \le i \le n$ and $1 \le j \le n$.

A matrix $A$ is **upper triangular** if and only if $i > j \implies A_{i, j} = 0$. In other words, it is upper triangular if it has a triangle of zeroes on the bottom left up to but not including the biggest diagonal.

A matrix $A$ is **lower triangular** if and only if $i < j \implies A_{i, j} = 0$. In other words, it is lower triangular if it has a triangle of zeroes on the top right down to but not including the biggest diagonal.

$\begin{bmatrix} 0 & 0 & 1 \\ 0 & 0 & 0 \\ 0 & 0 & 1 \end{bmatrix}$ is upper triangular but not lower triangular. The identity matrix is both.

### Theorem 5.3.2

Given $A \in M_{n \times n}$, if $A is upper or lower triangular, then $\det A = a_{1, 1} \cdots a_{n, n} = \sum_{i = 1}^n a_{i, i}$.

In other words, a triangular matrix allows us to calculate the determinant simply by multiplying the elements in the diagonal together.

As a result, if $A$ is triangular, then $A$ is invertible if and only if there are no zero elements in the diagonal.

# 22/3/14

It is easy to get the determinant of a triangular matrix - all we have to do is multiply the elements along the diagonal.

We can actually use elementary row operations to put a matrix into diagonal form, to make it easier to calculate the determinant.

### Theorem 5.3.3-5.3.5

Let $A \in M_{m, n}$. Let $c \in \mb{R}, c \ne 0$.

If $B$ is $A$ with one row multiplied by $c$, then $\det B = c \det A$. This corresponds to the operation $cR_i$, and we just multiply the determinant by that value.

If $B$ is $A$ with two different rows swapped, then $\det B = -\det A$. This corresponds to the operation $R_i \leftrightarrow R_j$, and we just invert the determinant.

If $B$ is $A$ with $c$ times one row being added to another row, then $\det B = \det A$. This corresponds to the operation $R_i + cR_j$, and the determinant is unaffected.

Find $\begin{vmatrix} 3 & 4 & 3 & -1 \\ 1 & 0 & -2 & 2 \\ -2 & 1 & 1 & 4 \\ 1 & 2 & 1 & 1 \end{vmatrix}$ using elementary matrices:

> Clearly, $\det \begin{bmatrix}
3 & 4 & 3 & -1 \\
1 & 0 & -2 & 2 \\
-2 & 1 & 1 & 4 \\
1 & 2 & 1 & 1 \\
\end{bmatrix} = \det \begin{bmatrix} 1 & 0 & 0 & -\frac{21}{9} \\ 0 & 1 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \end{bmatrix}\begin{bmatrix} 1 & 0 & -4 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \end{bmatrix}\begin{bmatrix} 1 & 0 & 0 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & -2 & 1 \end{bmatrix}\begin{bmatrix} 1 & 0 & 0 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & -1 & 0 & 1 \end{bmatrix}\begin{bmatrix} 1 & 0 & 0 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 2 & 1 & 0 \\ 0 & 0 & 0 & 1 \end{bmatrix}\begin{bmatrix} 1 & -3 & 0 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \end{bmatrix}\begin{bmatrix}
3 & 4 & 3 & -1 \\
1 & 0 & -2 & 2 \\
-2 & 1 & 1 & 4 \\
1 & 2 & 1 & 1 \\
\end{bmatrix} = \det \begin{bmatrix}
0 & 0 & 0 & \frac{2}{3} \\
1 & 0 & -2 & 2 \\
0 & 1 & -3 & 8 \\
0 & 0 & 9 & -17 \\
\end{bmatrix}$.  
> Clearly, $\det \begin{bmatrix}
0 & 0 & 0 & \frac{2}{3} \\
1 & 0 & -2 & 2 \\
0 & 1 & -3 & 8 \\
0 & 0 & 9 & -17 \\
\end{bmatrix} = -\det \begin{bmatrix} 1 & 0 & 0 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & 0 & 1 \\ 0 & 0 & 1 & 0 \end{bmatrix}\begin{bmatrix} 1 & 0 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & 0 & 1 \end{bmatrix}\begin{bmatrix} 0 & 1 & 0 & 0 \\ 1 & 0 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \end{bmatrix}\begin{bmatrix}
0 & 0 & 0 & \frac{2}{3} \\
1 & 0 & -2 & 2 \\
0 & 1 & -3 & 8 \\
0 & 0 & 9 & -17 \\
\end{bmatrix} = -\det \begin{bmatrix}
1 & 0 & -2 & 2 \\
0 & 1 & -3 & 8 \\
0 & 0 & 9 & -17 \\
0 & 0 & 0 & \frac{2}{3} \\
\end{bmatrix}$.  
> Clearly, the matrix is now in upper triangular form, so $-\det \begin{bmatrix}
1 & 0 & -2 & 2 \\
0 & 1 & -3 & 8 \\
0 & 0 & 9 & -17 \\
0 & 0 & 0 & \frac{2}{3} \\
\end{bmatrix} = -(1 \cdot 1 \cdot 9 \cdot \frac{2}{3}) = -6$, by theorem 5.3.2.  

The basic technique is using elementary row operations to reduce the matrix into upper triangular form, and then using theorem 5.3.2 to easily calculate the determinant just by multiplying the numbers in the diagonal together.

### Theorem 5.3.6

Given $A \in M_{n \times n}$, $\det A = \det A^T$. In other words, the determinant of a matrix is the same as the determinant of its inverse.

This allows us to do "column operations" to simplify the determinant - row operations, but applied to the transpose of the matrix.

When we perform a row operation on a matrix, the determinant is always multiplied by a scalar $c \ne 0$ (this is $c$, 1, or -1 for multiplying a row, adding a scalar multiple, and swapping, respectively).

As a result, the determinant of an elementary matrix is never 0, since the row operation always multiplies the determinant by a nonzero value, and the determinant of the identity is 1.

Let $E$ be an elementary matrix. Since $E$ is $I$ with a row operation applied to it, and $\det I = 1$, $\det E = c$.

Since $EA$ is equivalent to applying that same row operation to $A$, $\det EA = c \det A$.

So $\det EA = \det E \det A$.

### Theorem 5.3.8

This theorem extends theorem 5.1.7 - the Invertible Matrix Theorem.

Given $A \in M_{n \times n}$, $A^{-1}$ exists if and only if $\det A \ne 0$.

Proof:

> Let $R$ be the RREF of $A$. 
> Clearly, there exists a sequence of elementary matrices $E_k, \ldots, E_1$, such that $E_k \cdots E_1 A = R$.  
> So $\det R = \det E_k \cdots \det E_1 \det A$.  
> Since the determinant of any elementary matrix is always nonzero, $\det R \ne 0 \iff \det A \ne 0$.  
> Since $R$ is in RREF and is square, $\det R \ne 0 \iff R = I$.  
> Clearly, $R = I$ if and only if $E_k \cdots \det E_1$ is the inverse of $A$.  
> So $A$ is invertible if and only if $\det A \ne 0$.  

### Theorem 5.3.9

Let $A, B \in M_{n \times n}$. Then $\det AB = \det A \det B$.

In other words, the determinant of two square matrices of the same dimensions is the same as the product of their individual determinants.

Proof:

> Let $R$ be the RREF of $A$.  
> Clearly, there exists a sequence of elementary matrices $E_k, \ldots, E_1$, such that $E_k \cdots E_1 A = R$ and $A = E_1^{-1} \cdots E_k^{-1} R$.  
> Clearly, $\det AB = \det E_1^{-1} \cdots E_k^{-1} RB = \det E_1^{-1} \cdots E_k^{-1} \det RB$, and $\det E_1^{-1} \cdots E_k^{-1} \ne 0$ since they are all elementary matrices.  
> Assume $\det A = 0$. Then $R \ne I$, and since $R$ is in RREF, the last row is all zeros, and $\det R = 0$.  
> Clearly, the last row of $RB$ is 0 since the last row of $R$ is all zeroes.  
> So $\det AB = 0 = \det A \det B$.  
> Assume $\det A \ne 0$. Then $A$ is invertible, and by theorem 5.1.7, $R = I$.  
> So $\det AB = \det E_1^{-1} \cdots E_k^{-1} B = \det E_1^{-1} \cdots E_k^{-1} \det B = \det E_1^{-1} \cdots E_k^{-1} R \det B = \det A \det B$.  
> So in all cases, $\det AB = \det A \det B$.  

As a result, if we use $B = A^{-1}$, then $\det AA^{-1} = \det I = 1 = \det A \det A^{-1}$, and $\det A = \frac{1}{\det A^{-1}}$.

# 22/3/14

Adjugates
---------

Let $A \in M_{n \times n}$.

The ***adjugate** of $A is $\begin{bmatrix} C_{1, 1} & \ldots & C_{n, 1} \\ \vdots & \vdots & \vdots \\ C_{1, n} & \ldots & C_{n, n} \end{bmatrix}$.

In other words, the adjugate of a matrix is the transpose of cofactors matrix - $\adj A = (\cof A)^T$. So $(\adj A)_{i, j} = C_{j, i}$.

For example, $\cof \begin{bmatrix} a & b \\ c & d \end{bmatrix} = \begin{bmatrix} a & -c \\ -b & a \end{bmatrix}$, so $\adj A = \begin{bmatrix} d & -b \\ -c & a \end{bmatrix}$.

The adjugate is extremely useful because it allows us to find the inverse of any matrix.

This is because $A^{-1} = \frac{1}{\det A} \adj A$.

In addition, this means that $A_{i, j}^{-1} = \frac{1}{\det A} C_{j, i} = \frac{1}{\det A} (-1)^{i + j} \det A(i, j)$, where $A(i, j)$ is $A$ with row $i$ and column $j$ removed so it is $(n - 1) \times (n - 1)$.

We have also seen the elementary matrix method of finding the inverse, where we row reduce the matrix while keeping track of all the elementary matrices along the way, then invert these elementary matrices and multiply them.

### Cramer's Rule

Consider the linear system $A\vec{x} = \vec{b}$. The solution is $\vec{x} = A^{-1}\vec{b}$, so we know that it has a solution if and only if $A$ is invertible.

Since $A^{-1} = \frac{1}{\det A} \adj A$, then $\vec{x} = \frac{1}{\det A} \adj A \vec{b} = \frac{1}{\det A} \begin{bmatrix} b_1C_{1, 1} + \ldots + b_nC_{n, 1} \\ \vdots \\ b_1C_{1, n} + \ldots + b_nC_{n, n} \end{bmatrix}$.

Let $A_i = \begin{bmatrix} a_{1, 1} & \ldots & a_{1, i - 1} & b_1 & a_{1, i + 1} & \ldots & a_{1, n} \\ \vdots & \vdots & \vdots & \vdots & \vdots & \vdots & \vdots \\ a_{n, 1} & \ldots & a_{n, i - 1} & b_n & a_{n, i + 1} & \ldots & a_{n, n} \end{bmatrix}$. This is basically $A$ with the $i$th column replaced by $\vec{b}$.

Note that $\det A_i = b_1C_{1, i} & \ldots & b_nC_{n, i}$. As a result, $\vec{x} = \frac{1}{\det A} \begin{bmatrix} \det A_1 \\ \vdots \\ \det A_n \end{bmatrix}$.

**Cramer's rule** states that given $A \in M_{n \times n}$ such that $A$ is invertible, the solution to $A\vec{x} = \vec{b}$ is $\vec{x}_i = \frac{\det A_i}{\det A}$ for $1 \le i \le n$.

This allows us to solve linear systems using determinants. However, it is not as practical as simply row reducing the matrices to obtain the values of $\vec{x}$.

Cramer's rule explicitly gives the solution to a system of linear equations as a mathematical equation. This can be contrasted with row reducing, which does not have a formula.

Area/Volumes
------------

Let $\vec{u}, \vec{v} \in \mb{R}^2$. Geometrically, $\vec{u} + \vec{v}$ forms a parallelogram with $\vec{u}$ and $\vec{v}$ as the sides. We then say that $\vec{u}$ and $\vec{v}$ **induce** a parallelogram.

This parallelogram has points $\vec{0}, \vec{u}, \vec{v}, \vec{u} + \vec{v}$.

Clearly, the area of the parallelogram is the length times the height. The length of the parallelogram can be set as $\magn{\vec{u}}$, in which case the height would be $\magn{\prp_{\vec{u}} \vec{v}}$, so the area would be $\magn{\vec{u}} \magn{\prp_{\vec{u}} \vec{v}}$.

Using trigonometry, we find that $\magn{\prp_{\vec{u}} \vec{v}} = \magn{\vec{v}} \sin \theta$, where $\theta$ is the angle between $\vec{u}$ and $\vec{v}$.

So $A = \magn{\vec{u}} \magn{\vec{v}} \sin \theta$.

Recall that $\cos \theta = \frac{\vec{u} \cdot \vec{v}}{\magn{\vec{u}} \magn{\vec{v}}}$.

Clearly, $A^2 = \magn{\vec{u}}^2 \magn{\vec{v}}^2 \sin^2 \theta = \magn{\vec{u}}^2 \magn{\vec{v}}^2 (1 - \cos^2 \theta)
= (u_1^2 + u_2^2) (v_1^2 + v_2^2) - (\magn{\vec{u}} \magn{\vec{v}} \cos \theta)^2 = (u_1^2 + u_2^2) (v_1^2 + v_2^2) - (\magn{\vec{u}} \magn{\vec{v}} \cos \theta)^2
= u_1^2 v_1^2 + u_1^2 v_2^2 + u_2^2 v_1^2 + u_2^2 v_2^2 - (u_1 v_1 + u_2 v_2)^2
= u_1^2 v_1^2 + u_1^2 v_2^2 + u_2^2 v_1^2 + u_2^2 v_2^2 - (u_1^2 v_1^2 + 2 u_1 v_1 u_2 v_2 + u_2^2 v_2^2)
= u_1^2 v_2^2 - 2 u_1 v_1 u_2 v_2 + u_2^2 v_1^2 = (u_1 v_2 - u_2 v_1)^2$.

Clearly, $\det \begin{bmatrix} \vec{u} & \vec{v} \end{bmatrix} = \det \begin{bmatrix} u_1 & v_1 \\ u_2 v_2 \end{bmatrix} = u_1 v_2 - v_1 u_2$.

So $A^2 = (\det \begin{bmatrix} \vec{u} & \vec{v} \end{bmatrix})^2$. Since $A$ is always non-negative, $A = \abs{\det \begin{bmatrix} \vec{u} & \vec{v} \end{bmatrix}}$.

So in $\mb{R}^2$, the area of the parallelogram is $\abs{u_1 v_2 - v_1 u_2}$.

In $\mb{R}^3$, three vectors $\vec{u}, \vec{v}, \vec{w}$ induce a **parallelepiped** - a sort of slanted cube.

Without loss of generality, assume $\vec{u}, \vec{v}$ form the base of the parallelepiped.

The volume of the parallelepiped is the area of the base times the height, or $\magn{\vec{u} \times \vec{v}} \magn{\proj_{\vec{u} \times \vec{v}} \vec{w}}$. Recall that $\vec{u} \times \vec{v}$ is the cross product, and results in a vector perpendicular to $\vec{u}$ and $\vec{v}$ with the magnitude of the parallelogram they form.

Using a similar process as before, we find that $V = \abs{\det \begin{bmatrix} \vec{u} & \vec{v} & \vec{w} \end{bmatrix}}$.

In fact, this works in any number of dimensions. A **parallelotope** is an $n$ dimensional solid induced by $n$ vectors $\vec{v}_1, \ldots, \vec{v}_n \in \mb{R}^n$.

The **n-volume** of an $n$ dimensional solid is an extension to the concept of a volume to any number of dimensions. The n-volume of the parallelotope is $V = \abs{\det \begin{bmatrix} \vec{v}_1 & \ldots & \vec{v}_n \end{bmatrix}}$.

# 31/3/14

Linear Mappings and Bases
-------------------------

Let $L: \mb{R}^n \to \mb{R}^n$ be a linear operator. Let $\mathcal{B} = \set{\vec{v}_1, \ldots, \vec{v}_n}$ be a basis for $\mb{R}^n$. Let $\vec{x} \in \mb{R}^n$.

Then $\exists b_1, \ldots, b_n \in \mb{R}, \vec{x} = b_1 \vec{v}_1 + \ldots + b_n \vec{v}_n$. So $[\vec{x}]_\mathcal{B} = \begin{bmatrix} b_1 \\ \vdots \\ b_n \end{bmatrix}$.

We want to determine a matrix $A$ such that $[L(\vec{x})]_\mathcal{B} = [[L]\vec{x}]_\mathcal{B} = A\vec{x}_\mathcal{B}$ - a linear operator that works the same as $L$, but accepts and produces $\mathcal{B}$-coordinates.

Clearly, $[L(\vec{x})]_\mathcal{B} = [b_1 L(\vec{v}_1) + \ldots + b_n L(\vec{v}_n)]_\mathcal{B} = b_1 [L(\vec{v}_1)]_\mathcal{B} + \ldots + b_n [L(\vec{v}_n)]_\mathcal{B} = \begin{bmatrix} [L(\vec{v}_n)]_\mathcal{B} & \ldots & [L(\vec{v}_n)]_\mathcal{B} \end{bmatrix} \begin{bmatrix} b_1 \\ \vdots \\ b_n \end{bmatrix}$.

So $[L(\vec{x})]_\mathcal{B} = [L]_\mathcal{B} [\vec{x}]_\mathcal{B}$.

In other words, the matrix of $L$ with respect to $\mathcal{B}$, is $[L]_\mathcal{B} = \begin{bmatrix} [L(\vec{v}_n)]_\mathcal{B} & \ldots & [L(\vec{v}_n)]_\mathcal{B} \end{bmatrix} [\vec{x}]_\mathcal{B}$. We call $[L]_\mathcal{B}$ the $\mathcal{B}$-matrix of $L$.

Given $L(\vec{x}) = A\vec{x} = \begin{bmatrix} 1 & 2 & 2 \\ 2 & 1 & 2 \\ 2 & 2 & 1 \end{bmatrix} \vec{x}$ and $\mathcal{B} = \set{\begin{bmatrix} 1 \\ 1 \\ 1 \end{bmatrix}, \begin{bmatrix} 1 \\ -1 \\ 0 \end{bmatrix}, \begin{bmatrix} 1 \\ 0 \\ -1 \end{bmatrix}} = \set{\vec{v}_1, \vec{v}_2, \vec{v}_3}$, find $[L]_\mathcal{B}$:

> Clearly, $[L]_\mathcal{B} = \begin{bmatrix} [A\vec{v}_1]_\mathcal{B} & [A\vec{v}_2]_\mathcal{B} & [A\vec{v}_3]_\mathcal{B} \end{bmatrix}$.  
> So $[L]_\mathcal{B} = \begin{bmatrix} 5 & 0 & 0 \\ 0 & -1 & 0 \\ 0 & 0 & -1 \end{bmatrix}$.  

### Diagonal Matrices

A matrix $D \in M_{n \times n}$ is **diagonal** if and only if for all $1 \le i \ke n$ and $1 \le j \le n$, $i \ne j \implies D_{i, j} = 0$.

In other words, a diagonal matrix is all zero, except possibly along the diagonal. For example, $\begin{bmatrix} 1 & 1 \\ 0 & 1 \end{bmatrix}$ is not diagonal, while $\begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}$ is.

A diagonal matrix is, by definition, both upper and lower triangular.

We can construct diagonal matrices using $D = \diag(D_{1, 1}, \ldots, D_{n, n}) = \begin{bmatrix} D_{1, 1} & 0 & \ldots & 0 \\ \vdots & \vdots & \vdots & \vdots \\ 0 & \ldots & 0 & D_{n, n} \end{bmatrix}$.

We often want to determine if there is a basis in which a matrix converted into that basis would be diagonal.

Let $\mathcal{B} = \set{\vec{v}_1, \ldots, \vec{v}_n}$.

Also, $\mathcal{S} = \set{\vec{e}_1, \ldots, \vec{e}_n}$ is the standard basis for $\mb{R}^n$.

Clearly, $[L]_\mathcal{B} = {}_\mathcal{B}P_\mathcal{S} [L] {}_\mathcal{S}P_\mathcal{B}$. Basically, we convert it into standard coordinates, apply the linear operator, and then convert it back into $\mathcal{B}$ coordinates.

Also, ${}_\mathcal{S}P_\mathcal{B} = \begin{bmatrix} \vec{v}_1, \ldots, \vec{v}_n \end{bmatrix}$ and ${}_\mathcal{B}P_\mathcal{S} = ({}_\mathcal{S}P_\mathcal{B})^{-1}$.

Given $A \in M_{n \times n}$, the **trace** of $A$ is $\operatorname{tr}(A) = \sum_{i = 1}^n A_{i, i}$. In other words, it is the sum of all the diagonal values.

The $[L]_\mathcal{B}$ notation is similar to the $[\vec{v}]_\mathcal{B}$, except instead of a coordinate being put into another basis, it is a linear mapping converted to work in another basis.

### Theorem 6.1.1

Given $P, A, B \in M_{n \times n}$ such that $P^{-1}AP = B$, then $\rank A = \rank B$, $\det A = \det B$, and $\operatorname{tr}(A) = \operatorname{tr}(B)$.

Also, if $P$ and $P^{-1}$ exist satisfying the above conditions, then $A$ and $B$ are **similar**. We can think of this as meaning that they represent the same linear operation, but in different bases.

Eigenvalues/Eigenvectors
------------------------

Pronounced "Eye-gan values" and "Eye-gan vectors".

Let $L$ be a linear operator and $\mathcal{B} = \set{\vec{v}_1, \ldots, \vec{v}_n}$ be a basis.

We want to determine if $\mathcal{B}$ exists such that the matrix of $L$ with respect to $\mathcal{B}$ is diagonal.

Assume that $\mathcal{B}$ exists satisfying these conditions. Then $[L]_\mathcal{B} = \diag(\lambda_1, \ldots, \lambda_n)$.

Clearly, ${}_\mathcal{S}P_\mathcal{B} = \begin{bmatrix} \vec{v}_1 & \ldots & \vec{v}_n \end{bmatrix}$ and $[L]_\mathcal{B} = {}_\mathcal{B}P_\mathcal{S} [L] {}_\mathcal{S}P_\mathcal{B}$.

So ${}_\mathcal{B}P_\mathcal{S} [L] {}_\mathcal{S}P_\mathcal{B} = \diag(\lambda_1, \ldots, \lambda_n)$ and $[L] {}_\mathcal{S}P_\mathcal{B} = {}_\mathcal{S}P_\mathcal{B} \diag(\lambda_1, \ldots, \lambda_n)$.

So $\begin{bmatrix} [L]\vec{v}_1 & \ldots & [L]\vec{v}_n \end{bmatrix} = \begin{bmatrix} \lambda_1\vec{v}_1 & \ldots & \lambda_n\vec{v}_n \end{bmatrix}$.

So for all $1 \le i \le n$, $L(\vec{v}_i) = \lambda_i \vec{v}_i$ and $\vec{v}_i \no \vec{0}$ since ${}_\mathcal{S}P_\mathcal{B}$ is invertible.

So $[L(\vec{v}_i)]_\mathcal{B} = [\lambda_i \vec{v}_i]_\mathcal{B}$. Since $[\vec{v}_i]_\mathcal{B} = \vec{e}_i$, $[L(\vec{v}_i)]_\mathcal{B} = \lambda_i \vec{e}_i$.

So $[L]_\mathcal{B} = \begin{bmatrix} \lambda_1\vec{e}_1 & \ldots & \lambda_n\vec{e}_n \end{bmatrix} = \diag(\lambda_1, \ldots, \lambda_n)$.

So if $[L]_\mathcal{B}$ is diagonal for a given $\mathcal{B}$, then $[L]_\mathcal{B} = \diag(\lambda_1, \ldots, \lambda_n)$. ;wip: what was the point of doing all this only to end up back at the beginning?

### Definition

Let $A \in M_{n \times n}$. Let $\vec{v} \ne \vec{0}$. Let $\lambda \in \mb{R}$. Then $\lambda$ is an **eigenvalue** of $A$ and $\vec{v}$ is an **eigenvector** of $A$ if and only if $A\vec{v} = \lambda \vec{v}$.

In other words, the eigenvector can be multiplied by $A$ to give a scalar multiple of itself, and the eigenvalue is the scalar that it is multiplied by.

Also, the eigenvector and eigenvalue of a linear operator is the eigenvector and eigenvalue of the standard matrix of the linear operator.

Every eigenvalue is associated with eigenvectors. An eigenvalue can have a whole set of associated eigenvectors.

Find the eigenvectors and eigenvalues of $L(\vec{x}) = \proj_\vec{a} \vec{x}$:

> Let $\lambda \in \mb{R}$. Clearly, $L(\vec{x}) = \lambda \vec{x}$ if $\vec{x}$ lies along $\vec{a}$ - $\vec{x}$ is already a scalar multiple of $\vec{a}$.  
> So the eigenvectors of $L(\vec{x})$ include $k\vec{a}, k \ne 0$ with tje eigenvalue $\lambda = 1$.  
> Clearly, $L(\vec{x}) = \lambda \vec{x}$ if $\vec{x}$ is perpendicular to $\vec{a}$ - the projection is $\vec{0}$.  
> So the eigenvectors of $L(\vec{x})$ include $k\vec{a}, k \ne 0$ with tje eigenvalue $\lambda = 0$.  
> Note that there are infinite combinations of eigenvalues and eigenvectors.  

Determine if $\vec{v} = \begin{bmatrix} 1 \\ 1 \\ 1 \end{bmatrix}$ is an eigenvector of $A = \begin{bmatrix} 3 & 6 & 7 \\ 3 & 3 & 7 \\ 5 & 6 & 5 \end{bmatrix}$ and if $\lambda = 1$ is an eigenvalue:

> CLearly, $A\vec{v} = \begin{bmatrix} 16 \\ 13 \\ 16 \end{bmatrix}$.  
> Clearly, $\begin{bmatrix} 16 \\ 13 \\ 16 \end{bmatrix}$ is not a scalar multiple of $\vec{v}$.  
> So $\vec{v}$ is not an eigenvector of $A$.  
> We need to see if there is a non-zero vector such that $A\vec{v} = \vec{v}$.  
> So $\begin{bmatrix} 3v_1 + 6v_2 + 7v_3 \\ 3v_1 + 3v_2 + 7v_3 \\ 5v_1 + 6v_2 + 5v_3 \end{bmatrix} = \begin{bmatrix} v_1 \\ v_2 \\ v_3 \end{bmatrix}$.  
> Solving, we find that $\vec{v} = \vec{0}$ is the only solution.  
> Since eigenvectors must be non-zero, there are no eigenvectors such that $\lambda = 1$ is the corresponding eigenvalue.  
> So $\lambda = 1$ is not an eigenvalue.  

### Calculation

Whenever we are finding eigenvalues, we are solving $A\vec{v} = \lambda \vec{v}$ such that $\vec{v} \ne 0$.

So $A\vec{v} - \lambda I \vec{v} = \vec{0}$ and $(A - \lambda I)\vec{v} = \vec{0}$.

Clearly, $\vec{v} = \vec{0}$ is always a solution for this linear system. However, we are only interested in the nontrivial solutions - we want more than one solution.

So we want $\rank A < n$, and by theorem 5.3.8, $\det (A - \lambda I) = 0$.

So $\lambda$ is an eigenvalue if and only if $\det (A - \lambda I) = 0$.

Given $A = \begin{bmatrix} 2 & -12 \\ 1 & -5 \end{bmatrix}$, find the eigenvalues and eigenvectors:

> Assume $(A - \lambda I)\vec{v} = \vec{0}$ and $\det (A - \lambda I) = 0$.  
> Clearly, $\det (A - \lambda I) = (\lambda + 2)(\lambda + 1)$. So $\lambda = -2, -1$. We can also write this as $\lambda_1 = -2, \lambda_2 = -1$.  
> Assume $\lambda = -2$. Then $(A - \lambda I)\vec{v} = \begin{bmatrix} 4 & -12 \\ 1 & -3 \end{bmatrix}\vec{v} = \vec{0}$.  
> Solving, we get $\vec{v} = k\begin{bmatrix} 3 \\ 1 \end{bmatrix}, k \ne 0$.  
> So the eigenvalue $\lambda = -2$ is associated with the eigenvector $\vec{v} = k\begin{bmatrix} 3 \\ 1 \end{bmatrix}, k \ne 0$.  
> Assume $\lambda = -1$. Then $(A - \lambda I)\vec{v} = \begin{bmatrix} 3 & -12 \\ 1 & -4 \end{bmatrix}\vec{v} = \vec{0}$.  
> Solving, we get $\vec{v} = k\begin{bmatrix} 4 \\ 1 \end{bmatrix}, k \ne 0$.  
> So the eigenvalue $\lambda = -1$ is associated with the eigenvector $\vec{v} = k\begin{bmatrix} 4 \\ 1 \end{bmatrix}, k \ne 0$.  

### Related Concepts

Note that when we calculated $\det (A - \lambda I)$, we always got an $n$th degree polynomial in terms of $\lambda$ - a polynomial of degree equal to the number of rows and columns.

We call this the **characteristic polynomial** of $A$. It is defined as $C(\lambda) = \det (A - \lambda I)$.

Clearly, $\lambda$ is an eigenvalue if and only if $C(\lambda) = 0$, since it is the solution to $\det (A - \lambda I) = 0$.

The **algebraic multiplicity** $a_\lambda$ of an eigenvalue $\lambda$ is the number of times $\lambda$ appears as a root of $C(\lambda)$ - it is the degree of the root $\lambda$.

Note that the eigenvectors $\vec{v}$ associated with a given eigenvalue are the solutions to $(A - \lambda I)\vec{v} = \vec{0}$ (rearranged from $A\vec{v} = \lambda \vec{v}$). Therefore, $\vec{v} \in \operatorname{Null}(A - \lambda I)$.

In other words, the eigenvector is one of the elements of the nullspace of $A - \lambda I$, excluding $\vec{0}$.

The **eigenspace** of the eigenvalue $\lambda$ is $E_\lambda = \operatorname{Null}(A - \lambda I)$.

The **geometric multiplicity** of an eigenvalue $\lambda$ is the dimension of its eigenspace, and is defined as $g_\lambda = \dim E_\lambda$.

### Theorem 6.2.3

For any eigenvalue $\lambda$, $1 \le g_\lambda \le a_\lambda$.

In other words, the geometric muliplicity is always less than or equal to the algebraic multpicity, and all multiplicities are positive integers.

Any eigenvalue $\lambda$ where $g_\lambda < a_\lambda$ **deficient**.

### Theorem 6.2.4

Given eigenvalues $\lambda_1, \ldots, \lambda_n$ of $A \in M_{n \times n}$, $\det A = \lambda_1 \cdots \lambda_n$ and $\operatorname{tr}(A) = \lambda_1 + \ldots + \lambda_n = \sum_{i = 1}^n \lambda_i$.

In other words, the determinant of a matrix is the product of all its eigenvalues and the trace is the sum of all the eigenvalues.