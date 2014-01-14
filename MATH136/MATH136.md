
=======

Linear Algebra

    Instructor: Dan Wolczuk
    Section 081 (online)
    Email: dstwolcz@uwaterloo.ca

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
* Additive identity: $\exists \vec{0} \in \mathbb{R}, \vec{x} + \vec{0} = \vec{x}$
* Additive inverse: $\forall \vec{x} \in \mathbb{R}^n, \exists -\vec{x} \in \mathbb{R}^n, \vec{x} + (-\vec{x}) = \vec{0}$.
* $c\vec{x} \in \mathbb{R}^n$
* $c(d\vec{x}) = (cd)\vec{x}$
* Scalar distributivity: $(c + d)\vec{x} = c\vec{x} + d\vec{x}$
* Vector distributivity: $c(\vec{x} + \vec{y}) = c\vec{x} + c\vec{y}$
* Multiplicative identity: $1\vec{x} = \vec{x}$

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

Therefore, a set of vectors $\set{\vec{v}_1, \ldots, \vec{v}_n}$ is linearly independent if and only if $\exists c_1, \ldots, c_n \in \mathbb{R}, c_1 \cdot \ldots \cdot c_n \ne 0 \implies c_1 \vec{v}_1 + \ldots + c\_n vec{v}_n = \vec{0}$.

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