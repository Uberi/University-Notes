MATH239
=======

Combinatorics.

    Instructor: Martin Pei
    Office: MC 6492
    Email: mpei@uwaterloo.ca, martin31415926@gmail.com

$$
\newcommand{\set}[1]{\left\{ #1 \right\}}
\newcommand{\tup}[1]{\left\langle #1 \right\rangle}
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
\newcommand{\formlp}{\operatorname{Form}(\mathcal{L}_P)}
$$

# 5/5/14

Enumeration
-----------

### Sets and Combinatorics

Combinatorics is a discrete mathematics. Topics include enumeration (counting) and graph theory.

The **size/cardinality** of a set $A$ is denoted $\abs{A}$. It is the number of elements it contains, if it is finite, and some other things if it is infinite.

$[n]$ is the set of all positive integers from 1 to $n$, inclusive.

The **Cartesian product** of two sets $A$ and $B$ is $A \times B = \set{(a, b) \middle| a \in A, b \in B}$. In other words, it is the set of all pairs of elements from both sets. This can easily be extended to more than two sets: $A \times B \times C$.

Also, $A^k = A \times \ldots \times A$ ($k$ times). Also, $A^0 = \set{()}$ - the set containing the empty tuple.

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

In general, $[n]$ has $\frac{n!}{k!(n - k)!}$ combinations of size $k$. This can be represented by $n \choose k$. If $n < k$, we define ${n \choose k} = 0$.

# 7/5/14

Bijections
----------

A **bijection** is a function that maps a set $S$ to another set $T$, and is one to one and onto.

One to one means that the function has a unique element of $T$ for every value of $S$ - no two things in $S$ are mapped to the same element of $T$. It is possible that $T$ is larger than $S$, so $\abs{T} \ge \abs{S}$.

Onto means that the function has a unique element of $S$ for every value of $T$ - every thing in $T$ must also have an element in $S$ that maps to it. Because there must be one element in $S$ for every element of $T$, so $\abs{S} \ge \abs{T}$.

A bijection is therefore a function that maps a set's elements to the elements of another set of the same size. Every element in either set has a unique corresponding element in the other set.

It is often tedious to prove that it is one to one and onto. We can prove a function is a bijection very easily, by proving that it has an inverse.

### Bijection Inverse Theorem

Proposition: a function is a bijection if and only if it has an inverse.

The **inverse** of $f: S \to T$ is a function $f^{-1}$ such that $\forall x \in S, f^{-1}(f(x)) = x$ and $\forall y \in T, f(f^{-1}(y)) = y$. It is basically a reverse mapping backwards from $T$ to $S$.

For example, let $S$ be the set of all $k$-subsets of $[n]$ and $T$ be the set of all $(n - k)$-subsets of $[n]$:

> If $n = 3, k = 1$, then $S = \set{\set{1}, \set{2}, \set{3}}, T = \set{\set{1, 2}, \set{1, 3}, \set{2, 3}}$.  
> One bijection over these sets would be $f: S \to T$ where $f(A) = [n] \setminus A$. This is a bijection because it maps every item in $S$ to a unique item in $T$, with no items in $T$ left over.  
> Also, since $\abs{A} = k$ and $A \subseteq [n]$, $\abs{f(A)} = \abs{[n]} - \abs{A} = n - k$, as required.  
> Clearly, $f^{-1}(B) = [n] \setminus B$. Since the function has an inverse, $f$ is a bijection and $\abs{S} = \abs{T} = {n \choose k} = {n \choose n - k}$.  
> As an aside, we proved that ${n \choose k} = {n \choose n - k}$.  

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

# 9/5/14

In combinatorial proofs, we often prove that two things are equal by constructing a set such that if we count the number of elements it contains in one way it results in one side, and when we count another way it results in the other side.

So if we wanted to prove $A = B$, then we'd have a set such that finding its size one way results in $A$, and in another way results in $B$.

### Disjoint Sets

Two sets $A$ and $B$ are **disjoint sets** if they have no elements in common - $A \cap B = \emptyset$. Three or more sets are disjoint if all of those sets are all disjoint to each other - they all contain unique elements.

If the sets $S_1, \ldots, S_n$ are disjoint, then $\abs{S_1 \cup \ldots \cup S_n} = \abs{S_1} + \ldots + \abs{S_n}$. This is because all the elements are unique, so the union is simply the set containing all the original elements.

If we replace $x$ with 1 in the Binomial theorem, we get $2^n = \sum_{k = 0}^n {n \choose k}$. The $n \choose k$ values are known as the **binomial coefficients**.

We want a combinatoric proof of this rather than a simple algebraic proof. What we will do is create a set, and when we count it one way, we get $2^n$, and when we prove it another way, we get $\sum_{k = 0}^n {n \choose k}$.

Let $S$ be the set of all subsets of $[n]$. Then $\abs{S} = 2^n$, from the proof of bijections of binary strings.

Let $S_k$ be the set of all $k$-subsets of $[n]$, for $0 \le k \le n$. Then $S = S_0 \cup \ldots \cup S_n$, and $S_0, \ldots, S_n$ are disjoint sets.

Then $\abs{S} = \abs{S_1} + \ldots + \abs{S_n}$, and $\abs{S_k} = {n \choose k}$ (since a $k$-subset is all the ways we can choose $k$ elements out of $n$).

So $\abs{S} = 2^n = \sum_{k = 0}^n {n \choose k}$.

### Pascal's Triangle

Using this, we can draw **Pascal's Triangle**, a triangle listing all the binomial coefficients:

                   1
                1    1
             1    2    1
          1    3    3    1
       1    4    6    4    1
    1    5   10   10    5    1
    ...

The $n$th row of Pascal's Triangle is all the values of $n \choose k$, and each column of each row is for $k$ from 1 to $n$ inclusive.

From the triangle we notice that ${n \choose k} = {n - 1 \choose k} + {n - 1 \choose k - 1}$. However, we want to prove this:

> Let $S$ be the set of all $k$-subsets of $[n]$.  
> Then $\abs{S} = {n \choose k}$. Let $S_1$ be the set of all $k$-subsets of $[n]$ that include $n$, and $S_2$ be the set of all subsets that do not.  
> Clearly, $S = S_1 \cup S_2$, which is a disjoint set, so $\abs{S} = \abs{S_1} + \abs{S_2}$.  
> Clearly, every set in $S_1$ contains $n$, plus $k - 1$ elements from $[n - 1]$, since we can't use $n$ again.  
> So $\abs{S_1} = {n - 1 \choose k - 1}$, since it is the set of all $(k - 1)$-subsets of $[n - 1]$.  
> Clearly, every set in $S_1$ contains $k$ elements, and we can only choose from $[n - 1]$ elements.  
> So $\abs{S_2} = {n - 1 \choose k}$, since it is the set of all $k$-subsets of $[n - 1]$.  
> So ${n \choose k} = {n - 1 \choose k} + {n - 1 \choose k - 1}$.  

### Hockey Stick Identity

We can also prove it algebraically:

> If $f(x)$ is a power series, then let $[x^n]f(x)$ represent the coefficient of $x^n$ in $f(x)$.  
> So $[x^k](1 + x)^n = {n \choose k}$.  
> Clearly, $[x^k](1 + x)^n = [x^k](1 + x)(1 + x)^{n - 1} = [x^k](1 + x)^{n - 1} + [x^k]x(1 + x)^{n - 1}$.  
> Clearly, $[x^k](1 + x)^{n - 1} = {n - 1 \choose k}$.  
> Clearly, $[x^k]x(1 + x)^{n - 1} = [x^{k - 1}](1 + x)^{n - 1} = {n - 1 \choose k - 1}$, since the $x$ factor increases all the powers of $x$ in the power series by 1.  
> So $[x^k](1 + x)^n = [x^k](1 + x)^{n - 1} + [x^k]x(1 + x)^{n - 1} = {n \choose k} = {n - 1 \choose k} + {n - 1 \choose k - 1}$

From the above identity we know that ${n + k \choose n} = {n + k - 1 \choose n} + {n + k - 1 \choose n - 1}$, since we substituted $n + k$ for $n$ and $n$ for $k$.

If we expand the first term of the right side using the same identity, we get ${n + k \choose n} = {n + k - 2 \choose n} + {n + k - 2 \choose n - 1} + {n + k - 1 \choose n - 1}$.

If we keep expanding the first term on the right side, we find that we get ${n + k - (k + 1) \choose n} + {n + k - (k + 1) \choose n - 1} + \ldots + {n + k - 1 \choose n - 1}$. Clearly, $n + k - (k + 1) \choose n = 0$.

So by induction, we get $\sum_{i = 0}^k {n + i - 1 \choose n - 1} = {n + k \choose n}$.

Now we want to prove this combinatorially:

> Let $S$ be the set of all $n$-subsets of $[n + k]$. Then $\abs{S} = {n + k \choose n}$.  
> Let $S_i$ be the set of all $n$-subsets of $[n + k]$ whose largest element is $n + i$, where $0 \le i \le k$.  
> Clearly, the largest element of each $n$-subset is between $n$ and $n + k$ inclusive.  
> Clearly, $S = S_0 \cup \ldots \cup S_k$, and this is a disjoint set, so $\abs{S} = \abs{S_0} + \ldots + \abs{S_k}$.  
> Clearly, each set in $S_i$ must contain $n + i$ as the largest element, and all the other elements must be in $[n + i - 1]$ (since they must be less than the largest element).  
> So there are $n + i - 1$ elements to choose from, out of $n - 1$ spots (one spot of $n$ was taken by the largest element).
> So there are $n + i - 1 \choose n - 1$ elements in $S_i$.  
> So ${n + k \choose n} = \abs{S} = {n - 1 \choose n - 1} + \ldots + {n + k - 1 \choose n - 1} = \sum_{i = 0}^k {n + i - 1 \choose n - 1}$

This is known as the **hockey stick identity**. The reason for this is because it states that in Pascal's Triangle, the value of a number in the triangle is the sum of all the numbers in either diagonal passing through the number directly above it from the outside edge of the triangle until it is diagonal to the number we want.

For example, the topmost and leftmost 10 in Pascal's Triangle is $10 = 1 + 3 + 6$, or $10 = 4 + 3 + 2 + 1$.

# 12/5/14

Proof techniques: bijections, partitioning sets into two sets, and counting two sets in different ways.

Generating Series
-----------------

We can also prove by using power series.

Given a set $S$, the universe of discourse, where each element $\sigma \in S$ is associated with a non-negative integer weight $w(\sigma)$, the **generating series/generating function** of $S$ with respect to $w(\sigma)$ is $\Phi_S(x) = \sum_{\sigma \in S} x^{w(\sigma)}$. If we expand and collect like terms, the coefficient of each $x^k$ is the number of elements in $S$ with exactly the weight $k$.

For example, let $S$ be the set of all subsets of $[3]$, and let $w(A) = \abs{A}$. So $S = \set{\emptyset, \set{1}, \set{2}, \set{3}, \set{1, 2}, \set{1, 3}, \set{2, 3}, \set{1, 2, 3}}$. The corresponding weights are $0, 1, 1, 1, 2, 2, 2, 3$.

Then the generating series is $1 + x + x + x + x^2 + x^2 + x^2 + x^3 = 1 + 3x + 3x^2 + x^3 = (1 + x)^3$, from the binomial theorem.

What does each coefficient of $x^k$ mean? It is the number of elements that have exactly the weight $k$. In our particular example, it is the number of elements of size $k$.

So if $a_k$ is the weight of the $k$th subset, then $\Phi_S(x) = \sum_{k \ge 0} a_k x^k$.

Now we want to generalize this. Let $S$ be the set of all subsets of $[n]$ and $w(A) = \abs{A}$. Then the coefficient of $x^k$ in $\Phi_S(x)$ is $n \choose k$, because it is the number of $k$-subsets of $[n]$ (the number of ways we can choose $k$ elements from $n$ elements).

So $\Phi_S(x) = \sum_{k = 0}^n {n \choose k} x^k = (1 + x)^n$, by the binomial theorem.

How many ways can we throw two dice and get a sum of 10?

> Clearly, $S = [6] \times [6]$, the Cartesian product.  
> We define $(a, b)$ to be a pair of dice throws, and the weighting function to be their sum, $w((a, b)) = a + b$.  
> So $\Phi_{[6] \times [6]}(x) = \sum_{(a, b) \in [6] \times [6]} x^{a + b}$.  
> If we do this by hand, by considering every possible pair, we find that the generating series is $x^2 + 2x^3 + 3x^4 + 4x^5 + 5x^6 + 6x^7 + 5x^8 + 4x^9 + 3x^{10} + 2x^{11} + x^{12}$.  
> So the answer is the coefficient of $x^{10}$, which is 3.  
> If we factor this, we get $(x + x^2 + x^3 + x^4 + x^5 + x^6)^2$. Note that when we multiply this out, we add up the exponents, just like the weight function.  
> However, we want to solve it more simply. Suppose we have two infinite sided dice.  
> Then $S = \mb{N} \times \mb{N}$, the set of all pairs of natural numbers. We keep the same weight function, $w((a, b)) = a + b$.  
> So $\Phi_S(x) = x^2 + 2x^3 + 3x^4 + \ldots = (x + x^2 + \ldots)^2$.  
> Incidentally, $(x + x^2 + \ldots)^2 = \frac{x^2}{(1 - x)^2}$.  

In general, for a counting problem:

1. Define the set of objects.
2. Define a weight function related to the problem such that we get the answer we need.
3. Find the generating series.
4. Possibly find the coefficient of $x^k$

We rarely substitute a value for $x$. It acts as a way to keep the coefficients of $x$ as separate values. As a result we don't really need to worry about convergence or divergence.

This technique is useful because the generating series is sometimes easier to find than the actual coefficients, yet it can be used to find the coefficients.

The reason generating series are useful is because $[x^n]\Phi_S(x)$ is the number of times $w(\sigma) = n$. This allows us to find the number of $\sigma$ in $S$ that have $w(\sigma) = n$.

We can solve for $[x^k]$ explicitly by writing $\Phi_S(x)$ as a power series, solving for the index $i$ that would result in the term having $x^k$, and obtaining the coefficient of that index. However, leaving it in the form of $[x^n]f(x)$ is often sufficient for an answer.

For example, given $[x^k]\sum_{i = 1}^n 2i^ix^{2i}$, we solve $x^k = x^{2i}$ and $i = \frac k 2$. Then $[x^k]\sum_{i = 1}^n 2i^ix^{2i} = 2i^i = 2\left(\frac k 2\right)^{\frac k 2}$.

# 14/5/14

Formal Power Series
-------------------

Let $a_1, a_2, \ldots$ be a sequence of numbers. Then the **formal power series** associated with $\{a_n\}$ is $A(x) = \sum_{k \ge 0} a_k x^k$.

This allows us to represent the entire sequence using one power series.

The coefficient of $x^n$ in $A(x)$ is denoted $[x^n]A(x)$. For example, $[x^2](1 + 2x + 3x^2 + 4x^3 + \ldots) = 3$.

Two power series are **equal** if they have the same coefficients for the same powers: $A(x) = B(x) \iff \forall n \ge 0, [x^n]A(x) = [x^n]B(x)$.

Addition is defined as $A(x) + B(x) = \sum_{k \ge 0} \left([x^k]A(x) + [x^k]B(x)\right)x^k$.

For example, if $A(x) = (1 + 2x)^{10}, B = 1 + x + x^2 + \ldots$, find $[x^n](A(x) + B(x))$:

> Clearly, $A(x) = (1 + 2x)^{10} = \sum_{k = 0}^{10} {10 \choose k} (2x)^k = \sum_{k = 0}^{10} {10 \choose k} 2^k x^k$.  
> Clearly, $B(x) = \sum_{k = 0}^n x^k$.  
> So $[x^n](A(x) + B(x)) = \begin{cases} 2^n {10 \choose n} + 1 &\text{if } 0 \le n \le 10 \\ 1 &\text{if } n > 10 \end{cases}$.  

Multiplication is defined as $A(x)B(x) = \sum_{n \ge 0} \left(\sum_{i = 0}^n a_i b_{n - i}\right)x^n$. Since $\sum_{i = 0}^n a_i b_{i - 1}$ is always finite, multiplication of power series is closed under multiplication.

This can be derived by multiplying out $(a_0 + a_1x + a_2x^2 + \ldots)(b_0 + b_1x + b_2x^2 + \ldots) = (a_0 b_0 + a_0 b_1 a_0 b_2 + \ldots) + (a_1 b_0 + a_1 b_1 a_1 b_2 + \ldots) + (a_2 b_0 + a_2 b_1 a_2 b_2 + \ldots) + \ldots$. Clearly, the coefficient of $x^n$ is $a_0 b_n + a_1 b_{n - 1} + \ldots + a_n b_0$, because these are all the ways the values can add up to $n$ - $a_i$ is the coefficient of $x^i$ and $b_j$ is the coefficient of $x^j$, so it must be that $i + j = n$, and $j = n - i$.

Inverses
--------

The **inverse** of a power series $A(x)$ is $B(x)$ if and only if $A(x)B(x) = 1$. It is defined as $A^{-1}(x)$

What is the inverse of $1 - x$?

> Let $B(x) = b_0 + b_1x + b_2x^2 + \ldots$. Assume $A(x)B(x) = 1$.  
> Then $b_0 + b_1x + b_2x^2 + \ldots - b_0x - b_1x^2 - b_2x^3 - \ldots = 1 = b_0 + (b_1 - b_0)x + (b_2 - b_1)x^2 + (b_3 - b_2)x^3 + \ldots$.  
> So $b_0 = 1, b_1 - b_0 = 0, b_2 - b_1 = 0, b_3 - b_2 = 0, \ldots$, and $\forall n \ge 0, b_n = 1$.  
> So $(1 - x)^{-1} = 1 + x + x^2 + x^3 + \ldots = \frac 1 {1 - x}$, the geometric series.  

# 16/5/14

The three series to remember are:

* $\frac 1 {1 - x} = 1 + x + x^2 + \ldots$
* $\frac{1 - x^{k + 1}}{1 - x} = 1 + x + x^2 + \ldots + x^k$
* $\frac 1 {(1 - x)^k} = \sum_{n = 0}^\infty {n + k - 1 \choose k - 1}x^n$

What is the inverse of $x$, if it exists?

> Suppose $B(x) = b_0 + b_1x + \ldots$ exists such that $xB(x) = 1$.  
> Then $x(b_0 + b_1x + \ldots) = b_0x + b_1x^2 + \ldots = 1$.  
> This is a contradiction because the left side has no constant term, while the right side does.  

If we generalize this, any power series that does not have a constant term (any power series that has $x$ as a factor) cannot be inverted.

Any power series $A(x)$ has an inverse if and only if $[x^0]A(x) \ne 0$.

Incidentally, we can use the identity $\frac 1 {1 - f(x)} = 1 + f(x) + f(x)^2 + \ldots$ if $f(x)$ is a power series with no constant term. If there is a constant term, then the expansion of $f(x)^k$ has a constant term, so the constant term goes to infinity and the series no longer converges.

Compositions
------------

Let $G(x) = \frac 1 {1 - x} = 1 + x + x^2 + \ldots$. Then $G(3x^2) = \frac 1 {1 - 3x^2} = 1 + 3x^2 + 9x^4 + 27x^6$ and $[x^n]G(x) = \begin{cases} 3^{\frac n 2} &\text{if } n \text{ is even} \\ 0 &\text{if } n \text{ is odd} \end{cases}$.

Now let $A(x) = G(3x^2)^9 = \frac 1 {(1 - 3x^2)^9}$. Then $A(x) = \sum_{n \ge 0} {n + 9 - 1 \choose 9 - 1} (3x^2)^n = \sum_{n \ge 0} {n + 8 \choose 8}3^nx^{2n}$.

So $[x^{200}]A(x) = {108 \choose 8}3^{100}$.

### Expanding Rational Functions

Let $B(x) = \sum_{i \ge 0} (x + 2x^2)^i = \frac 1 {1 - (x + 2x^2)} = \frac 1 {1 - x - 2x^2}$.

How do we find the coefficients of this series? Let $B(x) = \sum_{i \ge 0} b_i x^i$.

Then $\frac 1 {1 - x - 2x^2} = \sum_{i \ge 0} (x + 2x^2)$ and $1 = (1 - x - 2x^2)\sum_{i \ge 0} (x + 2x^2) = \sum_{i \ge 0} (x + 2x^2) - x\sum_{i \ge 0} (x + 2x^2) - 2x^2\sum_{i \ge 0} (x + 2x^2) = b_0 + (b_1 - b_0)x + (b_2 - b_1 - 2b_0)x^2 + \ldots + (b_n - b_{n - 1} - 2b_{n - 2})$.

Since $1 = b_0 + (b_1 - b_0)x + (b_2 - b_1 - 2b_0)x^2 + \ldots + (b_n - b_{n - 1} - 2b_{n - 2})$, $b_0 = 1$ and $b_1 - b_0 = 0$, and $b_n - b_{n - 1} - 2b_{n - 2}$.

So the coefficients of the power series can be defined in terms of a recurrence relation: $b_0 = 1, b_1 = 1, b_n = b_{n - 1} + 2b_{n - 2}$.

We can generalize this to any rational function. Find the coefficients of the power series expansion for $F(x) = \frac{1 + 2x^4}{1 - 3x - x^3}$:

> Let $F(x) = \frac{1 + 2x^4}{1 - 3x - x^3} = \sum_{i \ge 0} f_i x^i$. Then $1 + 2x^4 = \sum_{i \ge 0} f_i x^i - 3x\sum_{i \ge 0} f_i x^i - x^3\sum_{i \ge 0} f_i x^i$.  
> Then $1 + 2x^4 = f_0 + (f_1 - 3f_0)x + (f_2 - 3f_1)x^2 + (f_3 - 3f_2 - f_0)x^3 + (f_4 - 3f_3 - f_1) + \ldots + (f_n - 3f_{n - 1} - f_{n - 3})x^n$.
> So the coefficients of the left and right sides match and $f_0 = 1, f_1 - 3f_0 = 0, f_2 - 3f_1 = 0, f_3 - 3f_2 - f_0 = 0, f_4 - 3f_3 - f_1 = 2$, and $f_n - 3f_{n - 1} - f_{n - 3} = 0, n > 4$.  
> Solving, we get $f_0 = 1, f_1 = 3, f_2 = 9, f_3 = 28, f_4 = 87, f_n = 3f_{n - 1} + f_{n - 3}$.  

Consider $D(x) = \sum_{i \ge 0} (1 + x^2)^i = \frac 1 {1 - (1 + x^2)} = \frac 1 {-x^2}$. However, this is **not a power series** - it does not have a constant term!

To see why, we can expand it out: $D(x) = 1 + (1 + x^2) + (1 + x^2)^2 + \ldots$. Note that every term has a 1 term in it when expanded. Therefore, the constant term goes toward infinity.

All power series must be invertible. Therefore, all power series **must have a constant term**. If the constant term is 0 or infinite, then it cannot be inverted and therefore is not a power series.

So when we are composing a series into the geometric series, like $\sum_{n \ge 0} f(x)$, then $f(x)$ must not have a constant term, or the above will happen and we will get an infinite constant term.

So the series we put into the geometric series cannot be invertible, and therefore cannot be a power series.

# 21/5/14

### Sum Lemma

Let $A \cap B = \emptyset$. Let $w$ be a weight function on $A \cup B$. Then $\Phi_{A \cup B}(x) = \Phi_A(x) + \Phi_B(x)$.

In other words, the generating series for the disjunction of disjoint sets is the sum of the generating series for each set.

This is because $\Phi_S = \sum_{\sigma \in S} x^{w(\sigma)} = \sum_{\sigma \in A} x^{w(\sigma)} + \sum_{\sigma \in B} x^{w(\sigma)} = \Phi_A(x) + \Phi_B(x)$.

For example, let $\mb{N}_0$ be the set of all non-negative integers and $w(\sigma) = \sigma$. Then $\Phi_{\mb{N}_0} = 1 + x + x^2 + \ldots = \frac 1 {1 - x}$.

Clearly, $\mb{N}_0 = E \cup O$, where $E$ is the set of non-negative even numbers and $O$ is the set of non-negative odd numbers. Clearly, $E \cap O = \emptyset$.

Clearly, $\Phi_E(x) = 1 + x^2 + x^4 + \ldots = \frac 1 {1 - x^2}$ and $\Phi_O(x) = x + x^3 + x^5 + \ldots = \frac x {1 - x^2}$.

Clearly, $\frac 1 {1 - x} = \frac 1 {1 - x^2} + \frac x {1 - x^2}$.

For example, let $S_n$ be the set of all subsets of $[n]$ and $w(A) = \abs{A}$. Clearly, $S_n = A \cup B$, where $A$ is the set of all elements in $S_n$ that contain $n$, and $B$ is the set of all elements that do not.

Clearly, $\Phi_{S_n}(x) = \Phi_A(x) + \Phi_B(x)$. Clearly, $B$ is the set of all subsets of $[n - 1]$, so $B = S_{n - 1}$. Clearly, $A$ is just the sets in $S_{n - 1}$ with $n$ added to each one, so $A = \set{x \cup \set{n} \middle| x \in S_{n - 1}}$.

So $\Phi_B(x) = \Phi_{S_{n - 1}}(x)$, and there is a bijection $f: A \to S_{n - 1}$ defined by $f(T) = T \setminus \set{n}$. Clearly, $w(T) = w(f(T)) + 1$ because we just added an element to each set to make it 1 bigger.

So $\Phi_A(x) = \sum_{T \in A} x^{w(T)} = \sum_{T \in A} x^{w(f(T)) + 1} = \sum_{T \in S_{n - 1}} x^{w(T) + 1} = x\sum_{T \in S_{n - 1}} x^{w(T)}$, since $f(T)$ maps every element of $A$ onto an element of $S_{n - 1}$.

So $\Phi_A(x) = x \Phi_{S_{n - 1}}(x), \Phi_B(x) = \Phi_{S_{n - 1}}(x)$, so ;wip

;wip: $(1 + x)\Phi_{S_{n - 1}}$ then simplify to $(1 + x)^n$

### Product Lemma

Let $A, B$ be sets and $\alpha, \beta$ be weight functions on $A, B$, respectively. Then if we define $w(a, b) = \alpha(a) + \beta(b)$, $\Phi_{A \times B}(x) = \Phi_A(x) \Phi_B(x)$.

In other words, the generating series for the Cartesian product of two sets is the product of the generating series for each of the two sets, if the weight function is the sum of the weight functions for the two sets.

This is because $\Phi_A(x) \Phi_B(x) = \sum_{a \in A} x^{\alpha(a)} \sum_{b \in B} x^{\beta(b)} = \sum_{a \in A} \sum_{b \in B} x^{\alpha(a)} x^{\beta(b)} = \sum_{a \in A} \sum_{b \in B} x^{\alpha(a) + \beta(b)}$. ;wip: how?

Since this is just the sum of all the elements in the Cartesian product, $\sum_{a \in A} \sum_{b \in B} f(a) g(b) = \sum_{x \in A \times B} x^{\alpha(a) + \beta(b)} = \Phi_{A \times B}(x)$, as required.

So $\sum_{(a, b) \in A \times B} x^{a + b} = \left(\sum_{a \in A} x^a\right)\left(\sum_{b \in B} x^b\right)$.

;wip: $\sum_{a \in A} f(a) \sum_{b \in B} g(b) = \sum_{a \in A} \sum_{b \in B} f(a) g(b)$.

How many ways can we add $k$ non-negative integers to get $n$?

> Each possible way can be represented as $(a_1, \ldots, a_k) \in \mb{N}_0^k$ (Cartesian product of non-negative integers $k$ times), where $a_1 + \ldots + a_k = n$ and $a_1, \ldots, a_k \in \mb{N}_0$.  
> Let $w(a_1, \ldots, a_k) = a_1 + \ldots + a_k$. Then by the product lemma, $\Phi_{\mb{N}_0^k}(x) = \Phi_{\mb{N}_0}(x) \cdots \Phi_{\mb{N}_0}(x) = \Phi_{\mb{N}_0}(x)^k$.  
> Clearly, $\Phi_{\mb{N}_0}(x) = 1 + x + x^2 + \ldots = \frac 1 {1 - x}$, so $\Phi_{\mb{N}_0^k}(x) = \frac 1 {(1 - x)^k} = \sum_{n \ge 0} {n + k - 1 \choose k - 1}x^n$.  
> So  there are $[x^n]\Phi_{\mb{N}_0^k}(x) = {n + k - 1 \choose k - 1}$ possible values of $(a_1, \ldots, a_k)$.  

# 23/5/14

Clearly, $\frac 1 {(1 - x)^k} = \frac 1 {1 - x} \cdots \frac 1 {1 - x}$. Since $\frac 1 {1 - x} = 1 + x + x^2 + \ldots$, it is the generating series for $\mb{N}_0$ with weight finction $w(\sigma) = \sigma$.

Then $\frac 1 {(1 - x)^k}$ is the generating series for $\mb{N}_0^k$ with weight function $w(a_1, \ldots, a_k) = a_1 + \ldots + a_k$.

There are $n + k - 1 \choose k - 1$ ways to add $k$ non-negative integers to add up to $n$.

This is because there are $k$ buckets and $n$ things to fill them with. We want to figure out all the ways we can distribute the $n$ things into the $k$ buckets.

Each bucket can hold from 0 to $n$ things. However, we notice that the order of the things does not matter, only the quantity.

If we line up the things, the buckets actually divide the line into $k$ segments, so it basically inserts $k - 1$ dividers into the line of $n$ things.

Now we consider the dividers as objects, so there are $n + k - 1$ of them in total. Therefore there are $n + k - 1 \choose k - 1$ ways of putting the things into buckets.

If we wanted to make this a proper proof, we might define a bijection between the tuples and a binary string where there is a run of $a_1$ zeroes, a 1, followed by $a_2$ zeros, a 1, all the way to $a_{k - 1}$ zeros, a 1, and $a_k$ zeros.

How many ways can we have 3 non-negative integers $a, b, c$ such that $a + b + c = n$ for some non-negative integer $n$, such that $a \ge 5, b \le 3, 2 \mid c$?

> Assume $a \ge 5, b \le 3, 2 \mid c$. Then we can model it with a Cartesian product: $(a, b, c) \in A \times B \times C$, where $A = \set{5, 6, 7, \ldots}, B = \set{0, 1, 2, 3}, C = \set{0, 2, 4, 6, \ldots}$.  
> Clearly, $\Phi_A(x) = x^5 + x^6 + \ldots = \frac{x^5}{1 - x}, \Phi_B(x) = 1 + x + x^2 + x^3, \Phi_C(x) = 1 + x^2 + x^4 + \ldots = \frac 1 {1 - x^2}$, where $w(\sigma) = \sigma$ for all three.  
> Let $w(a, b, c) = a + b + c$, so $\Phi_{A \times B \times C}(x) = \frac{x^5}{1 - x} (1 + x + x^2 + x^3) \frac 1 {1 - x^2} = \frac{x^5(1 + x + x^2 + x^3)}{(1 - x)(1 - x^2)}$.  
> We want the number of cases where $w(a, b, c) = n$, so the answer is $[x^n]\Phi_{A \times B \times C}(x) = [x^n]\frac{x^5(1 + x + x^2 + x^3)}{(1 - x)(1 - x^2)}$.

An **integer composition** of $n$ is a $k$-tuple $(a_1, \ldots, a_k)$ of positive integers such that $a_1 + \ldots + a_k = n$. Each $a_1, \ldots, a_k$ is a part.

For example, compositions of 5 include $(1, 3, 1)$ and $(2, 3)$. Each part must be greater than or equal to 1, and order is significant.

Also, 0 has a single composition, the empty tuple: $()$. This has zero parts, and we define the sum to be 0.

How many compositions of $n$ have exactly $k$ parts?

> Let $(a_1, \ldots, a_k)$ be a composition of $n$.  
> Then $a_1, \ldots, a_k \in \mb{N}$ and $(a_1, \ldots, a_k) \in \mb{N}^k$.  
> Note that instead of $\mb{N}$ we could also use $\set{1, \ldots, n}$, but we still use $\mb{N}$ to simplify our calculations because the generating series can be written in closed form.  
> Let $w(\sigma) = \sigma$ be a weighting function over $\mb{N}$.  
> Then $\Phi_{\mb{N}}(x) = x + x^2 + x^3 + \ldots = \frac x {1 - x}$.  
> Let $w(a_1, \ldots, a_k) = a_1 + \ldots + a_k$ be a weighting function over $\mb{N}^k$.  
> Then $\Phi_{\mb{N}^k}(x) = \frac x {1 - x} \cdots \frac x {1 - x} = \frac {x^k} {(1 - x)^k}$.  
> Then the number of values of $(a_1, \ldots, a_k)$ such that $w(a_1, \ldots, a_k) = n$ is $[x^n]\frac {x^k} {(1 - x)^k}$.  
> This is an acceptable answer, but we can also get a simpler solution.  
> Clearly, $[x^n]\frac {x^k} {(1 - x)^k} = [x^{n - k}]\frac 1 {(1 - x)^k} = [x^{n - k}]\sum_{i = 0}^\infty {i + k - 1 \choose k - 1}x^i = {n - k + k - 1 \choose k - 1} = {n - 1 \choose k - 1}$.  

Incidentally, the number of compositions in total is the sum of the compositions that have exactly $k$ parts from $k = 0$ to $k = n$.

# 26/5/14

How many compositions of $n$ exist?

> Let $S = \mb{N}^0 \cup \mb{N}^1 \cup \mb{N}^2 \cup \ldots$. This is the set of all possible compositions.  
> Let $w(a_1, \ldots, a_k) = a_1 + \ldots + a_k$. Then $\Phi_S(x) = \frac{1 - x}{1 - 2x}$, since $\Phi_S(x) = \sum_{i = 0}^\infty \left(\frac{x}{1 - x}\right)^i = \frac{1}{1 - \frac{x}{1 - x}} = \frac{1}{\frac{1 - 2x}{1 - x}}$.  
> Then there are $[x^n]\frac{1 - x}{1 - 2x}$ compositions of $n$.  
> Also, we can get the explicit value: $[x^n]\frac{1 - x}{1 - 2x} = [x^n]\frac{1}{1 - 2x} - [x^n]\frac{x}{1 - 2x} = [x^n]\frac{1}{1 - 2x} - [x^{n - 1}]\frac{1}{1 - 2x} = [x^n]\sum_{i = 0}^\infty (2x)^i - [x^{n - 1}]\sum_{i = 0}^\infty (2x)^i = \begin{cases} 2^n - 2^{n - 1} &\text{if } n > 0 \\ 1 &\text{if } n = 0 \end{cases}$.  

In general, to solve this type of problem:

1. Find a set $S$ that represents all the possible compositions of a certain type (without considering $n$).
2. Find $\Phi_S(x)$ where $w(a_1, \ldots, a_k) = a_1 + \ldots + a_k$.  
3. Then the number of compositions is usually $[x^n]\Phi_S(x)$.  
4. Try to find an explicit formula for $[x^n]\Phi_S(x)$ or try to simplify if possible using series and etc.

How many compositions of $n$ exist such that there are $2k$ parts, where the first $k$ parts are at least 5, and the last $k$ are multiples of 3.  

> Let $A = \set{5, 6, 7, \ldots}, B = \set{3, 6, 9, \ldots}$ (we don't include 0 since the values must be at least 1).  
> Let $S = A^k \times B^k$. Clearly, this set represents all of the compositions we care about.  
> Then $\Phi_S(x) = \Phi_A(x)^k \Phi_B(x)^k$, by the product lemma.  
> Clearly, $\Phi_A(x) = x^5 + x^6 + x^7 + \ldots = \frac{x^5}{1 - x}$ and $\Phi_B(x) = x^3 + x^6 + x^9 + \ldots = \frac{x^3}{1 - x^3}$.  
> So $\Phi_S(x) = \left(\frac{x^5}{1 - x}\right)^k \left(\frac{x^3}{1 - x^3}\right)^k = \frac{x^{8k}}{(1 - x)^k(1 - x^3)^k}$.  
> So there are $[x^n]\Phi_S(x) = [x^n]\left(\frac{x^5}{1 - x}\right)^k \left(\frac{x^3}{1 - x^3}\right)^k$ of these compositions.  

The Fibonnaci recurrence is defined as $a_0 = 1, a_1 = 1, a_n = a_{n - 1} + a_{n - 2}$.

How many compositions of $n$ have odd parts?

> Let $A = \set{1, 3, 5, \ldots}, S = A^0 \cup A^1 \cup \ldots$.  
> Then $\Phi_S(x) = \Phi_A(x)^0 + \ldots + \Phi_A(x)^k = \sum_{i = 0}^k \left(\frac{x}{1 - x^2}\right)^k = \frac{1}{1 - \frac{x}{1 - x^2}}$.  
> Solving as above, there are $[x^n]\frac{1 - x^2}{1 - x - x^2}$ compositions of $n$ with odd parts.  
> Let $S_n$ be the set of the compositions of $n$. Then $\abs{S_n} = [x^n]\frac{1 - x^2}{1 - x - x^2}$.  
> Solving the recurrence relation, we get $\Phi_S(x) = 1 - x^2 = (1 - x - x^2)$ ;wip
> Clearly, $\abs{S_n} = \abs{S_{n - 1}} + \abs{S_{n - 2}}$.  
> We can therefore define a bijection $f: S_n \to S_{n - 1} \cup S_{n - 2}$. One possible bijection is to remove the last element if it is 1, and if it is greater than 1 subtract 2. So $(1, 3, 1) \to (1, 3)$ and $(1, 3, 5) \to (1, 3, 3)$.  
> We can write this as $f(a_1, \ldots, a_k) = \begin{cases} (a_1, \ldots, a_{k - 1}) &a_k = 1 \\ (a_1, \ldots, a_{k - 1}, a_k - 2) &a_k > 1 \end{cases}$.  
> We can also define the inverse $f^{-1}: S_{n - 1} \cup S_{n - 2} \to S_n$. In the above case, this would be $f^{-1}(b_1, \ldots, b_k) = \begin{cases} (b_1, \ldots, b_k + 2) &b_1 + \ldots + b_k = n - 2 \\ (b_1, \ldots, b_k, 1) &b_1 + \ldots + b_k = n - 1 \end{cases}$.  
> So $S_n = \set{f^{-1}(a_1, \ldots, a_k) \middle| x \in S_{n - 1}} \cup \set{f^{-1}(a_1, \ldots, a_k) \middle| x \in S_{n - 2}}$.  
> So using this, $S_6$ can be found by finding $S_5$ and $S_4$ and applying $f$ to every element in their union. Likewise, $S_5$ and $S_4$ can be found by finding $S_3$ and $S_2$, and so on. This allows us to easily compute these compositions recursively.  

# 28/5/14

Binary Strings
--------------

A **binary string** is a sequence of 0 and 1. The length is the total number of these digits.

There is one string with length 0 denoted $\epsilon$. It is called the **empty string**.

The **concatenation** of binary strings $a$ and $b$ is $ab$ - we put all the digits of $b$ after $a$ to form a new binary string.

A **substring** of $a$ is a string $c$ such that there exist strings $b, d$ such that $a = bcd$.

A **block** is a substring of all 1 that has no 1 on either sides, or all 0 with no 0 on either side. It is the largest possible run of a digit.

We often want to know how many binary strings of length $n$ have certain properties.

We first construct a set $S$ of all strings with the given properties. Then, we define $w(s)$ as the length of the string $s$. Then we find $\Phi(S)(x)$ and the answer is $[x^n]\Phi(S)(x)$.

### Regular Expressions

Let $A, B$ be sets of strings.

Then $AB = \set{ab \middle| a \in A, b \in B}$. This is somewhat similar to the Cartesian product, but is not always the same. Basically, we have the set of all possible combinations of the two sets.

Then $A^n = AAA \ldots AAA$, $n$ times. So $A^0 = \set{\epsilon}, A^1 = A, A^2 = AA, \ldots$. So $00101 \in \set{0, 1}^5$.

Then $A^* = A^0 \cup A^1 \cup A^2 \cup \ldots$. This is the binary strings that can be made by concatinating combinations of $A$. For example, $\set{0, 1}*$ is the set of all possible binary strings.

For example, $\set{0}\set{00}^*$ is the set of all binary strings of all 0 of odd length. This is because it can be expanded to $\set{0, 000, 00000, \ldots}$.

Another example is $\set{0}^*(\set{1}\set{0}^*)^*$. This is the set of all possible binary strings, because given an arbitrary binary string, it can start with any number of 0 to be in $\set{0}^*$, and if we break the remaining string into pieces just before every 1, each piece is in $\set{1}\set{0}^*$.

# 30/5/14

### Generating Series

We want to find the number of binary strings of a given length $n$ that satisfy a given property. To do this we can use a generating series over the set of strings that satisfy this property where the weight is the length of the string.

For example, $\Phi_{\set{0, 1}}(x) = x + x = 2x$.

For example, in this case $\set{0, 1}^n$ is similar to a Cartensian product $n$ times. So in this case, we can use the product lemma: $\Phi_{\set{0, 1}^n}(x) = 2^nx^n$

For example, $\Phi_{\set{0, 1}*}(x) = \sum_{n \ge 0} \Phi_{\set{0, 1}^n}(x) = \sum_{n \ge 0} 2^nx^n = \frac 1 {1 - 2x}$.

What is the generating series for $\set{0}\set{00}^*\set{1, 11, 111}$?

> Clearly, $\Phi_{\set{0}}(x) = x, \Phi_{\set{00}*}(x) = \frac 1 {1 - x^2}, \Phi_{\set{1, 11, 111}}(x) = x + x^2 + x^3$.  
> So $\Phi_{\set{0}\set{00}*\set{1, 11, 111}}(x) = x \frac 1 {1 - x^2} (x + x^2 + x^3) = \frac{x^2 + x^3 + x^4}{1 - x^2}$ where the weight is the length of each string.  
> So there are $[x^n]\frac{x^2 + x^3 + x^4}{1 - x^2}$ binary strings of length $n$ in $\set{0}\set{00}*\set{1, 11, 111}$.  

### Ambiguity

We previously assumed that $AB$ is functionally the same as $A \times B$ - that concatenation of sets of binary strings is similar to the Cartesian producct. However, this is **not always true**.

In other words, it is not always true that $\Phi_{AB}(x) = \Phi_A(x) \Phi_B(x)$ if for all $ab \in AB$, $w(ab)$ is the length of $a$ plus the length of $b$.

For example, consider $A = \set{010, 01}, B = \set{01, 001}$. So $\Phi_A(x) = x^2 + x^3, \Phi_B(x) = x^2 + x^3$.

Clearly, $A \times B = \set{(010, 01), (010, 001), (01, 01), (01, 001)}$. So the generating series is $\Phi_{A \times B}(x) = x^5 + x^6 + x^4 + x^5$.

However, $AB = \set{01001, 010001, 0101, 01001}$. Note that $01001$ can be **created in two different ways**. So $\set{01001, 010001, 0101, 01001} = \set{01001, 010001, 0101}$ and $\Phi_{AB}(x) = x^5 + x^6 + x^4$. Note that in this case, the **product lemma does not hold**.

Given sets of binary strings $A$ and $B$, $AB$ is **ambiguous** if and only if there exist $(a_1, b_1), (a_2, b_2) \in A \times B, a_1 \ne a_2 \vee b_1 \ne b_2 \implies a_1b_1 = a_2b_2$. Otherwise, $AB$ is **unambiguous**.

Basically, if there is more than one way for any binary string to be created by concatenating binary strings in sets, then the set is ambiguous.

Also, $A \cap B$ is ambiguous if and only if $A \cap B \ne \emptyset$. This concept can be extended to any number of sets as well.

### Sum/Product Rule for Strings

If $A \cap B$ is unambiguous, then $\Phi_{A \cup B}(x) = \Phi_A(x) + \Phi_B(x)$ where $w(\sigma) = \sigma$.

This can be proved from the sum lemma.

If $AB$ is unambiguous, then $\Phi_{AB}(x) = \Phi_A(x) \Phi_B(x)$ where $w(a, b) = w_a(a) + w_b(b)$ where $w_a$ is the weight function for $\Phi_A(x)$ and $w_b$ is the weight function for $\Phi_B(x)$.

Since $AB$ is unambiguous, there is a bijection between $AB$ and $A \times B$, so it follows by the product lemma.

If $A^*$ is unambiguous, then $\Phi_{A^*}(x) = \frac 1 {1 - \Phi_A(x)}$ because $S^* = S^0 \cup S^1 \cup S^2 \cup \ldots$.

Proof:

> Since $A^*$ is unambiguous, $A^n$ is unambiguous.  
> Clearly, $\epsilon \notin A$, because if it was then $AA$ would be ambiguous.  
> So $\Phi_A(x)$ has no constant term and $\Phi_{A^*}(x)$ is a geometric series.  
> So $\Phi_{A^*}(x) = \frac 1 {1 - \Phi_A(x)}$.  

There are three basic unambiguous decompositions of the set of all binary strings. A decomposition is a way of writing a set using other sets. Often, the set being decomposed is infinite or otherwise hard to represent.

One is $\set{0, 1}^*$. Every binary string has a unique sequence of the elements in the set that, when concatenated, results in that string (we break the string between each character).

Another is $\set{0}^*(\set{1}\set{0}^*)^*$. Again, there is only one way for each string to be represented using the elements in the set (we break the string just before each 1).

The last is the **block decomposition**: $\set{0}^*\left(\set{1}\set{1}^*\set{0}\set{0}^*\right)^*\set{1}^*$. The reason for the name is because it matches blocks of 1 followed by blocks of 0 an arbitrary number of times.

We can also swap the 1 and 0 to the same effect: $\set{0}^*(\set{1}\set{0}^*)^*$ matches the same strings as $\set{1}^*(\set{0}\set{1}^*)^*$.

Also, $\Phi_A(x) = \abs{A}x$ if $A = \set{\ldots}$.

# 2/6/14

Let $S$ be the set of all binary strings with no 3 consecutive 0 - strings that do not contain 000. What is the generating series of this set?

> We can use the $\set{0}^*(\set{1}\set{0}^*)^*$ decomposition to match these strings.   
> Clearly, we can have three consecutive 0 when and only when we have a $\set{0^*}$. Instead, we can replace this with $\set{\epsilon, 0, 00}$, the subset of $\set{0}^*$ that do not contain 3 consecutive 0.  
> So $S = \set{\epsilon, 0, 00}(\set{1}\set{\epsilon, 0, 00})^*$. This is still unambiguous because we are simply removing strings we do not want to match.  
> Since it is unambiguous, $\Phi_S(x) = (1 + x + x^2) \frac 1 {1 - (x + x^2 + x^3)} = \frac{1 + x + x^2}{1 - x - x^2 - x^3}$.  

Let $T$ be the set of all binary strings where each block has length at least 2. What is the generating series of this set?

> We can use the $\set{0}^*(\set{1}\set{1}^*\set{0}\set{0}^*)^*\set{1}^*$ block decomposition to match these strings.  
> Clearly, $T = (\set{00}\set{0}^* \cup \set{\epsilon}))(\set{11}\set{1}^*\set{00}\set{0}^*)^*(\set{11}\set{1}^* \cup \set{\epsilon})$.  
> So $\Phi_T(x) = \frac{x^2}{}$
> ;wip: $\Phi_T(x) = \frac{1 - x + x^2}{1 - x - x^2}$

Let $U$ be the set of all binary strings where an even block of 0 cannot be followed by an odd block of 1. What is the generating series for this set?

> Clearly, we can use the $\set{1}*(\set{0}\set{0}*\set{1}\set{1}*)*\set{0}*$ block decomposition to match these strings (we swapped 0 and 1).  
> Clearly, $U = \set{1}*(\set{00}\set{00}*\set{11}\set{11}* \cup \set{0}\set{00}*\set{1}\set{1}*)*\set{0}*$. We are using two cases - when the block is of even length, and when it is of odd length, and considering each case separately.  
> Alternatively, we can write this is as $\set{1}*(\set{0}\set{0}*\set{1}\set{1}* \setminus \set{00}\set{00}*\set{1}\set{11}*)*\set{0}*$, as the set of all blocks minus the set of the blocks we do not want to match.  
> In that case the sum lemma can be used like a difference lemma: $A \setminus B$ implies that $\Phi_{A \setminus B}(x) = \Phi_A(x) - \Phi_B(x)$.  
> ;wip: \frac{1 + 2x + x^2}{1 - 3x^2 - x^3}
> We can also represent this using recursion: 

The Fibonnacci sequence is associated with a denominator of $1 - x - x^2$

If a regular expression matches a string, that means the string is contained in the set. A regular expression is just a set.

We can find these sets by starting with one of the unambiguous decompositions of all binary strings, and modifying the regular expression until it no longer matches the strings we do not want in the set.

### String Recursion

Clearly, any binary string consists of either an empty string, or a 0 or a 1 followed by another smaller binary string.

Therefore, we can define the set of all binary strings as $S = \set{\epsilon} \cup \set{0, 1}S$. There is only one way to break a string in this way, so this representation is unambiguous.

So $\Phi_S(x) = 1 + 2x\Phi_S(x)$, so $\Phi_S(x) = \frac 1 {1 - 2x}$ and $[x^n]\frac 1 {1 - 2x} = 2^n$.

# 4/6/14

Let $S$ be the set of all binary strings with no three consecutive 0. What is the generating series?

> First, we cut the string starting right after the first 1. Then the part we cut off is also in $S$.  
> Clearly, the first part can only be 1 or 01 or 001, because there cannot be 3 consecutive 0 and this is the first 1.  
> So we can represent the string as $S = \set{1, 01, 001}S \cup \set{\epsilon, 0, 00}$, since $\epsilon, 0, 00$ are the only possible strings that cannot be represented using the recursion.  
> So the generating series is $\Phi_S(x) = (x + x^2 + x^3)\Phi_S(x) + (1 + x + x^2)$ and $\Phi_S(x) - (x + x^2 + x^3)\Phi_S(x) = 1 + x + x^2$.  
> So $(1 - x - x^2 - x^3)\Phi_S(x) = 1 + x + x^2$ and $\Phi_S(x) = \frac{1 + x + x^2}{1 - x - x^2 - x^3}$.  

Let $S$ be the set of all binary strings without 1010 as a substring. What is the generating series?

> Let $T$ be the set of all string with exactly one copy of 1010 at the end.  
> We want to prove that $\set{\epsilon} \cup S\set{0, 1} = S \cup T$.  
> Cleary, $\set{\epsilon} \cup S\set{0, 1} \subseteq S \cup T$ is true because $\set{\epsilon} \in S \cup T$ and either $S\set{0, 1}$ has no 1010 (so it is in $S$), or it does and the 1010 is at the end (so it is in $T$).  
> Clearly, $S \cup T \subseteq \set{\epsilon} \cup S\set{0, 1}$ because any string $a$ in $S$ is either $\epsilon$ or not, in which case removing the last bit get another string $a$ implies $a \in S\set{0, 1}$, and because any string $a$ in $T$ is either epsilon or not, in which case removing the last bit means it has no 1010 and $a \in S\set{0, 1}$.  
> So $\set{\epsilon} \cup S\set{0, 1} \subseteq S \cup T$.  
> We want to prove that $S\set{1010} = T \cup $T\set{10}$.  
> Clearly, $S\set{1010} \subseteq T \cup T\set{10}$ any $a \in S$ either ends with 10 or not. If not, then $S\set{1010}$ has only one instance of 1010, so $S\set{1010} \in T$. If it does, $S\set{1010}$ has two copies of 1010 and ends in 101010, so $S\set{1010} \in T\set{10}$.  
> Clearly, $T \cup T\set{10} \subseteq S\set{1010}$ because taking the last four bits off any $a \in T$ to get $a'$ means that $a' \in S$.  
> Since $\set{\epsilon} \cup S\set{0, 1} = S \cup T$, $1 + 2x\Phi_S(x) = \Phi_S(x) + \Phi_T(x)$.  
> So $S\set{1010} = T \cup T\set{10}$.  
> Since $S\set{1010} = T \cup T\set{10}$, $x^4\Phi_S(x) = \Phi_T(x) + x^2\Phi_T(x)$, so $\Phi_T(x) = \frac{x^4}{1 + x^2}\Phi_S(x)$.  
> Solving, we get $\Phi_S(x) = \frac 1 {1 - 2x + \frac{x^4}{1 + x^2}} = \frac{1 + x^2}{1 - 2x + x^2 - 2x^3 + x^4}$.  

Coefficients of Rational Expressions
------------------------------------

Let $A(x) = \sum_{n = 0}^\infty a_nx^n = \frac{6 - x + 5x^2}{1 - 3x^2 - 2x^3}$.

Then $A(x) = \frac{6 - x + 5x^2}{(1 - 2x)(1 + x)^2}$ by factoring.

Then we find the partial fraction decomposition: $A(x) = \frac A {1 - 2x} + \frac B {1 + x} + \frac C {(1 - x)^2}$, where $\frac{A(1 + x)(1 + x)^2 + B(1 - 2x)(1 + x)^2 + C(1 - 2x)(1 + x)}{1 - 3x^2 - 2x^3}$.

Solving, we get $A(x) = \frac 3 {1 - 2x} - \frac 1 {1 + x} + \frac 4 {(1 + x^2)}$.

Then $[x^n]A(x) = [x^n]\frac 3 {1 - 2x} - [x^n]\frac 1 {1 + x} + [x^n]\frac 4 {(1 + x^2)^2} = [x^n]3\sum_{i = 0}^\infty 2^ix^i - [x^n]\sum_{i = 0}^\infty (-1)^ix^i + [x^n]4\sum_{i = 0}^\infty {i + 2 - 1 \choose 2 - 1}x^i = 3 \times 2^n - (-1)^n + {n + 1 \choose 1} = 3 \times 2^n - (-1)^n + n + 1$.  

So $[x^n]A(x) = 3 \cdot 2^n + (-1)^n(4n + 3)$.

In general, if $A(x) = \frac{f(x)}{g(x)}$ where the degree of the numerator is lower than that of the denominator, and $g(x)$ can be factored into $g(x) = (1 - r_1x)^{e_1} \cdots (1 - r_nx)^{e_n}$, then using partial fractions, there exist constants $C_{i, j}$ such that $A(x) = \left(\frac{C_{1, 1}}{1 - r_1x} + \ldots + \frac{C_{1, e_1}}{1 - r_1x}\right)^{e_1} + \ldots + \left(\frac{C_{n, 1}}{1 - r_nx} + \ldots + \frac{C_{n, e_1}}{1 - r_nx}\right)^{e_1}$. Given this, we can expand the series of each fraction into power series, and after that it is easy to find the coefficients.

The basic technique is to get the partial fraction decomposition, expand the power series, and then get the coefficient values from the power series.

# 6/6/14

Let $A(x) = \frac{f(x)}{g(x)}$. Let $g(x) = (1 - r_1x)^{e_1} \cdots (1 - r_k)^{e_k}$. If the constant term of $g(x)$ is not 1, then divide both $f(x)$ and $g(x)$ by that term to make it 1. ;wip: what if there is no constant term?

In general, $[x^n]A(x) = a_n = (C_{1, 1}{n + 1 - 1 \choose 1 - 1}r_1^n + \ldots + C_{1, e_1}{n + e_1 - 1 \choose e_1 - 1}r_1^n) + (C_{k, 1}{n + 1 - 1 \choose 1 - 1}r_k^n + \ldots + C_{k, e_k}{n + e_k - 1 \choose e_k - 1}r_k^n)$.

Clearly, ${n + e_i - 1 \choose e_i - 1} = \frac{(n + e_i - 1)!}{(e_i - 1)!n!} = \frac{(n + e_i - 1) \cdots (n + 1)}{(e_i - 1)!}$, so it is a polynomial of degree $e_i - 1$. So $A(x) = p_1(n)r_1^n + \ldots + A(x) = p_k(n)r_k^n$, where $p_i(n)$ has a degree less than or equal to $e_i - 1$.

Recall that $g(x) = (1 - r_1x)^{e_1} \cdots (1 - r_nx)^{e_n}$. Then we construct $g^*(x) = (x - r_1)^{e_1} \cdots (x - r_k)^{e_k}$. This is the **characteristic polynomial** of $g(x)$. It has roots $r_1, \ldots, r_k$ and $r_i$ has multiplicity $e_i$. The characteristic polynomial is just the one where there is a root for each $r_i$.

Let $A(x) = \sum_{n = 0}^\infty a_nx^n = \frac{6 - x + 5x^2}{1 - 3x^2 - 2x^3}$.

In the above example, the characteristic polynomial of $g(x)$ is $g^*(x) = (x - 2)(x + 1)^2 = x^3 - 3x - 2$. Note that the polynomial is exactly the same, except the power of $x$ in each term is swapped - $x^i$ in each term is replaced with $x^{n - i}$. This is a faster way to find the characteristic polynomial.

Then $[x^n]A(x) = \alpha 2^n + (\beta n + \gamma)(-1)^n$ for constants $\alpha, \beta, \gamma$. Using the $A(x) = \sum_{i = 0}^\infty a_ix^i = \frac{6 - x + 5x^2}{(1 - 2x)(1 + x)^2}$ and multiplying both sides by $g(x)$ and solving, we get $a_0 = 6, a_1 = -1, a_2 = 23$.

Clearly, $a_n = [x^n]A(x)$, so given these three values, we get $a_0 = \alpha 2^0 + (\beta 0 + \gamma)(-1)^0, a_1 = \alpha 2^1 + (\beta 1 + \gamma)(-1)^1, a_2 = \alpha 2^2 + (\beta 2 + \gamma)(-1)^2$. Solving, we get $\alpha = 3, \beta = 4, \gamma = 3$, so $a_n = 3 \times 2^n + (2n + 3)(-1)^n$.

Solving Homogeneous Recurrences
-------------------------------

Given $A(x) = \sum_{n = 0}^\infty a_nx^n$ where $a_0 = 1, a_1 = 4, a_n - 3a_{n - 1} + 2a_{n - 2} = 0$, find the explicit formula for $a_n$:

> First, we multiply $x^n$ with the recurrence, so $a_nx^n - 3a_{n - 1}x^n + 2a_{n - 2}x^n = 0$.  
> If we sum all of them to infinity, $\sum_{n = 2}^\infty (a_nx^n - 3a_{n - 1}x^n + 2a_{n - 2}x^n) = 0 = \sum_{n = 2}^\infty a_nx^n - 3\sum_{n = 1}^\infty a_nx^{n + 1} + 2\sum_{n = 0}^\infty a_nx^{n + 2}$.  
> So $\sum_{n = 2}^\infty a_nx^n - 3x\sum_{n = 1}^\infty a_nx^n + 2x^2\sum_{n = 0}^\infty a_nx^n = 0$.  
> Clearly, $\sum_{n = 2}^\infty a_nx^n = A(x) - a_1x^1 - a_0x^0$ (removing the first two terms) and $\sum_{n = 1}^\infty a_nx^{n + 1} = A(x) - a_0x^0$.  
> So $A(x) - a_1x^1 - a_0x^0 - 3x(A(x) - a_0x^0) + 2x^2A(x) = 0$ and solving, we get $A(x) = \frac{1 + x}{1 - 3x + 2x^2}$.  
> Clearly, the characteristic polynomial of the denominator of $A(x)$ is $x^2 - 3x + 2 = (x - 2)(x - 1)$.  
> So there are roots 1 and 2, both with multiplicity 1, and so $a_n = \alpha 2^n + \beta 1^n$ for some constants $\alpha, \beta$.  
> So $a_0 = \alpha 2^0 + \beta 1^0$ and $a_1 = \alpha 2^1 + \beta 1^1$, and solving, we get $\alpha = 3, \beta = -2$.  
> So $a_n = 3 \times 2^n - 2$.  

In fact, we can just do it directly from the recurrence relation: $a_n - 3a_{n - 1} + 2a_{n - 2}$ can directly be cconverted into the characteristic polynomial $x^2 - 3x + 2$, and we can solve for $a_n$ directly using $a_n = C_{1, 1}{n + 1 - 1 \choose 1 - 1}r_1^n + \ldots + C_{1, e_1}{n + e_1 - 1 \choose e_1 - 1}r_1^n + \ldots + C_{k, 1}{n + 1 - 1 \choose 1 - 1}r_k^n + \ldots + C_{k, e_k}{n + e_k - 1 \choose e_k - 1}r_k^n$, where $r_1, \ldots, r_k$ are the roots of the characteristic polynomial and $e_1, \ldots, e_k$ are the multiplicities of the roots. We can then solve for $C_{1, 1}, \ldots, C_{k, e_k}$ using the initial conditions.

This can also be written as $a_n = \left(C_{1, 1}{n + 1 - 1 \choose 1 - 1} + \ldots + C_{1, e_1}{n + e_1 - 1 \choose e_1 - 1}\right)r_1^n + \ldots + \left(C_{k, 1}{n + 1 - 1 \choose 1 - 1} + \ldots + C_{k, e_k}{n + e_k - 1 \choose e_k - 1}\right)r_k^n$.

More simply, $a_n = p_{e_1}(n)r_1^n + \ldots + p_{e_k}(n)r_k^n$, where $p_x(n)$ is a polynomial of degree at most $x$.

# 9/4/14

Basic steps for solving homogeneous recurrences:

1. Find the characteristic polynomial by reversing the powers of the denominator.
2. Find the roots of the characteristic polynomial.
3. Starting with an empty general solution: for each root $r$ with multiplicity $k$, we add $p(n)r^n$ to the general solution, where $p(n)$ is a polynomial of degree $k - 1$.
4. Use initial conditions to solve for unknown constants.

Find a closed form for $a_n$ where $a_0 = 1, a_1 = 2, a_2 = 1, a_n - 3a_{n - 1} + 3a_{n - 2} - a_{n - 3} = 0$:

> Clearly, the characteristic polynomial is $x^3 - 3x^2 + 3x - 1$, which we get by writing out the coefficients of $a_n, a_{n - 1}, \ldots$ and writing powers of $x$ beside them.  
> Factoring, we get $x^3 - 3x^2 + 3x - 1 = (x - 1)^3$. So there is one root, 1, with multiplicity 3.  
> So $a_n = p(n)r^k = (An^2 + Bn + C)1^n = An^2 + Bn + C$. We know that $p(n) = An^2 + Bn + C$ because it is an arbitrary polynomial of degree at most 2.  
> So $a_0 = 1 = A0^2 + B0 + C, a_1 = 2 = A1^2 + B1 + C, a_2 = A2^2 + B2 + C$. Solving, we get $A = -1, B = 2, C = 1$.  
> So $a_n = -n^2 + 2n + 1$.  

Also, $1 + \sqrt{5} = \phi$, the golden ratio.

Find the closed form for the Fibonacci sequence, $a_0 = 0, a_1 = 1, a_n - a_{n - 1} - a_{n - 2} = 0$:

> Clearly, the characteristic formula is $x^2 - x - 1 = (x - \frac{1 + \sqrt{5}}{2})(x - \frac{1 - \sqrt{5}}{2})$.  
> So $a_n = A\left(\frac{1 + \sqrt{5}}{2}\right)^n + B\left(\frac{1 - \sqrt{5}}{2}\right)^n$.  
> Solving, we get $A = \frac 1 {\sqrt{5}}, B = -\frac 1 {\sqrt{5}}$.  
> So $a_n = \frac{\left(\frac{1 + \sqrt{5}}{2}\right)^n - \left(\frac{1 - \sqrt{5}}{2}\right)^n}{\sqrt{5}}$.  

### Non-homogeneous Recurrences

Homogeneous recurrences are those where the constant term is 0. For example, $a_n + a_{n - 1} = 0$ - the right side is 0.

A non-homogeneous recurrence is therefore one that has a non-zero constant term.

For example, $a_0 = 11, a_1 = 42, a_n - 3a_{n - 1} + 2a_{n - 2} = 10 \times 3^{n - 1}$.

Suppose $b_n$ satisfies $b_n - 3b_{n - 1} + 2b_{n - 2} = 10 \times 3^{n - 1}$ (it has the same recursive part as $a_n$), but does not necessarily satisfy the initial conditions.

Then $(a_n - b_n) - 3(a_{n - 1} - b_{n - 1}) + 2(a_{n - 2} - b_{n - 2}) = 0$. So $a_n - b_n$ is a homogeneous version of the recurrence.

So the characteristic polynomial is $x^2 - 3x + 2 = (x - 2)(x - 1)$ with roots 1 and 2, so $a_n - b_n = A1^n + B2^n$, so $a_n = b_n + A + B2^n$.

$b_n$ is called the **specific solution**, and $A + B2^n$ is the solution to the homogeneous version. This is reminiscent of LDEs in MATH135, where the general solution to an LDE is a specific solution plus an offset.

We can find $b_n$ by using guess and check.

We guess $b_n = C3^n$. Then $b_n - 3b_{n - 1} + 2b_{n - 2} = C3^n - 3C2^{n - 1} + 2C3^{n - 2} = C3^{n - 2}(3^2 - 3 \cdot 3 + 2) = 2C3^{n - 2}$, and $b_n - 3b_{n - 1} + 2b_{n - 2} = 10 \cdot 3^{n - 1} = 2C3^{n - 2}$.

Solving, $C = 15$ and $b_n = C3^n = 15 \cdot 3^n$.

So $a_n = 15 \cdot 3^n + A + B2^n$. Now we can solve for $A$ and $B$.

Clearly, $a_0 = 11 = 15 \cdot 3^0 + A + B2^0 = 15 + A + B$, so $A + B = -4$. Clearly, $a_1 = 42 = 15 \cdot 3^1 + A + B2^1 = 45 + A + 2B$, so $A + 2B = -3$. So $A = -5, B = 1$.

So $a_n = 15 \cdot 3^n - 5 + 2^n$.

Why did we guess $b_n = C3^n$? We determined this from the generating series.

If we multiply $b_n - 3b_{n - 1} + 2b_{n - 2} = 10 \times 3^{n - 1}$ by $x^n$ and sum over $n \ge 2$, then we get $\sum_{n = 2}^\infty (b_nx^n - 3b_{n - 1}x^n + 2b_{n - 2}x^n) = \sum_{n = 2}^\infty 10 \cdot 3^{n - 1}x^n$.

So $\sum_{n = 2}^\infty (b_nx^n - 3b_{n - 1}x^n + 2b_{n - 2}x^n) = \sum_{n = 2}^\infty b_nx^n - 3x\sum_{n = 2}^\infty b_{n - 1}x^{n - 1} + 2x^2\sum_{n = 2}^\infty b_{n - 2}x^{n - 2} = \sum_{n = 2}^\infty b_nx^n - 3x\sum_{n = 1}^\infty b_nx^n + 2x^2\sum_{n = 0}^\infty b_nx^n$

So $(1 - 3x + 2x^2)\sum_{n = 0}^\infty b_n x^n = \frac{10}{3} (3^2 x^2) \frac 1 {1 - 3x} = \frac{30x^2}{1 - 3x}$. ;wip: no it doesn't...

Using partial fraction decomposition, $\sum_{n = 0}^\infty b_n x^n = \frac{30x^2}{(1 - 3x)(1 - 3x + 2x^2)} = \frac \ldots {1 - 3x} + \frac \ldots {1 - 2x} + \frac \ldots {1 - x}$. Note that $\frac \ldots {1 - 3x}$ is the result of the homogeneous part, so ;wip: what does that even mean

Find a closed form for $a_0 = 2, a_1 = 3, a_n - a_{n - 1} - 2a_{n - 2} = -4n + 16$:

> Let $b_n = An + B$ for some $A, B$ ;wip

# 11/6/14

So to solve non-homogeneous recurrences:

1. Guess a specific solution.
2. Substitute $a_n = b_n + \ldots$ to get a a homogeneous recurrence.
3. Use the initial conditions to find the unknowns. ;wip: rewrite these steps so they make sense

Solve $a_0 = 1, a_1 = 1, a_n - a_{n - 1} - 2a_{n - 2} = 3 \times 2^n, n \ge 2$:

> Guess $b_n = \alpha 2^n$. Then $b_n - b_{n - 1} - 2b_{n - 2} = \alpha 2^{2 - n}(2^2 - 2^1 - 2 \times 2^0) = 0$. Clearly, this guess is wrong because $0 \ne \alpha 2^n$ for all $n$.  
> Guess $b_n = \alpha n 2^n$. Then $b_n - b_{n - 1} - 2b_{n - 2} = \alpha 2^{2 - n}(n2^2 - (n - 1)2^1 - (n - 2)2 \times 2^0) = \alpha n2^{n - 2}(2^2 - 2^1 - 2 \times 2^0 ) + \alpha 2^{n - 2}(2^1 + 4 \times 2^0) = 3 \alpha 2^{n - 1}$.  
> Then $3 \alpha 2^{n - 1} = 3 \times 2^n$, so $\alpha = 2$ and $b_n = 2n 2^2 = n2^{n + 1}$.  
> With a characteristic polynomial of $x^2 - x - 2 = (x - 2)(x + 1)$, $a_n = n2^{n + 1} + A2^n + B(-1)^n$.  
> With $a_0 = 1, a_1 = 1$, $A = -1, B = 1$. So $a_n = n2^{n + 1} - 2^n + (-1)^n$.  
> We guessed $b_n = \alpha n 2^n$ for a reason.  
> If we multiply $a_n - a_{n - 1} - 2a_{n - 2} = 3 \times 2^n$ by $x^n$ and sum it over all $n \ge 2$, we get $(1 - x - x^2) A(x) = 3 \sum_{n = 2}^\infty 2^nx^n = \frac{3 \times 2^2x^n}{1 - 2x}$ for some $A(x)$ that we want to find.  
> Using partial fraction decomposition, $A(x) = \frac{\ldots}{(1 - x - 2x^2)(1 - 2x)} = \frac{\ldots}{(1 - x - 2x^2)(1 - 2x)} = \frac{\ldots}{1 + x} + \frac{\ldots}{1 - 2x} + \frac{\ldots}{(1 - 2x)^2}$.  
> The $\frac{\ldots}{(1 - 2x)^2}$ is the non-homogenous part, so the we have $n2^n$ ;wip: what? how? why?

In general, if a recurrence equals $kp^n$ where $p$ is a root of the characteristic polynomial with multiplicity $k$, then we should use $b_n = \alpha n^{k - 1} p^n$ as a guess.

Graph Theory
------------

### Definitions

A **graph** is a pair $G = (V(G), E(G))$ where $V(G)$ is a set of objects called **vertices**, and $E(G)$ is a set of unordered pairs of $V(G)$ called **edges** (these pairs are basically just 2-subsets of $V(G)$).

For example, $G = \left(\set{a, b, c, d}, \set{\set{a, b}, \set{b, c}, \set{c, d}, \set{a, d}}\right)$ is a graph.

We often represent graphs graphically, by drawing the vertices on a 2D surface as labelled circles or dots, and edges as lines or curves connecting the vertices they contain. Graphical representations are not unique - the vertices in the drawing can be arranged arbitrarily on the surface and the edges can be drawn as any kind of curvy line.

Let $G$ be a graph. Let $u, v \in V(G)$.

Then $u$ and $v$ are **adjacent** if there is an edge connecting the two. Formally, $u, v$ are adjacent if $\set{u, v} \in E(G)$.

If $u$ is adjacent to $v$, then $u$ is a **neighbour** of $v$.

The set of all the neighbors of $u$ is called the **neighbourhood**. Formally, the neighourhood of $u$ is $\set{v \middle| \set{v} \in \set{e \setminus \set{u} \middle| \set{e \in E(G) \middle| u \in e}}}$

An edge $e = \set{u, v}$ is **incident** with $u$ and $v$.

Graphs have lots of applications. For example, modelling computer networks to determine robustness and other properties. Other applications include electronic circuits, electricity and water distribution networks, road maps and navigation, social graphs, and more.

The map colouring problem asks how many colors are needed to shade in a geographical map such that no two adjacent (sharing a border of non-zero length) geopolitical regions have the same colour.

# 13/6/14

The vertices in a graph can be any type of object. We can abbeviate the edge $\set{u, v}$ as $uv$.

In this course we only deal with simple graphs - graphs with at most one edge between two vertices (no loops or double edges joining two vertices). Graphs in this course are also finite.

Isomorphism
-----------

Two graphs $G_1, G_2$ are **isomorphic** if and only if there is a bijection $f: V(G_1) \to V(G_2)$ such that $uv \in E(G_1) \iff f(u)f(v) \in E(G_2)$. If this is the case, then $f$ is called an **isomorphism**.

In other words, two graphs are isomorphic if they have the **same structure** - if they have every vertex correspend to each other, and the edges in one graph connect the corresponding vertices in the other graph.

Two graphs can have multiple possible isomorphisms, or none at all, in which case they are not isomorphic.

Basically, a graph $G_2$ that is isomorphic to a graph $G_1$ can be created from $G_1$ by replacing its vertices with vertices in $G_2$.

The isomorphism preserves the edge structure, so edges are mapped to edges, and non-edges are mapped to non-edges.

We can detect isomorphism informally by moving the vertices around until the two graphs resemble each other.

Checking if two graphs are isomorphic can be done in polynomial time, using recently developed algorithms.

To prove two graphs are isomorphic, we find an isomorphism. To prove two graphs are not isomorphic, we find a structure in one graph that is not in the other.

The degree of a vertex $u$ in $G$ is the number of edges incident with it. The degree of a vertex is $\deg_G(v) = \abs{\set{e \in E(G) \middle| v \in e}}$.

The sum of the degrees of every vertex in a graph $G$ has a special meaning and is $\sum_{u \in V(G)} \deg_G(u)$. The sum is always even because every edge $\set{u, v}$ increases both $\deg_G(u)$ and $\deg_G(v)$ by 1. This is called the **handshaking lemma**, and $\sum_{u \in V(G)} \deg_G(u) = 2 \abs{E(G)}$.

As a result, the number of odd-degree vertices must always be even.

Proof:

> Let $O$ be the subset of vertices in $G$ with odd degree and $E$ the subset with even degree.  
> Then $\sum_{u \in V(G)} \deg_G(u) = \sum_{v \in O} \deg_G(v) + \sum_{v \in E} \deg_G(v) = 2\abs{E(G)}$.  
> Since $2\abs{E(G)}$ and $\sum_{v \in E} \deg_G(v)$ are even (sum of even numbers is even), $\sum_{v \in O} \deg_G(v)$ must also be even.  
> Since every $\deg_G(v)$ in $\sum_{v \in O} \deg_G(v)$ is odd, $\sum_{v \in O} \deg_G(v)$ can only be even if $\abs{O}$ is even.  
> So there are an even number of odd vertices.  

#16/6/14

A **cycle** is a closed path through three or more vertices (for the simple graphs we are using in this course).

A graph $G$ is $k$-regular if every vertex has a degree of $k$ - $\forall v \in V(G), \deg(v) = k$. So a 0-regular graph has no edges, and a 1-regular graph has pairs of vertices joined by edges (these are also called matchings). 2-regular graphs have their vertices all connected by a closed path of edges, called a collection of cycles. A 3-regular graph does not lend itself to a simple description, and so on.

Clearly, the sum of vertices in a $k$-regular graph is $\sum_{v \in V(G)} \deg(v) = \abs{V(G)}k$, so by the handshaking lemma $\abs{E(G)} = \frac{\abs{V(G)}k}{k}$.

A graph $G$ is **complete** if every pair of vertices in $G$ is joined by an edge. A complete graph with $n$ vertices is represented by $k_n$. Therefore the number of edges is the same as the number of pairs of vertices. There are $n \choose 2$ pairs, so there are $n \choose 2$ edges in $k_n$.

Also, $k_n$ is $(n - 1)$-regular, because each vertex must connect with $n - 1$ other vertices.

A partition of a set $S$ is a pair $(A, B)$ such that $A \cup B = S, A \cap B = \emptyset$. In other words, a way of dividing the set into two groups.

A graph $G$ is **bipartite** if there is a partition of $V(G)$ into $(A, B)$ such that $G$ has every edge in $\set{\set{u, v} \middle| u \in A, v \in B}$. In other words, if there is a partition such that the edges go between the two partitioned areas, but not within the partitioned areas. The two partitions do not necessarily have the same size.

We prove a graph is bipartite by giving the partition, and we prove that a graph is not bipartite by contradiction - assuming that one vertex is in partition $A$, any vertex connected by an edge must be in $B$, and we try to derive a contradiction where a vertex is in $A$ yet also in $B$, since $A \cap B = \emptyset$.

Any graph containing a cycle containing an odd number of vertices cannot be bipartite. Every graph is either bipartite, or has a cycle with an odd number of vertices.

A graph $G$ is a **complete bipartite graph** if $G$ is bipartite with partitions $(A, B)$ and has every edge in $\set{\set{u, v} \middle| u \in A, v \in B}$. In other words, a biparitite graph with every possible pair of vertices with one from $A$ and one from $B$ are connected by edges. A complete bipartite graph with $\abs{A} = m, \abs{B} = n$ is represented by $k_{m, n}$.

Every vertex of $A$ must be connected with every element of $B$, and every element of $B$ must be connected with every element of $A$, so the total number of edges in $k_{m, n}$ is $mn$. The degree of every vertex in $A$ is $n$ and the degree of every vertex in $B$ is $m$.

N-cubes
-------

An $n$-cube is a graph where the vertices are all binary strings of length $n$ and two vertices are connected by an edge if and only if they differ by one bit. The 1-cube looks like a line, the 2-cube looks like a square, and the 3-cube looks like a 2D projection of a 3D cube.

# 18/6/14

The $n$-cube has $2^n$ vertices, and is always an $n$-regular graph. It is regular because there are always $n$ ways to have a binary string differ by 1 bit, so every binary string is connected to $n$ other binary strings.

By the handshaking lemma, there are $\frac 1 2 n2^n = n2^{n - 1}$ edges in an $n$-cube. The $n$-cube is also bipartite, because it is impossible for any cycles with odd numbers of vertices to exist in the graph.

For example, a 3-cube can be partitioned into $\left(\set{000, 101, 110, 011}, \set{001, 100, 111, 010}\right)$. In general, one parition has all binary strings with an even number of 1, and the other has those with an odd number of 1. This is because any binary string differs with another by one bit if and only if it has one less 1 or one more 1 than the other. Therefore, no two binary strings with an even number of 1 can differ by 1 bit, and no two binary strings with an odd number of 1 can differ by 1 bit. Therefore, this partition shows that the $n$-cube is bipartite.

It is possible to recursively construct the $n$-cube. First, the 0-cube is a single vertex, $\epsilon$. Given an $n$-cube, we can find the graph for the $(n + 1)$-cube by making two copies of the $n$-cube (with a 0 prepended to every string in the first copy and 1 prepended to every string in the second copy), and then joining the corresponding vertices of the two copies (which now differ by 1 bit since we prepended different values in each copy).

The $n$-cube is an $n$-dimensional analogue of a cube. A 2D drawing of a 4-cube is a 2D projection of a tesseract.

Also, any finite graph can be represented in 3D space such that there are no crossing edges. This is difficult to prove, however.

;wip: the midterm will cover everything up to this point, and the midterm is in like two weeks

Walks/Paths
-----------

Let $u, w$ be vertices of a graph $G$.

Given vertices $u, w$, a $u, w$ **walk** is a sequence of alternating vertices and edges $u, e_1, v_1, e_2, v_2, \ldots, e_{k - 1}, v_{k - 1}, e_k, w$, where $v_1, \ldots, v_k$ are vertices and $e_i, 1 \le i \le k$ is the edge $\set{v_{i - 1}, v_i}$. The length of this walk is $k$ - the number of edges in the walk.

This is also written $u = v_0, e_1, v_1, e_2, v_2, \ldots, e_{k - 1}, v_{k - 1}, e_k, v_k = w$ or just $v_0, v_1, \ldots, v_{k - 1}, v_k$.

The walk is **closed** if $u = v$ - if it begins the same place it ends. There can also be duplicated vertices or edges.

Since we only deal with simple graphs in this course, it is possible to represent a walk just by its vertices. So a walk of a 3-cube might be written as $000, 001, 000, 100, 101$.

A walk of length 0 just contains one vertex. For example, $000$ is a zero-length walk of the 3-cube.

A $u, w$ **path** is a walk with no repeated vertices or edges. As a result, a path cannot be closed. All $u, w$ paths are $u, w$ walks.

All walks can be converted into paths. If we can get somewhere by repeating vertices, then we can also just not repeat those vertices and get to the same place.

# 20/6/14

Prove that if there exists a $u, v$ walk, then there must also exist a $u, v$ path:

> Let $u, w_1, \ldots, w_{k - 1}, v$ be a $u, v$ walk of shortest length.  
> If there are no repeated vertices, then it is a $u, v$ path.  
> Otherwise, let $v_i$ be the first instance of the first repeated vertex, so $\exists j > i, v_j = v_i$.  
> Then $u, v_1, \ldots, w_i, w_{j + 1}, \ldots, v$ is a walk as well.  
> However, this is shorter than the original walk, which is the shortest possible walk, which is a contradiction.  
> Therefore, the shortest $u, w$ walk cannot have any repeated vertices, and it is a path.  
> Therefore, one of the $$

$u \sim v$ is an equivalence relation. In graph theory, $u \sim v$ if and only if there exists a $u, v$ path.

If $u \sim v$ and $v \sim w$, then $u \sim w$ - $\sim$ is transitive. This is because a $u, v$ path followed by a $v, w$ path is a $u, w$ walk, so by the previous theorem there must be a $u, w$ path.

$\sim$ is reflexive - $u \sim u$ is true for any vertex $u$. $\sim$ is also symmetric $u \sim v$ implies that $v \sim u$.

We can then partition $V(G)$ into equivalence classes (groups of vertices such that for every vertex $u$ and every vertex $v$, $u \sim v$). These partitions are called **components** and are basically islands of vertices where every vertex is connected to the group by at least one edge.

A **cycle** is a non-trivial closed walk with no repeated vertices and edges. Nontrivial means it has two or more vertices in the walk.

A cycle must have a length of 3 or more, because it is impossible to construct a cycle with 1 vertex (which is trivial) or 2 (which would repeat vertices). The degree of the vertices in a cycle must be at least 2.

Prove that if every vertex in $G$ has a degree of 2 or more, then $G$ must have a cycle:

> This is because if we go into a vertex, there must be a way out of the vertex, so eventually we must hit a repeated vertex.  
> Let $v_0, \ldots, v_k$ be the longest path in $G$. Assume every vertex in $G$ has a degree of 2 or more.  
> Clearly, $v_k$ has neighbor $v_{k - 1}$, and it has a degree of 2 or more, so it must have at least one other neighbor $u$.  
> Clearly, if $u$ is not one of $v_0, \ldots, v_k$, then $v_0, \ldots, v_k, u$ is a longer path, a contradiction.  
> So $u$ must be one of $v_0, \ldots, v_k$. Since $u$ cannot be $v_k$ or $v_{k - 1}$ (because $v_{k - 1}$ is already another neighbor), $u$ is in $\set{v_0, \ldots, v_{k - 2}}$.  
> So there exists some $i$ such that $v_i = u$, and $v_i, \ldots, v_k$ is a cycle.  

A **Hamilton cycle** is a cycle that contains every vertex in the graph. Finding a Hamilton cycle for an arbitrary graph, or even if it exists, is an NP-complete problem. This is because it can be reduced to the travelling salesman problem.

All complete graphs have Hamiltonian cycles. ;wip: prove it

If $G$ is a graph with $\abs{V(G)} \ge 3$, and every vertex in $G$ has a degree of $\frac{n}{2}$ or more, then $G$ has a Hamilton cycle. The converse is not necessarily true.

# 23/6/14

;wip: pidgeonhole principle

Proof:

> Let $G$ be a graph with $\abs{V(G)} \ge 3$ where every vertex in $G$ has a degree of $\frac{n}{2}$ or more.  
> Suppose $G$ has no Hamilton cycle. Then there must be a set of counterexamples $S_n$ with $n$ vertices for some $n$.  
> Let $G \in S_n$ be the graph with the largest number of edges - the largest possible counterexample with $n$ vertices.  
> Clearly, $G$ cannot be complete because $G$ would have a Hamilton cycle if it was.  
> Since it is not complete, there exist $u, v \in V(G)$ such that $\set{u, v} \notin E(G)$ - there exists a pair of vertices that are not adjacent.  
> So if we added the edge $\set{u, v}$ to $G$ to get $G'$, $G'$ has more edges than the largest counterexample, so it is not a counterexample and must have a Hamilton cycle.  
> This Hamilton cycle in $G'$ must use $\set{u, v}$, so there must be a $\set{u, v}$ path $P = v_1, \ldots, v_n, v_1 = u, v_n = v$ in $G$ that contains all the vertices in $G$, made by removing $\set{u, v}$ from the Hamilton cycle in $G'$.  
> Let $S = \set{i - 1 \middle| \set{v_1, v_i} \in E(G)}, S = \set{i \middle| \set{v_i, v_n} \in E(G)}$ - the indices of the neighbors of $v_1$ and $v_n$, respectively.  
> Since all vertices have degree of at least $\frac n 2$, $\abs{S} \ge \frac n 2, \abs{T} \ge \frac n 2$.  
> Since $S, T \subseteq [n - 1]$ (since $v_1$ cannot be connected to $v_n$), by the Pidgeonhole principle, there is some $i$ for which $i \in S \cap T$.  
> So $\set{v_1, v_{i + 1}}, \set{v_i, v_n} \in E(G)$. So $v_1, v_{i + 1}, \ldots, v_n, v_i, \ldots, v_1$ is a Hamiltonian cycle.  
> This is a contradiction because $G$ has no Hamilton cycle. So $G$ has a Hamilton cycle.  

A graph $G$ is **connected** if there is a $u, v$ path for every pair of vertices $u, v \in V(G)$. This means that given any two vertices in the graph, it is possible to construct a path between them.

A disconnected graph is the opposite. A disconnected graph has groups of vertices that have no edges between them.

If there are $n$ vertices, there are $\frac{n(n - 1)}{2}$ possible pairs of vertices. However, we can save a lot of time by checking fewer pairs.

If there exists a vertex $u \in V(G)$ such that a $u, v$ path exists for all $v \in V(G)$, then $G$ is connected. The converse is also true but is trivially proven.

Proof:

> Assume $u \in V(G)$ exists such that a $u, v$ path exists for all $v \in V(G)$. Let $y, z \in V(G)$.  
> So a $u, y$ path and a $u, z$ path exists, so if we join them together, we have a $y, z$ walk.  
> Since there is a $y, z$ walk, there is a $y, z$ path.  
> Since $y, z$ are arbitrary and a $y, z$ path exists, $G$ is connected.  

We prove a graph is connected by showing that there is a path between one particular vertex and every other vertex, possibly by constructing the path. We prove a graph by constructing a set $X \subset V(G), X \ne \emptyset$ that induces an empty cut.

For example, the $n$-cube is connected because for any $u, v$, a $u, v$ path exists where we flip the bits of $u$ that differ from $v$ one by one to match $v$. For example, a path between $0000000$ and $1001100$ would be $0000000, 1000000, 1001000, 1001100$.

# 25/6/14

A subgraph of a graph $G$ is a graph $H$ such that $V(H) \subseteq V(G)$ and $E(H) = \set{\set{u, v} \in E(G) \middle| u, v \in V(G)}$. In other words, a graph with a subset of the vertices and the same edges between these vertices as $G$.

A **component** of a graph $G$ is a maximally connected non-empty subgraph of $G$. In other words, each island of connected vertices in a graph is a component. A component must be the largest possible network of vertices that are all connected.

Clearly, a connected graph must have exactly 1 component (unless it is empty, which has 0 components). Therefore, a disconnected graph has 2 or more components.

If $G$ is a graph and $X \subseteq V(G)$, then the **cut induced by $X$** is the set of all edges in $G$ with exactly one end in $X$ - $\set{\set{u, v} \in E(G) \middle| u \in X \wedge v \notin X}$. It is basically the set of all edges that bridge the vertices in $X$ with everything else it is connected to.

For a connected graph, if $X \subset V(G), X \ne \emptyset$, then the cut induced by $X$ is non-empty. This is because $X$ doesn't contain all the vertices, and it must be connected to the other vertices in some way.

There always exists a set $X \subseteq V(G), X \ne \emptyset$ that induces an empty cut. For example, the components of a graph always induce empty cuts, and so does the entire graph itself.

Therefore, a graph is not connected if and only if there exists $X \subset V(G), X \ne \emptyset$ such that $X$ induces an empty cut.

Proof:

> Assume $G$ is a disconnected graph. Then $G$ contains two or more components. Let $H$ be one of these components.  
> Since $H$ is a component, $V(H) \ne \emptyset$ and $V(H) \subset V(G)$ (since there is another component in $G$).  
> Suppose the cut induced by $V(H)$ is non-empty. Then there is an edge $\set{u, v}$ such that $u \in V(H)$ but $v \notin V(H)$.  
> So $\set{v} \cup V(H)$ is still connected, which is a contradiction since $H$ is maximally connected. So $V(H)$ induces an empty cut.  
> Assume there exists $X \subset V(G), X \ne \emptyset$ such that $X$ induces an empty cut.  
> Suppose $G$ is connected. Then there exists $u, v \in V(G)$ such that $u \in X \wedge v \notin X$. Since $G$ is connected, there exists a $u, v$ path.  
> Let $u, v_1, \ldots, v_k, v$ be the shortest path from $u$ to $v$. Let $i$ be the smallest value such that $v_i \notin X$.  
> Then $v_{i - 1} \in X$ and $\set{v_{i - 1}, v_i}$ is in the cut, which is a contradiction since the cut is empty. So $G$ is not connected.  
> So $G$ is not connected if and only if there exists $X \subset V(G), X \ne \emptyset$ such that $X$ induces an empty cut.  

A cut is drawn as a line through the edges in the cut. If it is empty, the line is drawn separating the inducing set and the rest of the graph.

# 27/6/14

Eulerian Circuits
-----------------

The problem of Eulerian circuits was the first one ever published, by Euler. In fact, it was the first graph theory problem as well.

The problem is determining whether given a graph, there exists a closed walk that uses every edge exactly once. This was originally posed in the form of whether it is possible to cross bridges across cities and end up in the same place again, crossing each bridge exactly once.

An **Eulerian circuit** is a closed walk thaat uses every edge exactly once.

Let $G$ be a graph having an Eulerian circuit. Then either $G$ is connected, or there are vertices with degree 0.

Let $G$ be a connected graph. Then $G$ has an Eulerian circuit if and only if every vertex has even degree.

Proof:

> Assume $G$ has an Eulerian circuit. Then a closed walk adds 2 to the degree of a vertex each time it visits.  
> Since it uses all edges exactly once and $G$ is connected, each vertex is visited, so each vertex has even degree.  
> This is because every time we enter a vertex, we must be able to leave it. This means that each time we visit a vertex, we increase its degree by 2, so the degree must be even.  
> Assume every vertex in $G$ has even degree.  
> Suppose $\abs{E(G)} = n = 0$. Clearly, $G$ is still connected, so it has only one vertex, so it has an Eulerian circuit containing only the one vertex.  
> Assume for some $k \ge n$ that for all $\abs{E(G)} < k$, $G$ has an Eulerian circuit. Suppose $\abs{E(G)} = k$.  
> Construct a walk $W = v_1, v_2, \ldots$, where we keep randomly walking without repeating edges until we can no longer continue.  
> When we cannot continue, we must have returned to $v_1$, because anytime we enter a vertex, we are able to leave it due to the degree being even. So $W = v_1, \ldots, v_{k - 1}, v_1$.  ;wip
> If $W$ includes all edges, then it is an Eulerian circuit. If it does not, then remove the edges in $W$ from $G$ to get $G'$.  
> Clearly, every vertex in $G'$ also has even degree, since every vertex in the walk has an even degree.  
> Let $C_1, \ldots, C_j$ be the components of $G'$. Let $1 \le i \le j$. Clearly, every $C_i$ is connected and by the inductive hypothesis, has an Eulerian circuit.  
> Clearly, $W$ must have a vertex $v_{a_i}$ that is also in $C_i$, because otherwise $G$ would have been disconnected.  
> Let $E_i$ be the Eulerian circuit in $C_i$ that starts at $v_{a_i}$.  
> Then $W' = v_1, \ldots, v_{a_1 - 1}, E_1, v_{a_1 + 1}, \ldots, v_{a_2 - 1}, E_2, v_{a_2 + 1}, \ldots, v_{k - 1}, v_1$ is an Eulerian circuit.  

To find an Eulerian circuit, we use a greedy algorithm where we keep walking the graph randomly, until we can no longer walk. Because all the degrees of the vertices are even, we can only get stuck at the original node we started at. Now we have a walk that does not necessarily cover all the edges, so we modify our walk to have detours until it covers all the edges.

# 2/6/14

Bridges
-------

An edge $e$ in a graph $G$ is a **bridge/cut-edge/isthmus** in $G$ if and only if removing $e$ from $G$ would increase the number of components in $G$. In other words, bridges are the only edge connecting two islands together.

A bridge is basically a weak point in a graph - if we cut it, two parts of the graph become separated.

Removing an edge increases the number of components by at most 1.

If $e = \set{u, v}$ is a bridge in connected graph $G$, then $G$ with $e$ removed has 2 components, and $u$ and $v$ are in different components.

Proof:

> Let $e$ be a bridge. Let $G'$ be $G$ with $e$ removed. Clearly, $G'$ has at least 2 components since $G$ contains 1.  
> Let $H$ be the component of $G'$ containing $u$. Since $H$ is a component, the cut induced by $V(H)$ is empty.  
> Suppose $v \in V(H)$. Then the cut induced by $V(H)$ is also empty in $G$, since $e$ does not cross the cut.  
> This is a contradiction, since then $G$ has more than one component, so $v$ is in a different component from $u$.  
> Suppose there is a third component $J$ in $G'$. Then the cut induced by $V(J)$ is empty in $G$ and $G'$, since removing/adding $e$ does not affect the cut.  
> This is a contradiction since then $G$ would not be connected, so there are only two components.  

An edge $e = \set{u, v}$ is a bridge in $G$ if and only if $e$ is not in any cycle of $G$:

> Assume $e = \set{u, v}$ is a bridge in $G$. Suppose $e$ is in a cycle in $G$.  
> Then if we remove $e$ from the cycle, $u$ and $v$ are still in the same component, because we can go the long way around the cycle.  
> So by the above theorem, since they are in the same component, $e$ is not a bridge, a contradiction. So $e$ is not in any cycle of $G$.  
> Assume $e$ is not in any cycle of $G$. Suppose $e$ is not a bridge.  
> Let $H$ be the component of $G$ containing $e$. Then $H$ with $e$ removed is still a single component, so it is connected.  
> So there is a $u, v$ path $v_1, \ldots, v_n$ in $H$ with $e$ removed that is also in $H$, so $v_1, \ldots, v_n, v_1$ is a cycle, since $u$ and $v$ are connected by an edge in $H$.  
> So $e$ is in a cycle in $G$, a contradiction, so $e$ is a bridge.  

### Trees

A **tree** is a connected graph with no cycles. A **forest** is a graph with no cycles, and can possibly be disconnected. Each component of a forest is a tree.

Every edge in a tree is a bridge, because there are no cycles in a tree. So a tree is **minimally connected**, since if we removed any edge, it would no longer be connected.

A **leaf** in a tree is a vertex with degree 1. All trees with 2 or more vertices has 2 or more leaves.

Proof:

> Let $v_1, \ldots, v_n$ be the longest path in tree $T$.  
> Clearly, $v_1$ has no neighbors other than $v_2$ since if it had any neighbor outside the path, the path would not be the longest, and if it had a neighbor inside the path, there would be a cycle.  
> Clearly, $v_n$ has no neighbors other than $v_{n - 1}$ since if it had any neighbor outside the path, the path would not be the longest, and if it had a neighbor inside the path, there would be a cycle.  
> So $v_1$ and $v_n$ are leaves, and there are at least 2 leaves in $T$.  