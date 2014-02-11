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
\newcommand{\evalat}[1]{\left.\left(#1\right)\right|}
\newcommand{\sech}{\operatorname{sech}}
\newcommand{\spn}{\operatorname{Span}}
\newcommand{\proj}{\operatorname{proj}}
\newcommand{\prp}{\operatorname{perp}}
\newcommand{\magn}[1]{\left\lVert #1 \right\rVert}
\newcommand{\rank}{\operatorname{rank}}
\newcommand{\sys}[2]{\left[ #1 \mid #2\hskip2pt \right]}
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

Clearly, $\begin{bmatrix} 2 \\ 0 \\ 2 \end{bmatrix} = 2\begin{bmatrix} 1 \\ 0 \\ 1 \end{bmatrix}}$, so $\spn \set{\begin{bmatrix} 1 \\ 0 \\ 1 \end{bmatrix}, \begin{bmatrix} 2 \\ 0 \\ 2 \end{bmatrix}} = \spn \set{\begin{bmatrix} 1 \\ 0 \\ 1 \end{bmatrix}}$ represents a line in 3D.

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
> $\mathcal{B}$ is linearly dependent if and only if $\exists c_1, \ldots, c_n \in \mathbb{R}, c_1 \vec{v}_1 + \ldots + c_n \vec{v}_n = \vec{0}, c_1 \cdot \ldots \cdot c_n = 0$.  
> Construct $c_1, \ldots, c_{i - 1}, c_{i + 1}, \ldots, c_n = 0, c_i = 1$.  
> Then $c_1 \cdot \ldots \cdot c_n = 0$ and $c_1 \vec{v}_1 + \ldots + c_n \vec{v}_n = \vec{0}$.  
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

If $\vec{v}_1, \ldots, \vec{v}_k \in \mb{R}^n$, then $\mb{S} = \span \set{\vec{v}_1, \ldots, \vec{v}_k}$ is a subspace of $\mb{R}^n$.

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

The **length** or **norm** of a vector $\vec{v} = \begin{bmatrix} v_1 \\ \vdots \\ v_k \end{bmatrix}$ is $\magn{\vec{v}} = \sqrt{\sum_{i = 1}^k v_i^2}$. Note the similarity to scalars, where $\abs{x} = \sqrt{x^2}$.

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

Since $\vec{X}$ is arbitrary, this holds for every point on the plane, and so is an equation of the plane.

Using the above, we can find the scalar equation of any plane given the normal and a fixed point on the plane.

If we extend this to hyperplanes, ;wip

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
* Adding a multiple of one row to another ($R_i + cR_j$ adds the $j$th row multiplied by $c \in \mb{R}, c \ne 0$ to the $i$th row).
* Swapping two rows ($R_i \leftrightarrow R_j$).

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

Row reduce $\begin{array}{ccc|c} 1 & 1 & 0 & -7 \\ 2 & 4 & 1 & -16 \\ 1 & 2 & 1 & 9 \end{array}$:

> $\begin{array}{ccc|c}
1 & 1 & 0 & -7 \\
2 & 4 & 1 & -16 \\
1 & 2 & 1 & 9 \\
\end{array}$ is row equivalent to $\begin{array}{ccc|c}
1 & 1 & 0 & -7 \\
0 & 0 & -1 & -34 \\
1 & 2 & 1 & 9 \\
\end{array}$ via $R_2 + (-2)R_3$.  
> $\begin{array}{ccc|c}
1 & 1 & 0 & -7 \\
0 & 0 & -1 & -34 \\
1 & 2 & 1 & 9 \\
\end{array}$ is row equivalent to $\begin{array}{ccc|c}
1 & 1 & 0 & -7 \\
1 & 2 & 1 & 9 \\
0 & 0 & -1 & -34 \\
\end{array}$ via $R_2 \leftrightarrow R_3$.  
> $\begin{array}{ccc|c}
1 & 1 & 0 & -7 \\
1 & 2 & 1 & 9 \\
0 & 0 & -1 & -34 \\
\end{array}$ is row equivalent to $\begin{array}{ccc|c}
1 & 1 & 0 & -7 \\
1 & 2 & 1 & 9 \\
0 & 0 & 1 & 34 \\
\end{array}$ via $(-1)R_3$.  
> $\begin{array}{ccc|c}
1 & 1 & 0 & -7 \\
1 & 2 & 1 & 9 \\
0 & 0 & 1 & 34 \\
\end{array}$ is row equivalent to $\begin{array}{ccc|c}
1 & 1 & 0 & -7 \\
0 & 1 & 1 & 16 \\
0 & 0 & 1 & 34 \\
\end{array}$ via $R_2 - R_1$.  
> $\begin{array}{ccc|c}
1 & 1 & 0 & -7 \\
0 & 1 & 1 & 16 \\
0 & 0 & 1 & 34 \\
\end{array}$ is row equivalent to $\begin{array}{ccc|c}
1 & 1 & 0 & -7 \\
0 & 1 & 0 & -18 \\
0 & 0 & 1 & 34 \\
\end{array}$ via $R_2 - R_3$.  
> $\begin{array}{ccc|c}
1 & 1 & 0 & -7 \\
0 & 1 & 0 & -18 \\
0 & 0 & 1 & 34 \\
\end{array}$ is row equivalent to $\begin{array}{ccc|c}
1 & 0 & 0 & 11 \\
0 & 1 & 0 & -18 \\
0 & 0 & 1 & 34 \\
\end{array}$ via $R_2 - R_3$.  

Note the general technique used in reducing the matrix. First, we want to obtain a triangle of 0 elements with leading ones diagonally rightwards, by going from top to bottom. Then, we make sure each leading one is the only non-zero element in its column by subtracting from rows below from bottom to top.

This technique is basically modifying the matrix until all the properties except for property 4. Then property 4 can be solved for relatively easily.

### Solution Set

A matrix is inconsistent if and only if its RREF contains a row of the form $\begin{array}{ccc|c} 0 & \ldots & 0 & 1 \end{array}$ - no possible values can satisfy this equation ($0 = 1$), so there are no solutions.

Recall that if consistent, a system of linear equations has either one or infinitely many solutions.

Solve $\begin{cases} x_1 + x_2 + x_3 &= 4 \\ x_2 + x_3 &= 3 \end{cases}$:

> The augmented matrix is $\begin{array}{ccc|c} 1 & 1 & 1 & 4 \\ 0 & 1 & 1 & 3 \end{array}$.  
> The matrix in RREF is $\begin{array}{ccc|c} 1 & 0 & 0 & 1 \\ 0 & 1 & 1 & 3 \end{array}$.  
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
* Additive identity: $\exists 0_{m, n} \in \mathbb{R}, \forall A \in M_{m, n}, A + 0_{m, n} = A$ ($0_{m, n}$ is called the zero matrix).
* Additive inverse: $\forall A \in M_{m, n}, \exists -A \in M_{m, n}, A + (-A) = 0_{m, n}$.
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

* Distributivity: $A(B + C) = AB + AC$.
* Scalar multiplication: $t(AB) = (tA)B = A(tB)$.
* Associativity: $(AB)C = A(BC)$.
* Transposition distributivity: $(AB)^T = A^T B^T$.

Note that matrix multiplication is not commutative over matrices: $AB \ne BA$ for some matrices.

### Theorem 3.1.4

Note that $A = B \implies AC = BC \wedge CA = BA$. However, $AC = BC \vee CA = BA$ **does not imply** $A = B$ - there is no cancellation law for matrix multiplication.

That said, given $A, B \in M_{m, n}$, $(\forall \vec{x} \in \mb{R}^n, A\vec{x} = B\vec{x}) \implies A = B$.

In other words, if each product of a matrix with an arbitrary vector are equal to each other, then the matrices are themselves equal to each other.

Proof:

> Let $A = \begin{bmatrix} \vec{a}_1 & \ldots & \vec{a}_n \end{bmatrix}, B = \begin{bmatrix} \vec{b}_1 & \ldots & \vec{b}_n \end{bmatrix}$.  
> Let $i \in \mb{N}, i \le n$.  
> Let $\vec{e}_i$ be the $i$th standard basis vector in $$\mb{R}^n (the vector with all zeroes except the $i$th element, which is 1).  
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

We can write this as $f\left(\begin{bmatrix} x_1 \\ \vdots \\ x_n \end{bmatrix}\right) = \begin{bmatrix} y_1 \\ \vdots \\ y_m \end{bmatrix}$, or with the more aesthetic notation $f(x_1, \ldots, x_n) = (y_1, \ldots, y_m)$.

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

To prove that a funtion is a lienar mapping, we simply need to prove that it has the inearity property.

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