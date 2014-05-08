MATH239
=======

Combinatorics.

    Instructor: Martin Pei
    Office: MC 6492
    Email: mpei@uwaterloo.ca, martin31415926@gmail.com

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

# 5/5/14

;wip: do assignment 0 and get on LEARN

### Sets and Combinatorics

Combinatorics is a discrete mathematics. Topics include enumeration (counting) and graph theory.

The **size/cardinality** of a set $A$ is denoted $\abs{A}$. It is the number of elements it contains, if it is finite, and some other things if it is infinite.

$[n]$ is the set of all positive integers from 1 to $n$, inclusive.

The **Cartesian product** of two sets $A$ and $B$ is $A \times B = \set{(a, b) \middle| a \in A, b \in B}$. In other words, it is the set of all pairs of elements from both sets. This can easily be extended to more than two sets: $A \times B \times C$.

If $A$ and $B$ are finite, then $\abs{A \times B} = \abs{A}\abs{B}$.

Consider all possible results of throwing two six-sided dice:

> Clearly, the set of all possible results for each die is $[6]$ and $[6]$.  
> So the set of all possible results of both die is $[6] \times [6] = \set{(a, b) \middle| a, b \in [6]}$.  

Find the number of possible binary strings of length $n$:

> Clearly, each digit in the string is of the set $\set{0, 1}$, and there are $n$ digits.  
> Clearly, the number of possiblities are $\abs{\set{0, 1} \times \ldots \times \set{0, 1}}$ ($n$ times), or $2^n$.  
> The set of possible binary strings is therefore $\set{0, 1}^n$.  

Let $S  = A \cup B$. If $A \cap B = \emptyset$, then $\abs{S} = \abs{A} + \abs{B}$. In other words, if two sets share nothing in common, then their disjunction has a size equal to the sum of their sizes.

We could say that the Cartesian product is analogous to multiplcation, and disjunction is analogous to addition.

### Permutations

A **permutation** is the rearrangement of the elements of $[n]$ - an ordered set. For example, all permutations of $[3]$ are $\set{1, 2, 3}, \set{1, 3, 2}, \set{2, 1, 3}, \set{2, 3, 1}, \set{3, 1, 2}, \set{3, 2, 1}$.

In general, $[n]$ has $n!$ permutations. We find these permutations by picking each of the $n$ elements for the first position, and for each of these, we pick each of the $n - 1$ remaining elements for the second, and for each of these, we pick each of the $n - 2$ remaining elements for the third, and so on.

For example, find the permutations of $\set{1, 2, 3}$

> First, we choose 1 as the first position, so the remaining elements are $\set{2, 3}$.  
> Now we choose each of 2 and 3 for the second position, to yield the permutations $\set{1, 2, 3}$ and $\set{1, 3, 2}$.  
> Second, we choose 2 as the first position, so the remaining elements are $\set{1, 3}$.  
> Now we choose each of 1 and 3 for the second position, to yield the permutations $\set{2, 1, 3}$ and $\set{2, 3, 1}$.  
> Third, we choose 3 as the first position, so the remaining elements are $\set{1, 2}$.  
> Now we choose each of 1 and 2 for the second position, to yield the permutations $\set{3, 1, 2}$ and $\set{3, 2, 1}$.  

Every permutation is also a bijection, mapping elements from $[n]$ into a different set. Formally, $\sigma: [n] \to [n]$. For example, the permutation $\set{2, 3, 1}$ maps $\set{A, B, C}$ to $\set{B, C, A}$. In other words, it behaves something like a function.

### Combinations

A **combination** is a possible way of "choosing" $k$ elements of a set $[n]$, where $k \le n$. In other words, it is a subset of size $k$ of the set $[n]$.

A subset of size $k$ is known as a $k$-subset. A permutation of a $k$-subset is a $k$-permutation, and a combination of a $k$-subset is a $k$-combination.

We find these subsets by basically taking the first $k$ elements of each permutation. We then get the set containing all the possible $k$-permutations, but each one is duplicated $(n - k)!$ times because there are that many that start with those particular $k$ elements and are followed by all permutations of the remaining elements.

Therefore, there are $\frac{n!}{(n - k)!}$ $k$-permutations of $[n]$. Clearly, each $k$-combination corresponds to $k!$ $k$-permutations, because combinations are basically permutations without order.

So the number of $k$-combinations is a factor of $k!$ less than the number of $k$-permutations, and is given by $\frac{n!}{k!(n - k)!}$.

In general, $[n]$ has $\frac{n!}{k!(n - k)!}$ combinations of size $k$. This can be represented by $n \choose k$.

# 7/5/14

;wip: midterm on July 3

