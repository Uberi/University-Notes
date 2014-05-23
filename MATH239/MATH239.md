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
\newcommand{\formlp}{\operatorname{Form}(\mathcal{L}_P)}
$$

# 5/5/14

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

In general, $[n]$ has $\frac{n!}{k!(n - k)!}$ combinations of size $k$. This can be represented by $n \choose k$. If $n < k$, we define $n \choose k = 0$.

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

We can also prove it algebraically:

> If $f(x)$ is a power series, then let $[x^n]f(x)$ represent the coefficient of $x^n$ in $f(x)$.  
> So $[x^k](1 + x)^n = {n \choose k}$.  
> Clearly, $[x^k](1 + x)^n = [x^k](1 + x)(1 + x)^{n - 1} = [x^k](1 + x)^{n - 1} + [x^k]x(1 + x)^{n - 1}$.  
> Clearly, $[x^k](1 + x)^{n - 1} = {n - 1 \choose k}$.  
> Clearly, $[x^k]x(1 + x)^{n - 1} = [x^{k - 1}](1 + x)^{n - 1} = {n - 1 \choose k - 1}$, since the $x$ factor increases all the powers of $x$ in the power series by 1.  
> So $[x^k](1 + x)^n = [x^k](1 + x)^{n - 1} + [x^k]x(1 + x)^{n - 1} = {n \choose k} = {n - 1 \choose k} + {n - 1 \choose k - 1}$

From the above identity we know that ${n + k \choose n} = {n + k - 1 \choose n} + {n + k - 1 \choose n - 1}$, since we substituted $n + k$ for $n$ and $n$ for $k$.

;wip: organize into headings

If we expand the first term of the right side using the same identity, we get ${n + k \choose n} = {n + k - 2 \choose n} + {n + k - 2 \choose n - 1} + {n + k - 1 \choose n - 1}$.

If we keep expanding the first term on the right side, we find that we get ${n + k - (k + 1) \choose n} + {n + k - (k + 1) \choose n - 1} + \ldots + {n + k - 1 \choose n - 1}$. Clearly, $n + k - (k + 1) \choose n = 0$.

So by induction, we get $\sum_{i = 0}^k {n + i - 1 \choose n - 1} = {n + k \choose n}$.

Now we want to prove this combinatorially:

> Let $S$ be the set of all $n$-subsets of $[n - k]$. Then $\abs{S} = {n + k \choose n}$.  
> Let $S_i$ be the set of all $n$-subsets of $[n + k]$ whose largest element is $n + i$, where $0 \le i \le k$.  
> Clearly, the largest element of each $n$-subset is between $n$ and $n + k$ inclusive.  
> Clearly, $S = S_0 \cup \ldots \cup S_k$, and this is a disjoint set, so $\abs{S} = \abs{S_0} + \ldots + \abs{S_k}$.  
> Clearly, each set in $S_i$ must contain $n + i$ as the largest element, and all the other elements must be in $[n + i - 1]$ (since they must be less than the largest element).  
> So there are $n + i - 1$ elements to choose from, out of $n - 1$ spots (one spot of $n$ was taken by the largest element).
> So there are $n + i - 1 \choose n - 1$ elements in $S_i$.  

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

For example, how many binary strings of length $n$ have no 3 consecutive 1's?

> Let $S$ be the set of all binary strins with no 3 consecutive 1's.  
> Let $w(\sigma)$ be the length of $\sigma$.  
> ;wip: $\Phi_S(x) = \frac{1 + x + x^2}{1 - x - x^2 - x^3}$.
> Therefore, there are $[x^n]\frac{1 + x + x^2}{1 - x - x^2 - x^3}$ of these binary strings (the $n$th term's coefficient is the number of binary strings in $S$ of length $n$).  

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

> Let $B(x) = b_0 + b_1x + \ldots$ be a power series such that $xB(x) = 1$.  
> Then $x(b_0 + b_1x + \ldots) = b_0x + b_1x^2 + \ldots = 1$.  
> This is a contradiction because the left side has no constant term, while the right side does.  

If we generalize this, any power series that does not have a constant term (any power series that has $x$ as a factor) cannot be inverted.

Any power series $A(x)$ has an inverse if and only if $[x^0]A(x) \ne 0$

Compositions
------------

Let $G(x) = \frac 1 {1 - x} = 1 + x + x^2 + \ldots$. Then $G(3x^2) = \frac 1 {1 - 3x^2} = 1 + 3x^2 + 9x^4 + 27x^6$ and $[x^n]G(x) = \begin{cases} 3^{\frac n 2} &\text{if } n \text{ is even} \\ 0 &\text{if } n \text{ is odd}$.

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

To see why, we can expand it out: $D(x) = 1 + (1 + x^2) + (1 + x^2)^2 + \ldots$. Note that ever term has a 1 term in it when expanded. Therefore, the constant term goes toward infinity.

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
> Note that instead of $\mb{N}$ we could also use $\set{1, \ldots, n}$, but we still use $\mb{N}$ to somplify our calculations because the generating series can be written in closed form.  
> Let $w(\sigma) = \sigma$ be a weighting function over $\mb{N}$.  
> Then $\Phi_{\mb{N}}(x) = x + x^2 + x^3 + \ldots = \frac x {1 - x}$.  
> Let $w(a_1, \ldots, a_k) = a_1 + \ldots + a_k$ be a weighting function over $\mb{N}^k$.  
> Then $\Phi_{\mb{N}^k}(x) = \frac x {1 - x} \cdots \frac x {1 - x} = \frac {x^k} {(1 - x)^k}$.  
> Then the number of values of $(a_1, \ldots, a_k)$ such that $w(a_1, \ldots, a_k) = n$ is $[x^n]\frac {x^k} {(1 - x)^k}$.  
> This is an acceptable answer, but we can also get a simpler solution.  
> Clearly, $[x^n]\frac {x^k} {(1 - x)^k} = [x^{n - k}]\frac 1 {(1 - x)^k} = [x^{n - k}]\sum_{i = 0}^\infty {i + k - 1 \choose k - 1}x^i = {n - k + k - 1 \choose k - 1} = {n - 1 \choose k - 1}$.  