Bijections
----------

A **bijection** is a function that maps a set $S$ to another set $T$, and is one to one and onto.

One to one means that the function has a unique element of $T$ for every value of $S$ - no two things in $S$ are mapped to the same element of $T$. It is possible that $T$ is larger than $S$, so $\abs{T} \ge \abs{S}$.

Onto means that the function has a unique element of $S$ for every value of $T$ - every thing in $T$ must also have an element in $S$ that maps to it. Because there must be one element in $S$ for every element of $T$, so $\abs{S} \ge \abs{T}$.

A bijection is therefore a function that maps a set's elements to the elements of another set of the same size. Every element in either set has a unique corresponding element in the other set.

It is often tedious to prove that it is one to one and onto. We can prove a function is a bijection very easily, by proving that it has an inverse.

### Bijection Inverse Theorem

Proposition: a function is a bijection if and only if it has an inverse.

Proof:

> ;wip

The **inverse** of $f: S \to T$ is a function $f^{-1}$ such that \forall x \in S, f^{-1}(f(x)) = x$ and $\forall y \in T, f(f^{-1}(y)) = y$. It is basically a reverse mapping backwards from $T$ to $S$.

For example, let $S$ be the set of all $k$-subsets of $[n]$ and $T$ be the set of all $(n - k)$-subsets of $[n]$:

> If $n = 3, k = 1$, then $S = \set{\set{1}, \set{2}, \set{3}}, T = \set{\set{1, 2}, \set{1, 3}, \set{2, 3}}$.  
> One bijection over these sets would be $f: S \to T$ where $f(A) = [n] \setdiff A$. This is a bijection because it maps every item in $S$ to a unique item in $T$,   with no items in $T$ left over. ;wip: is \setdiff right?
> Also, since $\abs{A} = k$ and $A \subseteq [n]$, $\abs{f(A)} = \abs{[n]} - \abs{A} = n - k$, as required.  
> Clearly, $f^{-1}(B) = [n] \setdiff B$. Since the function has an inverse, $f$ is a bijection and $\abs{S} = \abs{T} = n \choose k = n \choose n - k$.  
> As an aside, we proved that $n \choose k = n \choose n - k$.  

Another example would be a mapping $f: S \to T$ where $S$ is all the subsets of $[n]$ and $T$ is all binary strings of length $n$:

> An obvious bijection would be to map all the subsets to binary strings such that each digit is 1 if and only if the index of that digit is in the set.  
> Formally, we would write that as $f(A) = a_n \cdots a_1, a_i = \begin{cases} 1 &\text{if } i \in A \\ 0 &\text{if } i \notin A \end{cases}, i \in [n]$.  
> We can also prove this is a bijection by finding its inverse: $f^{-1}(a_n \cdots a_1) = \set{i \in [n] \middle| a_i = 1}$.  
> Since it is a bijection, $\abs{S} = \abs{T}$, so there are the same number of subsets as there are binary strings of length $n$.  
> Since there are $2^n$ possible binary strings, there are also $2^n$ subsets of $[n]$.  
> This also gives us an algorithm for listing all the subsets. Since binary strings are easy to list by counting upwards, we simply apply $f^{-1}$ to the list of all the binary strings of length $n$ to get the subsets of $[n]$.  

Binomial Theorem
----------------

Proposition: $(1 + x)^n = \sum_{k = 0}^n {n \choose k} x^k$.

Clearly, $(1 + x)^n = (1 + x) \cdots (1 + x)$. Clearly, each term in the expansion takes either a $1$ or an $x$ from each of the factors.

For example, $(1 + x)^3 = (1 + x)(1 + x)(1 + x) = 1 \cdot 1 \cdot 1 + 1 \cdot 1 \cdot x + 1 \cdot x \cdot 1 + 1 \cdot x \cdot x$. Clearly, the factors of each term is in the Cartesian product of the set $\set{1, x}^n$.

We can also represent this using a Cartesian product. Clearly, $\set{1, x}^n = \set{(a_1, \ldots, a_n) \middle| a_1, \ldots, a_n \in \set{1, x}}$.

Therefore, $(1 + x)^n = \sum_{(a_1, \ldots, a_n) \in \set{1, x}^n} a_1 \cdots a_n$.

Clearly, each $a_1 \cdots a_n$ adds another $x^k$ where $k$ is the number of occurrences of $x$. Since there are $n \choose k$ ways of picking $k$ occurrences of $x$, and all possible combinations are in the Cartesian product, there are $n \choose k$ terms that are $x^k$.

Since the highest power is $x^n$, $(1 + x)^n = \sum_{k = 0}^n {n \choose k} x^k$.
