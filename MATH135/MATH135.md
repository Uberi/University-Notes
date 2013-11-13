MATH 135
========

    Mathematical proofs.
    Section 004

Instructor:

    Name: Ross Willard 
    Office: MC5058
    Email: rdwillar@uwaterloo.ca, ross.willard@uwaterloo.ca
    Office Hours: Tuesdays 9:00AM-10:00AM , Fridays 1:00PM-2:00PM, in MC 5058
    Tutorials: Tuesdays 4:30PM-7:20PM (Drop-in to Biology 1 Room 271)

$$
\newcommand{\set}[1]{\left\{ #1 \right\}}
\newcommand{\abs}[1]{\left\lvert #1 \right\rvert}
\newcommand{\floor}[1]{\left\lfloor #1 \right\rfloor}
\newcommand{\mb}[1]{\mathbb{#1}}
\newcommand{\rem}{\operatorname{rem}}
$$

# 9/9/13

Show $\sqrt{x}(x-\sqrt{x}) = x(1-\sqrt{x})$:

$$
\begin{align}
\sqrt{x}(\sqrt{x}\sqrt{x}-\sqrt{x}) &= \sqrt{x}\sqrt{x}(1-\sqrt{x}) \\
\sqrt{x}\sqrt{x}(\sqrt{x}-1) &= \sqrt{x}\sqrt{x}(1-\sqrt{x})
\end{align}
$$

This proof is invalid.

Proofs:

* Avoid starting with thing trying to be proved (assuming the thing is true)
* Use english sentences to give details.

Prove that $x^2 \ge 2x \iff x \le 0 \wedge x \ge 2$:

> Let x represent a real number. ;start by declaring assumptions  
> Assume $x^2 \ge 2x$.  
> Then $x^2-2x \ge 0$.  
> Then $x(x-2) \ge 0$.  
> This implies that either $x \ge 0$ and $x \ge 2$, or that $x \le 0$ and $x \le 2$.  
> If $x \ge 0$ and $x \ge 2$, then $x \ge 2$.  
> If $x \le 0$ and $x \le 2$, then $x \le 0$.  
> In conclusion, $x \le 0$ and $x \ge 2$ if $x^2 \ge 2x$.  

Check the converse:

> Assume $x \le 0$, then $x \cdot x \ge 0$ and $2x \le 0$.  
> Therefore, $x^2 \ge 2x$.  
> Assume $x \ge 2$, then $x \cdot x >= 2x$.  
> Therefore, $x^2 \ge 2x$.  
> In conclusion, $x \le 0$ and $x \ge 2$ if and only if $x^2 \ge 2x$.  

Show $x+\frac{1}{x} >= 2$ for all $x > 0$:

> Let $x$ represent a positive real number.  
> Certainly, $(x-1)^2 \ge 0$ is true.  
> So $x^2-2x+1 \ge 0$.  
> Thus $x^2-2x+1 + 2x \ge 0 + 2x$, and is equivalent to $x^2+1 \ge 2x$.  
> Since $x > 0$, $x^2+1 \ge 2x$ is equivalent to$x + \frac{1}{x} \ge 2$.  
> Hence $x + \frac{1}{x} \ge 2$, which was to be proved.  

In handwriting, $\implies$ (double right arrow) is considered an acceptable replacement for "Therefore", "Hence", "Then", "Thus".

A **proposition** is a true statement, proved with a valid argument.

A **theorem** is an important or significant proposition.

A **lemma** is a helper proposition used in the proof of a theorem.

A **corollary** is a proposition that follows almost immediately from a theorem.

An **axiom** is a statement is assumed to be true, no proof needed. Propositions are derived from these.

Summary
-------

Written solutions are primarily done in English. Proofs start with relevant assumptions or known true statements, and ends with the thing to be proved.

# 11/9/13

Show $(x+y)^2-(x-y)^2 = 4xy$:

Let $x$ and $y$ represent real numbers.  
Clearly, $(x+y)^2-(x-y)^2 = x^2+2xy+y^2-(x^2-2xy+y^2)$.  
Clearly, $x^2+2xy+y^2-(x^2-2xy+y^2) = x^2+2xy+y^2-x^2+2xy-y^2$.  
Clearly, $x^2+2xy+y^2-x^2+2xy-y^2 = 2xy+2xy$.  
Thus, $(x+y)^2-(x-y)^2 = 4xy$ by transitivity of equality.

In the interests of style, multiple equalities can be written thus:

Let $x$ and $y$ represent real numbers.  
Clearly, $(x+y)^2-(x-y)^2=4xy = x^2+2xy+y^2-(x^2-2xy+y^2)$,  
     $\Rightarrow x^2+2xy+y^2-(x^2-2xy+y^2) = x^2+2xy+y^2-x^2+2xy-y^2$,  
     $\Rightarrow x^2+2xy+y^2-x^2+2xy-y^2 = 2xy+2xy$.  
Thus, $(x+y)^2-(x-y)^2 = 4xy$ by transitivity of equality.

(here, `,` means "which in turn")

Only statements can imply other statements.

Statements are sentences that can be true or false. They are complete sentences with subject(s) and verb(s).

* $2 + 2 = 4$ (true statement: subject verb subject verb subject)
* The equation $x^2-1 = 0$ has 2 distinct real roots (true statement: subject verb subject)
* $x > 0$ (context required: open sentence)

Compound statements are composed of several component statements:

    0 < x < 1
    Which is in fact:
    0 < x and x < 1
    
    abs(x) = 2
    Which is in fact:
    0x = 2 or x = -2

If A and B are statements, then $A \wedge B$ (`A` wedge `B`) means "`A` and `B`".

If A and B are statements, then $A \vee B$ (`A` vee `B`) means "`A` and `B`".

If A and B are statements, then $A \implies B$ (`A` implies `B`) means "`B` is true when `A` is true". The general form is `hypothesis` implies `conclusion`. When proving with this, it is only necessary to prove that it is impossible for the hypothesis to be true but the conclusion to be false.

For example, one can simply prove the hypothesis is always false, or the conclusion is always true.

These statements commonly take the following forms:

* $A$ implies $B$.
* If $A$, then $B$.
* As $A$, therefore $B$.
* As $A$, hence $B$.

> If 1 = 2, then 1 = 0.

This implication is **true**, since the hypothesis is false. Implications are always true as long as the hypothesis is not true while the conclusion is false.

If A and B are statements, then $A \iff B$ (`A` if and only if `B`) means "`A` is true only when `B` is true".

`T` represents true, `F` represents false.

If `A` is a statement, then $\neg A$ (not `A`) means "not `A`".

### Laws of Logic

* $A \wedge (B \vee C) \equiv (A \wedge B) \vee (A \wedge C)$, $A \vee (B \wedge C) \equiv (A \vee B) \wedge (A \vee C)$ - distributivity law
* $A \wedge B \equiv B \wedge A$, $A \vee B \equiv B \vee A$ - commutativity law
* $(A \wedge B) \wedge C \equiv A \wedge (B \wedge C)$, $(A \vee B) \vee C \equiv A \vee (B \vee C)$ - associativity law

### Truth tables

Truth tables show the truth value of a compound statement by determining the values of the component statements.

Two statements $A$ and $B$ are logically equivalent if and only if they have the same truth values in the truth table. We write $A \equiv B$ to represent this.

Are $A \implies B$ and $(\neg A) \vee B$ logically equivalent?

| $A$ | $B$ | $A \implies B$ | $(\neg A) \vee B$ |
|-----|-----|----------------|-------------------|
|  T  |  T  |       T        |         T         |
|  T  |  F  |       F        |         F         |
|  F  |  T  |       T        |         T         |
|  F  |  F  |       T        |         T         |

Since both have the same truth table values, they are logically equivalent.

# 13/9/13

If an integer $m$ divides integer $n$ without any remainder, we write $m \mid n$. In other words, $\exists k \in \mb{Z}, n = km$.

* $3 \mid 6$ - True statement - $6 = 2 \cdot 3$
* $4 \mid 7$ - False statement - $7 = \frac{7}{4} \cdot 4$
* $0 \mid 0$ - True statement - $0 = 0 \cdot 0$

$1|2$ is a statement, while $\frac{1}{2}$ is an operation.

Sets
----

A set is a collection of objects. The objects are called **elements** or **members**.

Elements can be anything: numbers, letters, functions, cats, or even themselves sets.

Notation: $A = \set{2, 4, 6, 8}$, $B = \set{1, 2, \ldots, 98, 99}$

Conventionally, we use capital letters to name identifiers that are sets.

Common sets:

* $\mb{N}$ - natural numbers - $\set{1, 2, 3, \ldots}$
* $\mb{Z}$ - integers - $\set{\ldots, -2, -1, 0, 1, 2, \ldots}$
* $\mb{R}$ - real numbers
* $\mb{Q}$ - rational numbers - 
* $\overline{\mb{Q}}$ - irrational numbers
* $\mb{C}$ - complex numbers
* $\emptyset$ - empty set

An object belongs to a set if it is an element of it. $a \in B$ means "a is an element of B". All sets contain the empty set.

A statement is a sentence that is either true or false. As a result, the following are not statements:

* $6 \mid x$
* $x + 1 > 0$
* $x \in \set{2, 4, 6, 8}$

Are these true or false? It is not possible to know, since the value of $x$ is unknown.

An **open sentence** appears to be a statement, but contains unknowns (variables). In order to be a statement, the sentence must be viewed in a context where all these unknowns are given a value in their domain, and is either true or false when this is done.

A variable is a symbol that always represents an element or elements from a designated set known as the **domain**.

Set builder notation is used when there are too many elements in a set to list all of them.

One way of writing it is as follows (type I):

$$
\set{x \in \mb{R} \middle | 0 \le x < 2} \\
\set{x \in \mb{N} : 6 \mid n} = \set{6, 12, 18, 24} \\
\set{\text{var} \in \text{domain (} \middle | \text{ or } : \text{) open_sentence}}
$$

"Set of $\text{var}$ in $\text{domain}$ such that $\text{open sentence}$"

There is another set builder notation (type II):

$$\set{3n+1 \middle | n \in \mb{N}} = \set{4, 7, 10, 13, \ldots}$$

$$\set{ \frac{x}{x^2+1} \middle | n \in \mb{N}} = [-0.5, 0.5]$$

$$\set{ \text{function(var)} \text{ (} \middle | \text{ or } : \text{) } \text{var} \in \text{domain}}$$

"Set of values of $\text{function(var)}$ as $\text{var}$ ranges over $\text{domain}$"

All other forms of set builder notation are incorrect.

$\set{n \in \mb{N} \middle | n \in \mb{N}}$ - valid type I set builder notation; "set of those natural numbers that belong to the set of real numbers"

$\set{ x \middle | x \in \mb{R}}$ - valid type II set builder notation; "set of all x such that x is a real number"

# 16/9/13

Basic Set Operations
--------------------

The **union** of $A$ and $B$ is $A \cup B$. This is the set of all elements belonging to either $A$ or $B$. This can be written as $x \in A \cup B \iff x \in A \vee x \in B$, and is sometimes defined as $A \cup B = \set{x \mid x \in A \vee x \in B}$.

The **intersection** of $A$ and $B$ is $A \cap B$. This is the set of all elements belonging to both A and B. This can be written as $x \in A \cap B \iff x \in A \wedge x \in B$, and is sometimes defined as $A \cap B = \set{x \in A \middle| x \in B}$.

The **difference** of $A$ and $B$ is $A - B$ or $A \setminus B$. This is the set of all elements belonging to $A$, but not to $B$. This can be written as $x \in A - B \iff x \in A \text{ and } x \notin B$, and is sometimes defined as $A - B = \set{x \in A \middle| x \notin B}$.

The **complement** of a set $A$ is $\overline{A}$. This is the set of all elements in the **universe of discourse** that are not in $A$.

The **cardinality** of a set $A$ is $\abs{A}$. This is the number of elements it contains.

We can construct a truth table of these operations:

| $x \in A$ | $x \in B$ | $x \in A \cup B$ | $x \in A \cap B$ | $x \in A - B$ |
|:----------|:----------|:-----------------|:-----------------|:--------------|
| T         | T         | T                | T                | F             |
| T         | F         | T                | F                | T             |
| F         | T         | T                | F                | F             |
| F         | F         | F                | F                | F             |

Two sets are **equal** if and only if they have exactly the same elements ($\set{1, 2, 3} = \set{3, 2, 1}$: "A is equal to B").

Inclusion: a set is a **subset** of another if every element of the first set is also contained in the second set ($\set{1, 2} \subseteq \set{3, 2, 1}$: "A is a subset of B"). In other words, $\forall x \in A, x \in B$.

If a set is a subset of another, the second set is a **superset** of the first.

A set is a **proper subset** of another if it is a subset and it is not equal ($\set{1, 2} \subset \set{3, 2, 1}$: "A is a proper subset of B").

The number of subsets of any set is $2^n$, where $n$ is the number of elements in the set.

List all the subsets of $\set{a, b, c}$:

> We create a list of tuples of 0 and 1 of length 3, each one unique: $(0, 0, 0), (0, 0, 1), (0, 1, 0), (0, 1, 1), (1, 0, 0), (1, 0, 1), (1, 1, 0), (1, 1, 1)$. This can be done via binary counting.  
> Each position in the tuple corresponds to one element of the set. For example, position 1 corresponds to $a$, position 2 corresponds to $b$, and position 3 corresponds to $c$.  
> For each tuple, we construct a set that contains only those elements that correspond to positions that have the value 1 in the tuple.
> These sets are $\emptyset, \set{c}, \set{b}, \set{b, c}, \set{a}, \set{a, c}, \set{a, b}, \set{a, b, c}$.  
> These are the subsets of the set $\set{1, 2, 3}$.  

Proving a statement of the form $A \subseteq B$:

* `Let x be`/`assume x is` `a` `random`/`arbitrary`/`representative` element of A
* Argue that x must be an element of B.
* This proves $\forall x, x \in A \implies x \in B$, which proves $A \subseteq B$.

Prove $\set{n \in \mb{N} : 4 \mid n} \subseteq \set{n \in \mb{N} : 2 \mid n}$:

>Let $A$ represent the first set.  
>Let $B$ represent the second set.  
>Let $x$ be an arbitrary element of A.  
>Let $y$ be an arbitrary element of B.  
>Given that for A, $x \in \mb{N}$ and $4 \mid x$, we know that there must exist an integer $k$ such that $x = 4k$.  
>Given that for B, $y \in \mb{N}$ and $2 \mid y$, we know that there must exist an integer $k$ such that $y = 2k$.  
>Clearly, $x = 2(2k)$.  
>So there must exist an integer $k'$ such that $x = 2k'$; namely, $k' = 2k$.  
>Hence $x \in \mb{N}$ and $2 \mid x$.  
>Therefore, $x \in B$.  
>Since $x$ is arbitrary, $\forall x, x \in A \implies x \in B$.  

Proving a statement of the form $A = B$ has two general techniques:

Technique 1: prove $A \subseteq B$, and then prove $B \subseteq A$, using the above strategy: "prove that if $A$ and $B$ are sets, $A - B = A = (A \cap B)$".

>Let $x$ be an arbitrary element of $A$.  
>So $x \in A$ and $x \notin B$.  
>If $x \in A \cap B$, then $x \in A$ and $x \in B$.  
>However, we know that $x \notin B$.  
>Therefore, $x \notin A \cap B$.  
>Since $x \in A$ and $x \notin A \cap B$, $x \in A - (A \cap B)$.  
>Since $x \in B ~ \forall x$, $A - B \subseteq A - (A \cap B)$.  
>Now we prove the reverse.  
>Let $y$ be an arbitrary element of $A - (A \cap B)$.
>So $x \in A$ and $x \notin A \cap B$.  
>So (by DeMorgan's Law) $x \notin A$, or $x \notin B$.  
>However, $x \in A$, so $x \notin B$.  
>Since x is representative, $\forall x, x \in (A \cap B)$, and $A - (A \cap B) \subseteq A - B$.  
>Since both sides are subsets of or equal to each other, they are equal.  

# 18/9/13

Technique 2: Prove that $\forall x, x \in A \iff x \in B$:

> Let $x$ be an arbitrary object.  
> If $x \in A$, then $x \in B$.  
> If $x \notin A$, then $x \notin B$.  
> Therefore, $x \in A \iff x \in B$.  

Prove that for any sets $R$, $S$, $T$, $R \cap (S \cup T) = (R \cap S) \cup (R \cap T)$.

> Let $x$ be an arbitrary object.  
> We know that $x \in R \cap (S \cup T) \iff x \in R \wedge (x \in S \vee x \in T)$.  
> Recall that $P \wedge (Q \vee R \equiv (P \wedge Q) \vee (P \wedge R)$.  
>Clearly, $x \in R \wedge (x \in S \vee x \in T) \iff (x \in R \wedge x \in S) \vee (x \in R \wedge x \in T)$.  

This technique is only usable in certain situations. At other times, technique 1 is a better choice.

$A \equiv B$ is not equality, it works on two logical propositions $A$ and $B$.

Quantifiers
-----------

Two common phrases in math:

* Universal: `open sentence` for all `something`; for every `something`, `open sentence`.
* Existential: `open sentence` for some [something]; there exists a [something] such that statement.

This can be written using quantifier symbols:

* $\forall x \in \mb{R}. x^2 \ge 0$
  * For every element $x$ in the set $\mb{R}$, it is true that $x^2 \ge 0$.
  * In short, for every real number $x$, $x^2 \ge 0$.
* $\exists x \in \mb{R}, x^2 - 3x + 2 = 0$
  * There exists an element $x$ in the set $\mb{R}$ such that $x^2 - 3x + 2 = 0$.
  * In short, there exists a real number $x$ such that $x^2 - 3x + 2 = 0$.

Quantifiers are not part of the hypothesis or conclusion - they are separate: $\forall x, P(x) \implies Q(x)$ is the same as writing $\forall x, (P(x) \implies Q(x))$. The hypothesis would be $P(x)$ and the conclusion would be $Q(x)$.

A **quantified statement** takes the form of $(\forall \text{ or } \exists) x \in S, \text{open sentence}$.

Negating a statement:

* $A$ - $f(x)$ has a real root.
* $\neg A$ - $f(x)$ does not have a real root.
* $B$ - every integer is even.
* $\neg B$ - some integer is not even.

Formally:

$A: \exists x \in \mb{R}, f(x) = 0$

$\neg A: \forall x \in \mb{R}, f(x) \ne 0$

$B: \forall x \in \mb{Z}, 2 \mid x$

$\neg B: \exists x \in \mb{Z}, 2 \nmid x$

Negate the statement `every even integer is a power of 2`.

>$A: \forall x \in \mb{Z}, 2 \mid x \implies x \text{ is a power of } 2$.  
>$\neg A: \exists x \in \mb{Z}, \neg (2 \mid x \implies x \text{ is a power of } 2)$.  
>Recall that $\neg (P \implies Q) = P \wedge \neg Q$.  
>So the above is equivalent to: $\neg A: \exists x \in \mb{Z}, 2 \mid x \implies x \text{ is not a power of } 2$.  
>There exists an integer which is even but is not a power of 2.  

General rules for negation:

* $\neg (\forall x \in S, P) \equiv \exists x \in S, \neg P$
* $\neg (\exists x \in S, P) \equiv \forall x \in S, \neg P$
* $\neg (P \wedge Q) \equiv (\neg P) \vee (\neg Q)$ - DeMorgan's law
* $\neg (P \vee Q) \equiv (\neg P) \wedge (\neg Q)$ - DeMorgan's law
* $\neg (P \implies Q) \equiv P \wedge (\neg Q)$
* $\neg (P \iff Q) \equiv P \iff (\neg Q)$

### Proving quantified statements

To prove $\forall x \in S, P$, use the **select method**:

>Let $x$ be an arbitrary/representative/random element of $S$.  
>Prove that $x$ makes P true.  

Prove $A \cap B \subseteq A$:

>We must prove that $\forall x \in A \cap B, x \in A$.  
>Let $x$ be a representative element of $A \cap B$.  
>So $x \in A$ and $x \in B$.  
>Since $P$ holds for any representative element $x$, $\forall x \in A \cap B, x \in A$.  
>Therefore, $A \cap B \subseteq A$.  

To prove $\exists x \in S, P$, use the **construct method**:

> Construct/define/exhibit a specific element $x$ of $S$.  
> Show that $P$ is true for this $x$.  
> Since $x$ satisfies $x \in S$, this proves $\exists x \in S, P$.  

Prove that $8 \mid (2013^2 - 1)$:

> In other words, we must prove $\exists k \in \mb{Z}, 8k = 2013^2 - 1$.  
> Note: $2013^2 - 1 = (2013 + 1)(2013 - 1) = 8 \cdot 1007 \cdot 503$.  
> Let $k$ represent $1007 \cdot 503$.  
> So $8k = 4(503) \cdot 2(1007)$, or $(2013 - 1)(2013 + 1)$.  
> Clearly, this is equivalent to $2013^2 - 1$.  
> Then there exists an integer multiple of 8 equal to $2013^2 - 1$.  
> Therefore, $8 \mid (2013^2 - 1)$.  

;wip: read chapter 14, 15, 10, 11 by Sept. 23

Prove or disprove that every real number has a real square root:

> Let $A$ represent the statement.
> In other words, $A$ is $\forall x \in \mb{R}, \exists y \in \mb{R}, y^2 = x$ (for every real number $x$, there exists a real number $y$ such that $y^2 = x$).  
> The negation of the statement $\neg A$ is $\exists x \in \mb{R}, \forall y \in \mb{R}, y^2 \ne x$.  
> By proving the negation true, we can prove the statement false.  
> Note: construct method  
> Construct $x = -1$.  
>   Note: select method  
>   Let $y$ be a random element of $\mb{R}$.  
>   Then $y^2 \ge 0$.  
>   So $y^2 \ne -1$.  
>   As $y$ is an arbitrary real number, this proves $\forall y \in \mb{R}, y^2 \ne x$.  
> Since $x$ satisfies $x \in \mb{R}$, this proves $\exists x \in \mb{R}, \forall y \in \mb{R}, y^2 \ne x$.  
> Therefore, $\neg A$ is true, and $A$ is false.  

In order to prove something false, we generally need to prove its negation true.

Prove or disprove that for every real number, there is some integer greater than it:

> Let $A$ represent the statement.  
> In other words, $A$ is $\exists n \in \mb{Z}, \forall x \in \mb{R}, n > x$.  
> The negation of the statement $\neg A$ is $\forall n \in \mb{Z}, \exists x \in \mb{R}, n \le x$.  
> By proving the negation true, we can prove the statement false.  
> Note: select method
> Let $n$ be a random element of $Z$.  
>   Note: construct method
>   Let $x = n$.  
>   Certainly, $x \in \mb{R}$, and $n \le x$.  
>   Since $x$ satisfies $x \in \mb{R}$, this proves $\exists x \in \mb{R}, n \le x$.  
> As $n$ is a random element of $\mb{Z}$, this proves $\forall n \in \mb{Z}, \exists x \in \mb{R}, n \le x$.  

# 23/9/13

Implications
------------

An **implication** is a compound statement of the form $P \implies Q$ ($P$ implies $Q$). The **hypothesis** ($P$) implies the **conclusion** ($Q$)

Examples:

* If $n$ is odd, then $24 \mid n$. Implicitly, $\forall n \in \mb{Z}$.
* $x \in A \cup B \implies x \in A$. Implicitly, $\forall x \in A \cup B$

Quantifiers are separate from implications. For example, in $\forall x \in \mb{R}, x = y \implies x = x$, the hypothesis is $x = y$. This statement is equivalent to $\forall x \in \mb{R}, (x = y \implies x = x)$

The core technique for proving an implication is known as **direct proof**:

1. Assume the hypothesis.
2. From the hypothesis, deduce the conclusion.

The **converse** of an implication $P \implies Q$ is $Q \implies P$. This is very different from the original implication. When we prove a statement and its converse, we have proved that $P \iff Q$.

For an implication with a quantifier, the quantifier is preserved for its converse; the converse of $\forall x \in S, P(x) \implies Q(x)$ is $\forall x \in S, Q(x) \implies P(x)$.

The converse of "If Bob is a student at uWaterloo, then Bob is a student in Canada" is "If Bob is a student in Canada, Bob is a student at uWaterloo".

The **contrapositive** of an implication $P \implies Q$ is $\neg Q \implies \neg P$. This is logically equivalent to the original statement; in other words, $P \implies Q \equiv \neg Q \implies \neg P$. It is occasionally easier to prove the contrapositive rather than the original statement, usually when there are binary choices in the hypothesis and conclusion.

The **negation** of an implication $P \implies Q$ is $P \wedge \neg Q$. This is a statement that is true whenever the original statement is true, and false whenever the original statement is true. This can be proven using truth tables.

Prove that $\forall x \in \mb{Z}, 32 \nmid (a^2 + 3)(a^2 + 7) \implies 2 \mid a$:

> This is difficult to prove since "not divisible" has few useful properties.  
> We replace the statement with its contrapositive to simplify it.  
> The contrapositive is $\forall x \in \mb{Z}, 2 \nmid a \implies 32 \mid (a^2 + 3)(a^2 + 7)$.  
> Assume $2 \nmid a$.  
> Clearly, $a$ can be written as $2k + 1, k \in \mb{Z}$.  
> Clearly, $(a^2 + 3)(a^2 + 7)$ is equivalent to $(4k^2 + 4k + 4)(4k^2 + 4k + 8)$, or $16(k^2 + k + 1)(k^2 + k + 2)$.  
> CLearly, either $2 \mid k^2 + k + 1$ or $2 \mid k^2 + k + 2$.  
> So $\exists l \in \mb{Z}, (k^2 + k + 1)(k^2 + k + 2) = 2l$.  
> Clearly, $16(k^2 + k + 1)(k^2 + k + 2)$ is equivalent to $32l$.  
> Clearly, $32 \mid 32l$, so $32 \mid (a^2 + 3)(a^2 + 7)$.  
> Therefore, $\forall x \in \mb{Z}, 32 \nmid (a^2 + 3)(a^2 + 7) \implies 2 \mid a$.  

The **inverse** of an implication $P \implies Q$ is $\neg P \implies \neg Q$. Like the converse, this is also very different from the original implication.

Another technique for proving is **proof by contradiction**:

1. Assume the hypothesis is true.
2. Suppose the conclusion is false.
2. Derive a contradiction, such as $1 = 0$.
3. Since the implication cannot be false and result in a contradiction, it is true.

To prove $A \iff B$, we can prove $A \implies B$ and $B \implies A$.

Proof Technique: Induction
--------------------------

Full name is "Principle of Mathematical Induction".

Useful for proving statements of the form $\forall n \in \mb{N}, P(n)$, where $P(n)$ is a statement.

Also usable for integers greater than 5, -3, or any value. It can also be used for integers less than some value, by proving $P(k - 1)$ rather than $P(k + 1)$ in the inductive conclusion.

Prove $\forall n \ge 1, 1 + 3 + 5 + \cdots + (2n - 1) = n^2$:

1. Base case: verify P(1) is true.
2. Inductive hypothesis: assume that $P(k)$ is true for some fixed integet $k \ge 1$.
3. (Work towards conclusion)
4. Inductive conclusion: using the inductive assumption, prove that $P(k + 1)$.
5. End: therefore, P for all $n \ge 1$, by the principle of mathematical induction.

We can only assume **statements**.

> Base case: $P(1)$ is $1 = 1^2$, which is true.  
> Inductive hypothesis: assume that, for some fixed $k \ge 1$, $P(k)$ is true.  
> The next term is $(2k - 1) + 2$. Adding this to both sides yields $1 + 3 + 5 + \cdots + (2k - 1) + (2k + 1) = k^2 + (2k + 1)$.  
> Clearly, $k^2 + (2k + 1) = (k + 1)^2$.  
> So $1 + 3 + 5 + \cdots + (2k - 1) + (2k + 1) = (k + 1)^2$.  
> Inductive conclusion: Clearly, $P(k + 1)$ is also true.  
> Therefore, for all $n \ge 1, 1 + 3 + 5 + \cdots + (2n - 1) = n^2$.  

Prove that $\forall n \in \mb{N}$, the number of 2-element subsets of the set $\set{1, 2, \ldots, n}$ is $\frac{n(n - 1)}{2}$:

> This is true for $n = 1$: $\set{1}$ has no 2-element subsets, and is $\frac{1(1 - 1)}{2} = 0$.  
> Assume that for some fixed $k \ge 1$, $P(k)$ is true. That is, count of subsets of $\set{1, 2, \ldots, k}$ is $\frac{k(k - 1)}{2}$.  
> Note that $\set{1, 2, \ldots, k + 1}$ is equivalent to $\set{1, 2, \ldots, k} \cup \set{k + 1}$.  
> Note that the two element subsets of this can be put in two groups:  
> * those that do not contain $k + 1$, which are the 2-element subsets of $\set{1, 2, \ldots, k}$.  
> * those that do contain $k + 1$, which are of the form, $\set{a, k + 1}, 1 \le a \le k$.  
> By the inductive hypotheses, we know that the number of subsets belonging to the first group are $\frac{k(k - 1)}{2}$.  
> We know that the number of subsets belonging to the second group is simply $k$.  
> So the number of subsets of $\set{1, 2, \ldots, k + 1}$ is $\frac{k(k - 1)}{2} + k$.  
> Clearly, $\frac{k^2 + k}{2} = \frac{(k + 1)k}{2}$, or $\frac{(k + 1)((k + 1) - 1)}{2}$.  
> Therefore, the number of 2-element subsets of the set $\set{1, 2, \ldots, n}$ is $\frac{n(n - 1)}{2}$ for all $n \ge 1$.  

### Principle of Mathematical Induction

A meta-statement at the basis of proof by induction. It is itself a true statement; an axiom.

Let $P(n)$ is a statement that depends on $n$, $n \in \mb{N}$.

Let $b \in \mb{Z}$.

Let $k \in \mb{Z}, k \ge b$.

If $P(b)$ is true, and $P(k) \implies P(k + 1)$, then $P(n)$ is true.

# 25/9/13

Prove $\forall n \ge 3, n! > 2^{2n - 4}$ using induction:

> Base case: For $n = 1$, $3! > 2^{2(3) - 4}$, which is equivalent to $6 > 4$, which is true.  
> Inductive hypothesis: Assume that for some fixed integer $k \ge 3$, $k! > 2^{2k - 4}$.  
> For $k + 1$, we want to check if $(k + 1)! > 2^{2(k + 1) - 4}$.  
> Clearly, $(k + 1)! > 2^{2(k + 1) - 4}$ is equivalent to $k! (k + 1) > 2^{2k + 2 - 4}$.  
> Clearly, $k! (k + 1) > 2^{2k + 2 - 4}$ is equivalent to $k! (k + 1) > 2^{2k - 4} 4$.  
> Clearly, $k! (k + 1) > 2^{2k - 4} 4$ is equivalent to $\frac{k + 1}{4} k! > 2^{2k - 4}$.  
> Since $k + 1 \ge 4$, $\frac{k + 1}{4} \ge 1$, and $\frac{k + 1}{4} k! \ge k!$.  
> Since $\frac{k + 1}{4} k! \ge k!$, $\frac{k + 1}{4} k! > 2^{2k - 4}$.  
> Inductive conclusion: So $(k + 1)! > 2^{2(k + 1) - 4}$ is true if $k! > 2^{2k - 4}$.  
> Therefore, $\forall n \ge 3, n! > 2^{2n - 4}$, by the principle of mathematical induction.  

# 27/9/13

Strong Induction
----------------

The induction done to this point is known as **simple induction**. When this is not possible, there is also **strong induction**, which is basically the same thing, generalized to work with more base cases.

Strong induction is useful for proving statements of the form $\forall n \ge 1, P(x)$.

1. Base case: verify that $P(1) \ldots P(b)$ are true, for some $b \ge 1$.
2. Inductive Hypothesis: assume that $P(1) \ldots P(k)$ are true, for some $k \ge b$.
3. (Work towards conclusion)
4. Inductive conclusion: therefore, $P(x)$ is true for all $x \ge 1$, by the principle of strong induction.

;wip: principle of strong induction

Given that $f_n$ is the n-th number in the Fibonacci sequence ($\set{1, 1, 2, 3, 5, \ldots}$), prove $f_n \le \left( \frac{5}{3} \right)^{n - 1}$:

> Base case: For $n = 1$, $1 \le \left( \frac{5}{3} \right)^0$, or $1 \le 1$, which is true.  
> Base case: For $n = 2$, $1 \le \left( \frac{5}{3} \right)^1$, or $1 \le \frac{5}{3}$, which is true.  
> Inductive hypothesis: Assume that for some integer $k \ge 2$, $f_k \le \left( \frac{5}{3} \right)^{k - 1}$.  
> For $k + 1$, we want to check if $f_{k + 1} \le \left( \frac{5}{3} \right)^k$.  
> Clearly, $f_{k + 1} \le \left( \frac{5}{3} \right)^k$ is equivalent to $f_k + f_{k - 1} \le \frac{5}{3} \left( \frac{5}{3} \right)^{k - 1}$.  
> Clearly, $f_k + f_{k - 1} \le \left( \frac{5}{3} \right)^{k - 1}  + f_{k - 1}$.  
> ;wip

How many cases should be verified (i.e., what is the value of $b$?)? As a general rule, if the proof of $P(k + 1)$ requires that $k \ge x$, then $x$ is the smallest possible value for $b$.

Studying Divisibility
---------------------

Recall that if $n \in \mb{Z}$ and $m \in \mb{Z}$,

$m \mid n \iff \exists k \in \mb{Z}, n = km$

### Transitivity of divisibiilty (TD)

Proposition: for integers $a$, $b$, $c$, if $a \mid b$ and $b \mid c$, then $a \mid c$.

Proof:

> Let $a$, $b$, and $c$ be arbitrary integers.  
> Assume that $a \mid b$ and $b \mid c$.  
> This means $\exists r \in \mb{Z}, b = ra$ and $\exists s \in \mb{Z}, c = sb$.  
> Let $k = sr$, so $k \in \mb{Z}$.  
> Clearly, $c = sb = s(ra) = (sr)a = ka$.  
> So $\exists k \in \mb{Z}, c = ka$.  
> Since $a$, $b$, and $c$ are arbitrary, this is true for all integers.

;wip: read chapter 18

### Divisibility of integer combinations (DIC)

Proposition: for integers $a$, $b$, and $c$, if $a \mid b$ and $a \mid c$, then $a \mid (bx + cy), x \in \mb{Z}, y \in \mb{Z}$ (a divides every ILC of $b$ and $c$).

ILC: integer linear combination, any integer of the form $bx + cy, x \in \mb{Z}, y \in \mb{Z}$.

Proof:

> Let $a$, $b$, $c$ be arbitrary integers.  
> We are trying to prove that $\forall x \in \mb{Z}, \forall y \in \mb{Z}, a \mid (bx + cy)$
> This means $\exists r \in \mb{Z}, b = ra$ and $\exists s \in \mb{Z}, c = sb$.  
> Assume $a \mid b$ and $a \mid c$.  
> Let $x$ and $y$ be arbitrary integers.  
> Construct $k = rx + sy$.  
> Clearly, $bx + cy = (ra)x + (rs)y = a(rx + sy) = ka$.  
> So $a \mid (bx + cy)$.  
> Since $a$, $b$, $c$, $x$, and $y$ are arbitrary, the statement is true for all integers.  

Proposition: D plusminus C: for integers $a$, $b$, $c$, $a \mid (b + c)$ and $a \mid (b - c)$.

Proof:

> Let $a \in \mb{Z}, b \in \mb{Z}, c \in \mb{Z}$.  
> Assume $a \mid b$ and $a \mid c$.  
> Then $a \mid (bx + cy)$ for any $x \in \mb{Z}, y \in \mb{Z}$, by DIC.  
> In particular, $a \mid (b + c)$ or $a \mid (b - c)$.  

### Bounds by divisibility (BBD)

Proposition: for integers $a$ and $b$, if $a \mid b$ and $b \ne 0$, $\abs{a} \le \abs{b}$.

Proof:

> Let $a$ and $b$ be arbitrary integers.  
> Assume that $a \mid b$ and $b \ne 0$.  
> So $\exists k \in \mb{Z}, b = ka$.  
> Since, $b \ne 0$ and $a \ne 0$, $b \ne 0$.  
> So $\abs{k} \ge 1$.  
> Clearly, $\abs{a} \le \abs{a} \abs{k} = \abs{ak} = \abs{b}$.  
> So $a \le b$.  

### Division Algorithm

If $a$ and $b$ are integers and $b > 0$, then there exisst the unique integers $q$ and $r$ such that $a = qb + r, 0 \le r \le b$.

$q$ is the quotient, $r$ is the remainder.

# 30/9/13

GCD
---

Greatest common divisor.

Let $a \in \mb{Z}, b \in \mb{Z}$ such that $a$ and $b$ are not both 0.

Let $d \in \mb{Z}, d \ge 0$.

We can write $d = gcd(a, b)$, provided all of the following are true:

* $d \mid a \wedge d \mid b$ ($d$ is a common divisor)
* $\forall c \in \mb{Z}$, if $c \mid a \wedge c \mid b$, then $c \le d$ ($d$ is the greatest of all the common divisors).

Also, $0 = \gcd(a, b)$, rather than undefined. This is to smooth out certain operations. The GCD is always positive.

$$
\begin{align}
\gcd(8, 15) &= 1 \\
\gcd(-6, -15) &= 3 \\
\gcd(10, 0) &= 10 \\
\gcd(0, 0) &= 0 \\
\gcd(a, 0) &= \abs{a} \\
\gcd(a, b) &= \gcd(b, a) \\
\end{align}
$$

Proposition: $\forall x \in \mb{Z}, \gcd(n, n + 1) = 1$.

Proof:

> We need to prove that $d = 1$ satisfies $d = \gcd(n, n + 1)$.  
> Let $d = 1$.  
> Clearly, $a \mid n \wedge a \mid (n + 1)$, so 1 is a common divisor.  
> Let $c$ be an arbitrary integer.  
> Assume that $c \mid n$ and $c \mid (n + 1)$.  
> So $c \mid ((n + 1) - n)$, $c \mid 1$.  
> So $c = \pm 1$, and $c \le d$.  
> Therefore, $d = 1$ satisfies the definition of the GCD, and $\gcd(n, n + 1) = 1$.  

Proposition: $\forall a \in \mb{Z}, \forall b \in \mb{Z}, \gcd(a, b) = \gcd(a, a + b)$

Proof:

> We need to prove $\gcd(a, b)$ is the GCD of $\gcd(a, a + b)$.  
> Let $a$ and $b$ be arbitrary integers.  
> Let $d = \gcd(a, b)$.  
> So $d \mid a \wedge d \mid b$.  
> So $d \mid (a + b)$.  
> We need to prove that $d$ is the greatest of the common divisors.  
> Let $c$ be an arbitrary integer such that $c \mid a \wedge c \mid (a + b)$.  
> So $c \mid ((a + b) - a)$, and $c \mid b$.  
> So if $c \mid a \wedge c \mid b$, $c \le d$.  
> Therefore, $d$ is the GCD of $a$ and $a + b$.  

### GCD with remainders (GCD-WR)

Proposition: for integers $a$, $b$, not both 0, if $q$ and $r$ are integers such that $a = qb + r$, then $\gcd(a, b) = \gcd(b, r)$.

The GCD of two numbers is equal to the GCD of the dividend of their quotient and the remainder of their quotient.

Proof:

> Let $a \in \mb{Z}, b \in \mb{Z}$, such that $a$ and $b$ are not both 0.  
> Assume $q \in \mb{Z}, r \in \mb{Z}$ such that $a = qb + r$.  
> Let $d = \gcd(a, b)$.  
> We know that $d \mid a$ and $d \mid b$.  
> Since $d \mid (ax + by)$, $d \mid (a - qb)$.  
> We know that $a - qb = r$, so $d \mid r$.  
> So $d \mid b$ and $d \mid r$ - $d$ is a common divisor of $b$ and $r$.  
> Let $c$ be an arbitrary integer such that $c \mid b \wedge c \mid r$.  
> We know that $c \mid (bx + ry)$, so $c \mid (bq + r)$.  
> We know that $bq + r = a$, so $c \mid a$.  
> So if $c \mid a \wedge c \mid b$, $c \le d$.  
> Therefore, $d$ is the GCD of $b$ and $r$.  

# 2/10/13

Use GCD-WR to compute $\gcd(322, 98)$:

> Let $a = 322$, $b = 98$.  
> So $q = 3$, $r = 28$.  
> So $\gcd(322, 98) = \gcd(98, 28)$.  
> This is simpler, but if we do it again it could be even simpler.  
> Let $a = 98, 28$.  
> So $q = 3$, $r = 14$.  
> So $\gcd(98, 28) = \gcd(28, 14)$.  
> This is simpler, but if we do it again it could be even simpler.  
> Let $a = 28$, $b = 14$.  
> So $q = 2$, and $r = 0$.  
> So $\gcd(28, 14) = \gcd(14, 0) = 14$.  

This is called the **Euclidean algorithm**. It can be used to calculate the GCD without knowing any of the factors of $a$ or $b$.

General algorithm:

1. Replace the larger number in the GCD with the remainder of dividing it with the other number.
2. Repeat step 1 until the remainder is 0.
3. The non-zero number is the GCD.

### GCD characterization theorem (GCD-CT)

Prosposition: given integers $a$, $b$, $d$, if $d > 0$, $d \mid a \wedge d \mid b$, and $d = ax + by, x \in \mb{Z}, y \in \mb{Z}$, $d = \gcd(a, b)$.

In other words, if a positive integer is a common divisor of $a$ and $b$ and is a linear combination of them, then it is the GCD of $a$ and $b$.  

Use GCD-CT to verify $14 = \gcd(322, 98)$:

> Let $a = 322$, $b = 98$.  
> Let $x = -3$, $y = 10$.  
> Let $d = 14$.  
> Clearly, $d > 0, d \mid a, d \mid b$.  
> Clearly, $d = ax + by$.  
> So $d = \gcd(a, b)$.  

This theorem does not tell us how to find $x$ and $y$, or if they even exist.

Proof:

> Let $a$, $b$, $d$ be arbitrary integers.  
> Let $x$, $y$ be arbitrary integers.  
> Let $d \in \mb{Z}, d > 0$.  
> Assume $d \mid a \wedge d \mid b, d = ax + by$.  
> Let $c \in \mb{Z}$ be an arbitrary common divisor of $a$ and $b$.  
> Then $c \mid (ax + by)$, by DIC.  
> So $c \mid d$.  
> Since $d \ne 0$, $\abs{c} \le \abs{d}$, and $c \le d$, by BBD.  
> So $d = \gcd(a, b)$.  

### Extended Euclidean Algorithm (EEA)

Proposition: given integers $a$ and $b$, we can compute $\gcd(a, b)$, and there exist at least one pair of integers $x$ and $y$ such that $ax + by = \gcd(a, b)$.

Proof:

> ;wip

There are often multiple possible values of $x$ and $y$ that can result in a linear combination.

EEA Table: technique for finding $\gcd(a, b)$ and integers $x$ and $y$ such that $ax + by = \gcd(a, b)$ all at the same time.

EEA works with **positive inputs only**.

However, since $\gcd(a, b) = \gcd(\abs{a}, \abs{b})$, we can simply work with $\abs{a}$ and $\abs{b}$ and proceed with the algorithm. Then, $x\sgn(a)$ and $y\sgn(b)$ are the solutions to the original equation.

We start by constructing a table, always with the same initial configuration:

| x | y | r | q |
|:--|:--|:--|:--|
| 1 | 0 | a | 0 |
| 0 | 1 | b | 0 |

Then, we construct the rows after them with their recursive definitions:

$$
\begin{align}
q_1 &= 0 \\
q_2 &= 0 \\
q_n &= \floor{\frac{r_{n - 2}}{r_{n - 1}}} \\
r_n &= r_{n - 2} - q_n \cdot r_{n - 1} \\
x_n &= x_{n - 2} - q_n \cdot x_{n - 1} \\
y_n &= y_{n - 2} - q_n \cdot y_{n - 1} \\
\end{align}
$$

We stop when r_n = 0. The value of $r$ in the row before this is the GCD.

Note that $ax_n + by_n = r_n$. So the last nonzero remainder has corresponding $x$ and $y$ values that are coefficients for a linear combination of $a$ and $b$ equal to it. In other words, the $x$ and $y$ values in that row are a certificate of correctness for the GCD.

For example, finding $\gcd(42042, 1071)$:

| x  | y    | r     | q  |
|:---|:-----|:------|:---|
|  1 |    0 | 42042 |  0 |
|  0 |    1 |  1071 |  0 |
|    |      |       |    |
|  1 |  -39 |   273 | 39 |
| -3 |  118 |   252 |  3 |
|  4 | -157 |    21 |  1 |
|  - |    - |     0 | 12 |

We stop here since the remainder is 0. Now we can read the values of $x$, $y$, and $r = \gcd(42042, 1071)$ from the next-to-last row.

Since $\gcd(a, b) = \gcd(b, a)$, we can save a few steps by swapping the two if the second value is greater, so the bigger value is always in the first row.

Certificates of Correctness
---------------------------

If $P(n)$ is a statement depending on $n$, $a \in \mb{Z}$, then some data $D$ and knowledge $K$ give a **certificate of correctness** of $P(a)$ if some easy calculations with $D$ and $a$ and $K$ prove $P(a)$.

Example: $P(529)$: "529 is a perfect square"

Certificate of correctness: $23^2 = 529$

Explanation: this proves the statement with only simple operations.

Example: $P(1147)$: "1147 is not prime"

Certificate of correctness: $37 \cdot 31 = 1147$

Explanation: this proves the statement with only simple operations.

Example: $P(1, 379, 421)$: $1 = \gcd(379, 421)$

Certificate of correctness: $1 = 10 \cdot 379 - 9 \cdot 421$

Explanation: given that $1 > 0$, $1 \mid 379 \wedge 1 \mid 421$, and 1 is an integer linear combination of 379 and 421, 1 is the GCD by GCD-CT.

# 4/10/13

How did we find the numbers used in the GCD-CT certificate of correctness above?

Consider $42042x + 1071y = gcd(42042, 1071) = 21$. How do we find $x$ and $y$?

> Consider the GCD calculated with GCD-WR:  
> $$
\begin{align}
42042 &= 39 \cdot 1071 + 273 \\
\gcd(42042, 1071) &= \gcd(1071, 273) \\
1071 &= 3 \cdot 273 + 252 \\
\gcd(1071, 273) &= \gcd(273, 252) \\
273 &= 1 \cdot 252 + 21 \\
\gcd(273, 252) &= \gcd(252, 21) \\
252 &= 12 \cdot 21 + 0 \\
\gcd(252, 21) &= \gcd(21, 0) \\
&= 21 \\
\end{align}
$$  
> Write the last value as a linear combination of the previous values: $21 = 273 - 1 \cdot 252$.  
> Rewrite term: $21 = 273 - 1 \cdot (1071 - 3 \cdot 273)$.  
> Expand and simplify: $21 = 4 \cdot 273 - 1071$.  
> Rewrite term: $21 = 4 cdot (42042 - 39 \cdot 1071) - 1071$.  
> Expand and simplify: $4 \cdot 42042 - 157 \cdot 1071$.  
> Clearly, $x = 4, y = -157$.  
> Clearly, $4 \cdot 42042 - 157 \cdot 1071 = 21$, and 

# 7/10/13

Summary
-------

Consider $\forall x, P(x) \implies Q(x)$. This is not a simple implication due to the quantifier.

However, it still acts like an implication.

The **hypothesis** is $P(x)$.

The **conclusion** is $Q(x)$.

The **converse** is $\forall x, Q(x) \implies P(x)$.

The **contrapositive** is $\forall x, \neg Q(x) \implies \neg P(x)$.

The **negation** is $\neg (\forall x, P(x) \implies Q(x))$, or in simplified form, $\exists x, P \wedge \neg Q(x)$.

$x < y < z$ is equivalent to $x < y \wedge y < z$. So the negation is $x \ge y \vee y \ge z$.

A statement of the form $(P \wedge \neg Q) \implies \neg R$ is generally proven using the contrapositive ($R \implies (P \implies Q)$, assume $R$ and $P$, prove $Q$), or by contradiction (suppose $(P \wedge \neg Q)$ and $R$, then reach an impossible condition).

Prove via induction that $\sum\limits_{i = 1}^n = 1 - \frac{1}{2^n}$ for integers $n \ge 1$:

> Base case: clearly, $\frac{1}{2} = 1 - \frac{1}{2}$.  
> Inductive hypothesis: Let $k \ge 1$. Assume $\sum\limits_{i = 1}^k = 1 - \frac{1}{2^k}$.  
> Clearly, $\text{LHS}_{k + 1} = \text{LHS}_k + \frac{1}{2^{k + 1}}$.  
> By the inductive hypothesis, $\text{RHS}_{k + 1} = \text{RHS}_k + \frac{1}{2^{k + 1}}$.  
> So $\text{RHS}_{k + 1} = 1 - \frac{1}{2^k} + \frac{1}{2^{k + 1}}$.  
> So $\text{RHS}_{k + 1} = 1 - \frac{1}{2} \frac{1}{2^k}$, and $\text{RHS}_{k + 1} = 1 - \frac{1}{2^{k + 1}}$.  
> Inductive conclusion: Clearly, if $\sum\limits_{i = 1}^k = 1 - \frac{1}{2^k}$, then $\sum\limits_{i = 1}^{k + 1} = 1 - \frac{1}{2^{k + 1}}$.  
> Therefore, $\sum\limits_{i = 1}^n = 1 - \frac{1}{2^n}$, by the POMI.  

# 9/10/13

GCD-CT says that if a certificate of a GCD exists, the GCD exists.

EEA says that if a GCD exists, a certificate of its correctness exists.

So for any GCD, we can have a certificate verifying its correctness.

EEA is the converse of GCD-CT.

Coprimality
-----------

Two integers $a$ and $b$ are **coprime** if $\gcd(a, b) = 1$ - if they have no common factors other than 1 and -1.

For example, 4 and 9 are coprime.

# 11/10/13

### Coprimeness and Divisibility (CAD)

Proposition: for any integers $a, b, d$, if $d \mid ab$ and $\gcd(d, a) = 1$, then $a \mid b$.

Proof:

> Let $a, b, d$ be arbitrary integers.  
> Assume $d \mid ab$ and $\gcd(d, a) = 1$.  
> We want to prove $d \mid b$.  
> By EEA, $\exists x, y \in \mb{Z}, dx + ay = 1$.  
> Clearly, this is equivalent $b(dx + ay) = b$.  
> Clearly, this is equivalent to $d(bx) + (ab)y = b$.  
> Clearly, $d \mid d$, and $d \mid ab$.  
> By DIC, $d$ divides every integer linear combination of $d$ and $ab$.  
> So $d \mid (d(bx) + (ab)y)$.  
> So $d \mid b$.  

Proof by elimination
--------------------

To prove a statement of the form $P \vee Q$, we assume $\neg Q$ and from that prove $Q$.

This is based on the observation that $P \vee Q \equiv \neg (\neg P) \vee Q \equiv \neg P \implies Q$.

Primality
---------

An integer $p > 1$ is **prime** if an only if its only positive divisors are 1 and $p$.

Negative numbers, 0, and 1 cannot be prime.

Lemma: given integers $p$, $a$, if $p$ is prime and $p \nmid a$, then $\gcd(p, a) = 1$.

In other words, a prime that does not divide a number is coprime to it.

Proof:

> Assume $p$ is prime and $p \nmid a$.  
> Clearly, the divisors of $p$ are $-p, -1, 1, p$.  
> Clearly, the divisors of $a$ include -1 and 1.  
> Since $p \nmid a$, $a \ne p$.  
> So the only possible common divisors are -1 and 1.  
> So $\gcd(p, a) = 1$.  

## Primes and Divisibility (PAD)

Commonly known as **Euclid's Lemma**.

Corollary: given integers $p, a, b$, if $p$ is prime and $p \mid ab$, then $p \mid a \vee p \mid b$.

> Let $p, a, b$ be arbitrary integers.  
> Proof by elimination.  
> Assume $p$ is prime and $p \mid ab$.  
> Assume $p \nmid a$.  
> By the previous lemma, since $p$ is prime and $p \nmid a$, $\gcd(p, a) = 1$.  
> By CAD, since $p \mid ab$ and $\gcd(p, a) = 1$, $p \mid b$.  

### GCD of One (GCD OO)

Proposition: given integers $a, b$, if there are integers $x, y$ such that $ax + by = 1$, then $\gcd(a, b) = 1$.

Proof:

> Clearly, $1 > 0, 1 \mid a, 1 \mid b$.  
> By GCD-CT, $ax + by = 1$ implies $\gcd(a, b) = 1$.  

By EEA, the proposition's converse is also true. So we can write the following:

Proposition: given integers $a, b$, $\gcd(a, b) = 1$ if and only if there are integers $x, y$ such that $ax + by = 1$.

### Division by the GCD (DB GCD)

Proposition: given integers $a, b$, if $\gcd(a, b) = d, d \ne 0$, then $\gcd(\frac{a}{d}, \frac{b}{d}) = 1$

Proof:

> By EEA, there are integers $x, y$ such that $ax + by = d$.  
> Since $\frac{a}{d}$ and $\frac{b}{d}$ are integers, $\frac{a}{d} x + \frac{b}{d} y = \frac{d}{d}$.  
> So $\frac{a}{d} x + \frac{b}{d} y = 1$.  
> By GCD-OO, $\gcd(\frac{a}{d}, \frac{b}{d}) = 1$.  

Linear Diophantine Equations (LDE)
----------------------------------

A linear equation in the style of Diophantus, a Greek mathemetician who invented a theory of the integers.

They are equations having **integer solutions only**.

### 16/10/13

A linear Diophantine equation **in two variables** is any equation of the form $ax + by = c$, with $a, b, c \in \mb{Z}$, and we seek $x, y \in \mb{Z}$.

In other words, we seek only integer solutions.

* $2x + 3y = 4$ - solutions include $x = 2, y = 0$ and $x = -1, y = 2$.
* $6x + 9y = 10$ - no solutions

These equations will have either infinitely many solutions, or no solutions.

## Linear Diophantine equation theorem, part 1 (LDET 1)

Proposition: given integers $a, b, c \in \mb{Z}$, $d = \gcd(a, b)$, the linear Diophantine equation $ax + by = c$ has solutions if and only if $d \mid c$.

Proof:

> We want to show that $ax + by = c$ having solutions in $\mb{Z}$ $\iff$ $d \mid c$.  
> First we will prove that $ax + by = c$ having solutions in $\mb{Z}$ $\implies$ $d \mid c$.  
> Assume $ax + by = c$ has solutions in $\mb{Z}$.  
> So $\exists x, y \in \mb{Z}, ax + by = c$ (the $x$ and $y$ here are no longer variables, and are specific integers).  
> We know that $d = \gcd(a, b)$.  
> So $d \mid a$ and $d \mid b$.  
> By DIC, $d \mid (au + bv), u, v \in \mb{Z}$.  
> So $d \mid (ax + by)$, and so $d \mid c$.  
> Now we will prove the converse, that $d \mid c$ $\implies$ $ax + by = c$ has solutions in $\mb{Z}$.  
> Assume $d \mid c$.  
> So $\exists k \in \mb{Z}, c = kd$.  
> By EEA, $\exists x, y \in \mb{Z}, d = ax + by$.  
> So $kd = a(kx) + b(ky) = c$.  
> So $kx$ and $ky$ are integer solutions to the equation.  
> So the equation must have solutions in $\mb{Z}$.  
> Since the implication and its converse are true, $ax + by = c$ having solutions in $\mb{Z}$ $\iff$ $d \mid c$.  

The proof in the backwards direction shows us how to find at least one solution to the equation.

Find one solution to the LDE $21x + 15y = 12$:

> Clearly, $a = 21, b = 15, c = 12, d = \gcd(21, 15) = 3$.  
> Since $d \mid c$, there are solutions to the equation.  
> Using EEA, we find that $d = -2a + 3b$.  
> We know that $c = kd, k \in \mb{Z}$.  
> Specifically, $12 = 4 \cdot 3$, so $k = 4$.  
> Clearly, ($k)d = -2ka + (3k)b = c$.  
> So $12 = (-2 \cdot 4) a + (3 \cdot 4) b = -8a + 12b$.  
> So $x = -8, y = 12$ is a solution to the LDE.  

### Linear Diophantine equation theorem, part 2 (LDET 2)

Proposition: given integers $a, b, c$, $ab \ne 0$, $d = \gcd(a, b)$, if the LDE $ax + by = c$ and $x_0, y_0$ is one particular integer solution, then the **complete integer solution** is $x = x_0 + \frac{b}{d} k, y = y_0 - \frac{a}{d} k, k \in \mb{Z}$.

So $ax + by = c \implies x = x_0 + \frac{b}{d} n, y = y_0 - \frac{a}{d}$.

So the solutions to an LDE, if they exist, are integer multiples of $\frac{b}{\gcd(a, b)}, -\frac{a}{\gcd(a, b)}$ at an offset of given solutions $x_0, y_0$.

> We will fix one particular solution as $x_0, y_0$.  
> Let $S$ be $\set{(x, y) \in \mb{Z} \middle| ax + by = c}$.  
> Let $T$ be $\set{(x, y) \middle| x = x_0 + \frac{b}{d} k, y = y_0 - \frac{a}{d} k, k \in \mb{Z}}$.  
> We want to prove $S = T$, so we will prove $S \subseteq T$ and $T \subseteq S$.  

> First we will prove $T \subseteq S$.  
> Let $(x, y)$ be an arbitrary element of $T$.  
> So $\exists k \in \mb{Z}, x = x_0 + \frac{b}{d} k, y = y_0 - \frac{a}{d} k$.  
> We know that $ax_0 + bx_0 = c$ is a given.  
> Clearly, $ax + by = a \left(x_0 + \frac{b}{d} k \right) + b \left(y_0 - \frac{a}{d} k \right)$.  
> So $ax + by = ax_0 + \frac{ab}{d} k + by_0 - \frac{ba}{d} k = ax_0 + by_0 = c$.  
> Since $ax + by = c$, $(x, y) \in S$.  
> Since $(x, y)$ is arbitrary, $T \subseteq S$.  

> Now we will prove $S \subseteq T$.  
> Let $(x, y)$ be an arbitrary element of $S$.  
> So $\exists x, y, \in \mb{Z}, ax + by = c$.  
> We know that $ax_0 + bx_0 = c$ is a given.  
> Clearly, $(ax + by) - (ax_0 + bx_0) = c - c$, so $a(x - x_0) + b(y - y_0) = 0$
> Clearly, $d \mid a \wedge d \mid b$, so $\exists k, l \in \mb{Z}, a = kd, b = ld$.  
> So $k = \frac{a}{d}, l = \frac{b}{d}$.  
> We know that $ab \ne 0$ is a given.  ;wip: do we still need this given the assumption below?
> Assume $b \ne 0$.  ;wip: we make this assumption to simplify things, but should provide a full proof later
> Clearly, $kd(x - x_0) + ld(y - y_0) = 0 = k(x - x_0) + l(y - y_0)$.  

> So $k(x -  x_0) = -l(y - y_0) = l(y_0 - y)$.  
> So $l \mid k(x - x_0)$.  
> By the DB-GCD theorem, $\gcd(k, l) = \gcd \left( \frac{a}{d}, \frac{b}{d} \right) = 1$.  
> Since $l \mid k(x - x_0)$ and $\gcd(k, l) = 1$, $l \mid (x - x_0)$, by the CAD theorem.  
> So $\exists n \in \mb{Z}, x - x_0 = ln$
> So $x = x_0 + ln$, and $x = x_0 + \frac{b}{d}n$.  

> We need to use another technique here in order to ensure we can use the same value of $n$.  
> Since $k(x - x_0) + l(y - y_0) = 0$, $l(y - y_0) = -k(x - x_0) = k(x_0 - x)$.  
> Since $x - x_0 = ln$, $l(y - y_0) = kln$.  
> Since we assumed $b \ne 0$, $y - y_0 = kn$.  ;wip: this may not be a good assumption
> Clearly, $l \ne 0$ since $b \ne 0$.  
> So $y = y_0 - kn$, and $y = y_0 + \frac{a}{d}n$.  

> Since $\exists n \in \mb{Z}, x = x_0 + \frac{b}{d}n, y = y_0 + \frac{a}{d}n$, $(x, y) \in T$.  
> So $S \subseteq T$.  
> Since $T \subseteq S \wedge S \subseteq T$, $S = T$

# 18/10/13

Find the complete integer solutions to $14x - 10y = 26$:

> Clearly, $\gcd(14, 10) = 2$, and $2 \mid 26$, so there are infinite integer solutions, by LDET1.  
> Using EEA, we determine that $\gcd(14, 10) = 2 = 14 \cdot -2 - 10 \cdot -3$, with $x = -2, y = -3$.  
> Clearly, $14 \cdot -2 - 10 \cdot -3 = 2$ can be multiplied by $\frac{26}{2} = 13$ to obtain $14 \cdot -26 - 10 \cdot -39 = 26$.  
> So $x = -26, y = -39$.  
> By LDET 2, $x = -26 + \frac{-10}{2}n = -26 - 5n, y = -39 - \frac{14}{2} = -39 - 7n, n \in \mb{Z}$.  

In general, we can solve any LDE of the form $ax + by = c$ that has solutions simply by using EEA to find $x$ and $y$ for $ax + by = \gcd(a, b)$, and multiplying both sides of the equation by $\frac{c}{\gcd(a, b)}$.

This is possible since $\gcd(a, b) \mid c$, assuming the LDE has solutions (by LDET1).

For the above, find the unique positive solution ($x > 0, y > 0$) which minimizes $x + y$:

> We want to find $x, y$ such that $x > 0 \wedge y > 0$.  
> Assume $x > 0, y > 0$.  
> Clearly, $x > 0 \iff -26 - 5n > 0 \iff n < -\frac{26}{5}$.  
> Clearly, $y > 0 \iff -39 - 7n > 0 \iff n < -\frac{39}{7}$.  
> Since $n < -\frac{26}{5} \wedge n < -\frac{39}{7}$, $n < \floor{\min(-\frac{26}{5}, -\frac{39}{7})}$, so $n < -6$.  
> Since $x$ and $y$ increase as $n$ decreases, the smallest value of $x$ and $y$ results from the largest value of $n$.  
> For $n = 6$, $x = -26 - 5 \cdot -6 = 4$ and $y = -39 - 7 \cdot -6 = 3$.  

By the way, **iff** means **if and only if** ($\iff$).

# 21/10/13

Congruence
----------

Given $a, b, m \in \mb{Z}$, $a \equiv b \pmod{m}$ - $a$ is **congruent to** $b$ modulo $m$ - if and only if $m \mid (a - b)$.

If $m \nmid (a - b)$, then $a \not\equiv b \pmod{m}$ - $a$ is not congruent to $b$ modulo $m$.

When proving things involving congruence, we often use the definition.

### Congruent iff Same Remainder (CISR)

Proposition: given $m \in \mb{N}$, $\forall a, b \in \mb{Z}, a \equiv b \pmod{m}$ if and only if $a$ and $b$ have the same remainder when divided by $m$.

In other words, $\rem(a, m) = \rem(b, m) \iff a \equiv b \pmod{m}$.

;wip: prove it - proof in course notes

### Congruence is an Equivalence Relation (CER)

Given $m \in \mb{N}, \forall a, b, c \in \mb{Z}$:

* $a \equiv a \pmod{m}$: reflexive property
* $a \equiv b \pmod{m} \iff b \equiv a \pmod{m}$: symmetric property
* $a \equiv b \pmod{m} \wedge b \equiv c \pmod{m} \implies a \equiv c \pmod{m}$: transitive property

The first two are trivially proved. The last one is proved below:

> Assume $a \equiv b \pmod{m}$ and $b \equiv c \pmod{m}$.  
> So $m \mid a - b$ and $m \mid b - c$.  
> By DIC, $m$ divides every integer linear combination of $a - b$ and $b - c$.  
> In particular, $m \mid (a - b) + (b - c)$, so $m \mid a - c$.  
> So $a \equiv c \pmod{m}$.

### Properties of Congruence (PC)

Given $m \in \mb{N}, a, a', b, b' \in \mb{Z}$, if $a \equiv a' \pmod{m}$ and $b \equiv b' \pmod{m}$, then:

* $a + b \equiv a' + b' \pmod{m}$
* $a - b \equiv a' - b' \pmod{m}$
* $ab \equiv a'b' \pmod{m}$

Proof:

> Proof of first point.  
> Assume $a \equiv a' \pmod{m}$ and $b \equiv b' \pmod{m}$.  
> So $m \mid a - a'$ and $m \mid b - b'$.  
> By DIC, $m \mid (a - a') + (b - b')$, so $m \mid (a + b) - (a' + b')$.  
> So $a + b \equiv a' + b' \pmod{m}$.
> The second point is proved similarly.  

> The third point is proved slightly differently.  
> Assume $a \equiv a' \pmod{m}$ and $b \equiv b' \pmod{m}$.  
> We want to prove $m \mid ab - a'b'$.  
> Clearly, $ab - a'b' = ab - ab' + ab' - a'b' = a(b - b') + b'(a - a')$.  
> Since $m \mid a - a'$ and $m \mid b - b'$, $m \mid a(b - b') + b'(a - a')$, by DIC.  
> So $m \mid ab - a'b'$, and $ab \equiv a'b' \pmod{m}$

Special case: if $u \equiv v \pmod{m}$, then $u^2 \equiv v^2 \pmod{m}$. Here, $a = u, a' = u$ and $b = v, b' = v$.

We can apply this again: if $a^2 \equiv c^2 \pmod{m}$, then $a^3 \equiv c^3 \pmod{m}$. Here, $a = a^2, a' = a$ and $b = c^2, b', c$

By induction, we can prove that $a^n \equiv c^n \pmod{m}$.

Special case: if $a_1 \equiv b_1 \pmod{m} \wedge \ldots \wedge a_2 \equiv b_2 \pmod{m}$, then $a_1 + \ldots + a_n \equiv b_1 \pmod{m} + \ldots + b_n$.

Application: remainder when divided by 9

> Clearly, $10 \equiv 1 \pmod{9}$.  
> Clearly, $10^n \equiv 1^n \pmod{9}$.  
> Consider $k = 3141592$. What is the remainder when divided by 9?  
> Clearly, $k = 3 \cdot 10^6 + 1 \cdot 10^5 + 4 \cdot 10^4 + 1 \cdot 10^3 + 5 \cdot 10^2 + 9 \cdot 10^1 + 2 \cdot 10^0$.  
> Clearly, $10^n \equiv 1 \pmod{9}$ and $3 \equiv 3 \pmod{9}, 1 \equiv 1 \pmod{9}, 4 \equiv 4 \pmod{9}, 1 \equiv 1 \pmod{9}, 5 \equiv 5 \pmod{9}, 9 \equiv 9, \pmod{9} 2 \equiv 2 \pmod{9}$.  
> So each term of the sum is congruent to the digit: $3 \cdot 10^6 \equiv 3 \pmod{9}, 2 \cdot 10^0 \equiv 2 \pmod{9}$.  
> Clearly, $k \equiv 3 + 1 + 4 + 1 + 5 + 9 + 2 \pmod{9}$, so $k \equiv 25 \pmod{9}$.  
> Repeating, we get $k \equiv 2 + 5 \pmod{9}$, so $k \equiv 7 \pmod{9}$.  
> Since $0 \le 7 \le 9$, 7 is the remainder when 3141592 is divided by 9.  

So to find the remainder of a number divided by 9, we can ;wip

### Congruences and Division (CD)

Note that $ac \equiv bc \pmod{m}, c \ne 0$ does not imply $a \equiv b \pmod{m}$.

However, if $c$ is coprime to $m$ ($\gcd(c, m) = 1$), then $a \equiv b \pmod{m}$.

In other words, given $m \in \mb{N}, a, b, c \in \mb{Z}, c \ne 0$, if $ac \equiv bc \pmod{m}$ and $\gcd(c, m) = 1$, then $a \equiv b \pmod{m}$.

Proof:

> Assume $ac \equiv bc \pmod{m}$ and $\gcd(c, m) = 1$.  
> So $m \mid ac - bc$ and $m \mid c(a - b)$.  
> Since $\gcd(m, c)$, $m \mid a - b$, by CAD.  
> So $a \equiv b \pmod{m}$.  

# 23/10/13

Linear Congruence
-----------------

A **linear congruence** is a mathematical form. It takes the general form of the following:

> Given a fixed $a, c, m \in \mb{Z}, m > 0, ax \equiv c \pmod{m}$.  

Consider $4x \equiv 2 \pmod{6}$. Possible solutions are $-1, 2, 5, 8, 11$. Note that the solutions differ by 3.

Consider $4x \equiv 3 \pmod{6}$. There are no solutions.

### Solving

> $x_1$ is a solution if and only if $ax_1 \equiv x \pmod{m}$, or $m \mid ax_1 - c$.  
> So $x_1$ is a solution if and only if $-m \mid ax_1 - c$, or $\exists k \in \mb{Z}, ax_1 - c = -mk$.  
> So $x_1$ is a solution if and only if $\exists k \in \mb{Z}, ax_1 + mk = c$.  
> This is an LDE. So the linear congruence has solutions if and only if the related linear diophantine equation has solutions.

$ax \equiv c \pmod{m}$ is closely related to $ax + my = c$.

If $x_0, y_0$ is a particular solution to $ax + my = c$, then the complete solution is $x = x_0 + \frac{m}{d}n, y = y_0 - \frac{a}{d}n, n \in \mb{Z}, d = \gcd(a, m)$.

Solve $4x \equiv 2 \pmod{6}$:

> The corresponding LDE is $4x + 6y = 2$.  
> By inspection (though we could also use EEA), we find that one possible solution is $x = -1, y = 1$.  
> By LDET2, $x = -1 + \frac{6}{2}n, n \in \mb{Z}$.  
> In both the linear congruence and the LDE, $x$ represents the same thing.  
> So the complete solution to the linear congruence is $x = -1 + \frac{6}{2}n, n \in \mb{Z}$.  

In general $x = x_0 + \frac{m}{\gcd(a, m)}n, n \in \mb{Z}$.

# 25/10/13

General process of solving a linear congruence $ax \equiv c \pmod{m}$:

1. Let $d = \gcd(a, m)$.
2. Assume $x_0$ is a solution. Find $x_0$ with the associated LDE.
3. The complete solution is $x = x_0 + \frac{m}{d}n, n \in \mb{Z}$.

However, this is not a preferred way of writing the answer. We could also write:

* $x \in \set{x_0 + \frac{m}{d}n \middle| n \in \mb{Z}}$ - set notation
* $x \in \set{\ldots, x_0 - 2\frac{m}{d}, x_0 - \frac{m}{d}, x_0, x_0 + \frac{m}{d}, x_0 + 2\frac{m}{d}, \ldots}$ - write out all answers
* $x \equiv x_0 \pmod{\frac{m}{d}}$ - linear congruence (can be negative)
* $x \equiv x_0 \pmod{\frac{m}{d}}$ - linear congruence in range $0 \le x_0 < \frac{m}{d}$ (take $x_0$ modulo $\frac{m}{d}$ to get this)

The best way of writing the solutions, though, is to write it out modulo $m$.

Note that in the set of all answers, if we take every answer modulo $m$, there are $d$ different possible answers: $x \equiv x_0, x_0 + \frac{m}{d} x_0 + 2\frac{m}{d}, \ldots, x_0 + (d - 1)\frac{m}{d}$.

$x \equiv 2 \text{ or } 5 \pmod{6}$ ;wip

### Linear Congruence Theorem, Version 1 (LCT 1)

Proposition: given $a, c, m \in \mb{Z}, m > 0$, with $d = \gcd(a, m)$:

* the linear congruence $ax \equiv c \pmod{m}$ has a solution if and only if $d \mid c$
* if it does have a solution $x = x_0$, then its complete solution is $x \equiv x_0 \pmod{\frac{m}{d}}$
* alternatively, we can write this as $x \equiv x_0, x_0 + \frac{m}{d} x_0 + 2\frac{m}{d}, \ldots, x_0 + (d - 1)\frac{m}{d}$.

;wip: prove this

Solve $4x \equiv 5 \pmod{21}$:

> The corresponding LDE is $4x + 21y = 5$.  
> A possible solution is $x_0 = -25, y_0 = 5$, found by inspection.  
> So by LCT 1, the complete solution is $x = -25 + \frac{21}{3}n, n \in \mb{Z}$, or $x = 3 + 7n, n \in \mb{Z}$.  
> So we write $x \equiv 3 \text{ or } 10 \text{ or } 17 \pmod{21}$.  

Solve $33x \equiv 6 \pmod{42}$:

> The corresponding LDE is $33x + 42y = 6$.  
> A particular solution is $x_0 = -5, y_0 = 4$, found by EEA.  
> So by LCT 1, the complete solution is $x = -5 + \frac{42}{3}n, n \in \mb{Z}$, or $x = 9 + 14n, n \in \mb{Z}$.  
> So we write $x \equiv 9 \text{ or } 23 \text{ or } 37 \pmod{42}$.  

### Linear Congruence Theorem, Version 2 (LCT 2)

This is simply a reformulation of LCT 1 with congruence classes.

Note that $ax \equiv c \pmod{m}$ is equivalent to $[a][x] = [c]$ in $\mb{Z}_m$.

Proposition: given $a, c, m \in \mb{Z}, m > 0$, with $d = \gcd(a, m)$:

* the linear congruence $ax \equiv c \pmod{m}$ has a solution if and only if $d \mid c$
* if it does have a solution $x = x_0$, then its complete solution is $x = \set{[x_0], [x_0 + \frac{m}{d}], [x_0 + 2\frac{m}{d}], \ldots, [x_0 + (d - 1)\frac{m}{d}]}$ in $\mb{Z}_m$

Together, we can say the following are equivalent to each other:

* $[a][x] = [c]$ has a solution in $\mb{Z}_m$ - congruence class form
* $ax \equiv c \pmod{m}$ has a solution - linear congruence form
* $\exists x_0 \in \mb{Z}, ax_0 \equiv c \pmod{m}$ - solution form
* $\exists x_0, y_0 \in \mb{Z}, ax_0 + my_0 = c$ - LDE form

# 28/10/13

Modular Arithmetic
------------------

Modular arithmetic is a device that relates congruences with equalities.

There are two ways to do this - with remainders or with congruence classes. The latter is generally cleaner.

### Congruence classes

Given $m > 0, a \in \mb{Z}$, the congruence class modulo $m$ of $a$ is the set $\set{x \in \mb{Z} \middle| x \equiv a \pmod{m}}$. We denote this set $[a]$ when $m$ is understood (known from the context). This is called the "integers mod $m$"

So if we already know $m = 10$, $[3] = \set{\ldots, -17, -7, 3, 13, 23, 33, 43, \ldots}$.

Consider for $m = 4$, $[-5] = \set{\ldots, -9, -5, -1, 3, 7, 11, 15, \ldots} = [3]$. -5 and 3 are **representatives** of the congruence class. Note that there are infinite possible representative.

A congruence class is simply a set. Any element of the set is a representative of the set. This is like fractions, which represent rational numbers but are not unique, like $\frac{1}{2}$ and $\frac{2}{4}$.

### Modulo

The integers modulo $m$ is the number system whose set of numbers is $\mb{Z}_m = \set{[0], [1], [2], \ldots, [m - 1]}$.

Basically, the numbers in this system are infinite sets of integers, and we add and multiply these sets by considering them as single objects.

In this number system, come operations can be defined by the representatives:

* $[a] + [b] = [a + b]$ - Addition
* $[a] \cdot [b] = [a \cdot b]$ - Multiplication

Fix $m = 4$. So $[2] \cdot [3] = [6] = [2]$. Likewise, $[2] + [3] = [5] = [1]$.

We know that $[6] = [2]$ because $6 \equiv 2 \pmod{m}$.

The advantage of using operations over congruence classes is because **we can write congruence of two numbers as equality of two congruence classes**.

### Multiplicative inverse

Note that $[2] \cdot [3] = [1]$. So $[2]$ is the **multiplicative inverse** of $[3]$ and write $[3]^{-1}$.

In general, the inverse of a given number is the number which, when multiplied with the given number, results in the congruence class $[1]$.

In other words, $[a]^{-1}$ is the value such that $[a]^{-1} \cdot [a] = 1$.

$[1]$ always has the inverse $[1]$. $[0]$ never has an inverse.

The multiplicative inverse is **always unique**.

Proof:

> We want to see if it is possible that $[a] \cdot [b] = [1] = [a] \cdot [c]$, and $[b] \ne [c]$.  
> Assume $[a] \cdot [b] = 1 = [a] \cdot c$.  
> Clearly, $[b] = [b] \cdot 1 = [b] \cdot [a] \cdot [c] = 1 \cdot [c] = [c]$.  
> So $[b] = [c]$.  

Find $[15]^{-1}$ in $\mb{Z}_{38}$:

> Clearly, $\gcd(15, 38) = 1$, so $[15]^{-1}$ exists.  
> Let $x$ represent $[15]^{-1}$.  
> We can solve $[15] \cdot x = 1$ by writing it as a linear congruence, and then a LDE.  
> So $15x \equiv 1 \pmod{38}$ and $15x + 38y = 1$.  
> Applying EEA, we get $x = -5, y = 2$.  
> By LCT 1, $x = -5 + 38n, n \in \mb{Z}$, or $x \equiv -5 \pmod{38}$.  
> So $x = [-5] = [-5 + 38] = [33]$, and $[15]^{-1} = [33]$.  

### Unamed Theorem

This is a slight generalization of "Existance of Inverses in $\mb{Z}_p$ (INV $\mb{Z}_p$)".

Proposition: given $m > 0$ and $a \in \mb{Z}_m$, $[a]$ has a multiplicative inverse in $\mb{Z}_m$ if and only if $\gcd(a, m) = 1$.

Proof:

> Clearly, this is equivalent to $\exists [x] \in \mb{Z}_m, [a] \cdot [x] = [1]$.  
> Clearly, this is equivalent to $\exists [x] is \mb{Z}_m, ax \equiv 1 \pmod{m}$.  
> Clearly, $x$ exists if only if $\gcd(a, m) \mid 1$, by LCT 1.  
> So $x$ exists of and only if $\gcd(a, m) = 1$.  

# 30/10/13

Fermat's Little Theorem (FLT)
-----------------------------

"Fair-mah" - Pierre de Fermat.

If $p$ is a prime number, $a \in \mb{Z}$, $p \nmid a$, then $a^{p - 1} \equiv 1 \pmod{p}$.

In other words, if $p$ is prime, $[a] \in \mb{Z}_p \wedge [a] \ne 0 \implies [a]^{p - 1} = [1]$.

This is also writable as $[a] \cdot [a]^{p - 2} = [1]$.

So by the definition of the multiplicative inverse, $[a]^{-1} = [a]^{p - 2}$ if the modulus is prime and $a$ is not divisible by it.

Proof:

> Fix a prime $p$.  
> Let $a \in \mb{Z}$.  
> Assume $p \nmid a$.  
> Consider the first $p$ multiples of $a$: $0, 1a, \ldots, (p - 1)a$.  

> We claim that these numbers represent distinct congruence classes modulo $p$.  
> We will prove this claim by contradiction.  
> Suppose for some $r, s$, $r \ne s, 0 \le r \le p - 1, 0 \le s \le p - 1$, that $ra \equiv sa \pmod{p}$.
> Then $p \mid ra - sa$, so $p \mid (r - s)a$.  
> Since $p \nmid a$, then $p \mid r - s$, by PAD.  
> But we know that $r - s \ne 0$, so $\abs{r - s} \ne 0 \ne 0$ and $\abs{r - s} \ge p$, by BBD.  
> But this is impossible since $\abs{r - s} \le p - 1$.  
> So the claim is true.  

> Clearly, there are exactly $p$ distinct congruence classes modulo $p$.  
> Since each of the numbers represents a distinct congruence class, and there are $p$ numbers and only $p$ distinct congruence classes modulo $p$, then these numbers must represent all distinct congruence classes, modulo $p$.
> So $[0], [1a], \ldots, [(p - 1)a]$ is some permutation of $[0], [1], \ldots, [p - 1]$.  
> We know that $[0] = [0]$, so $[1a], [2a], \ldots, [(p - 1)a]$ is some permutation of $[1], [2], \ldots, [p - 1]$.  
> So $[1a] \cdot [2a] \ldots \cdot [(p - 1)a] = [1] \cdot [2] \ldots \cdot [p - 1]$.  
> Clearly, $[1a \cdot 2a \ldots \cdot (p - 1)a] = [(p - 1)! a^{p - 1}]$.  
> Clearly, $[1] \cdot [2] \ldots \cdot [p - 1] = [(p - 1)!]$.  
> So $[(p - 1)! a^{p - 1}] = [(p - 1)!]$.  
> So $(p - 1)! a^{p - 1} \equiv (p - 1)! \pmod{p}$.  
> So $p \mid (p - 1)! a^{p - 1} - (p - 1)!$, and $p \mid (p - 1)! (a^{p - 1} - 1)$.  

> We claim that $p \nmid (p - 1)!$.  
> We will prove this claim by contradiction.  
> Suppose $p \mid 1 \cdot 2 \cdot \ldots \cdot (p - 1)$.  
> Then $p \mid (1 \cdot 2 \cdot \ldots (p - 2))$ or $p \mid (p - 1)$, by PAD.  
> Clearly, $p \nmid (p - 1)$, so $p \mid 1 \cdot 2 \cdot \ldots (p - 2)$.  
> By applying this repeatedly, we find that $p \nmid p - 2, p \nmid p - 3, \ldots, p \nmid 2$, and $p \mid 1$.  
> But this is impossible, since $p \nmid 1$, by BBD.  
> So the claim is true.  

> So $p \mid a^{p - 1} - 1$, by PAD.  
> So $a^{p - 1} \equiv 1 \pmod{p}$.  

For example, 5 is prime and $5 \nmid 3$, so $3^4 \equiv 1 \pmod{5}$.

Find the remainder when $8^{1000}$ is divided by 13:

> We want to find $r$ such that $8^{1000} \equiv r \pmod{13}$, $0 \le r < 13$.  
> Since 13 is prime and $13 \nmid 8$, $8^{12} \equiv 1 \pmod{13}$, by FLT.  
> By PC, $(8^{12})^n \equiv 1^n \equiv 8^{12 \cdot 83} \equiv 8^{996} \pmod{13}$.  
> So $8^{1000} \equiv 8^{4} \cdot 8^{996} \equiv 1 \cdot 2^{12} \pmod{13}$.  
> Since 13 is prime and $13 \nmid 2$, $2^{12} \equiv 1 \pmod{13}$, by FLT.  
> So $8^{1000} \equiv 1 \cdot 1 \equiv 1 \pmod{13}$.  

This only works in certain cases, but is occasionally useful.

# 1/11/13

Nonlinear (polynomial) Congruences
----------------------------------

$ax \equiv b$ is linear because $x$, the variable, only occurs in power 1 at the highest.

Solve $x^{43} + 28x^9 + 10x \equiv 1 \pmod{5}$:

> Clearly, if $x_0$ is one solution and $x_1 \equiv x_0 \pmod{5}$, then $x_1^{43} \equiv x_0^{43} \pmod{5}$ and $x_1^9 \equiv x_0^9 \pmod{5}$, by PC.  
> So $x_0^{43} + 28x_0^9 + 10x_0 \equiv x_1^{43} + 28x_1^9 + 10x_1 \equiv 1 \pmod{5}$.  
> So if solutions exist, then the complete solution has one or more congruence classes mod 5. ;what?
> So all we need to do is test all possible representatives: 0, 1, 2, 3, 4.
> ;wip: evaluate it for all those values
> We want to test the values for all possible representatives: $0^43$
> Use Fermat's Little Theorem with two cases, $5 \mid x$ and $5 \nmid x$, to prove $x^4 \equiv 1$ ;wip
> Simplify: $28 \equiv 3 \pmod{5}$ and $10 \equiv 0 \pmod{5}$, so $x^{43} + 3x^9$.  
> Clearly, $x^{43} \equiv x^4 x^{39} \equiv 1 x^{39}$, because $x^4 \equiv 1$.  
> If we repeat this, we get $x^{39} \equiv x^{35} \equiv \ldots \equiv x^{3}$.  
> Likewise, we can do this for $x^9$ to find that $x^9 \equiv x$.
> So $x^{43} + 28x^9 + 10x \equiv x^3 + 3x \pmod{5}$.  
;wip: rewrite this whole thing and do it properly

In general, there is no theorem that allows us to solve these directly. However, we do know that we can always find any solutions that exist by testing all the the representatives mod 5, and we can use tricks like FLT to simplify expressions.

Chinese Remainder Theorem (CRT)
-------------------------------

> An unknown number, when repeatedly divided by 3, the remainder is 2; by 5, the remainder is 3; and by 7, the remainder is 2. What is the number?

- Sun Tsu

This is a **system** of linear congruences.

Essentially, we want to solve for $n$ in the system $\begin{cases}
n \equiv 2 \pmod{3} \\
n \equiv 3 \pmod{5} \\
n \equiv 2 \pmod{7} \\
\end{cases}$.

A linear congruence of the form $x \equiv n \pmod{m}$ (where $a = 0$) always has solutions.

We can always solve these systems when the moduli are pairwise coprime ;wip: why? prove it

Solve the system:

> Note that $n \equiv 2 \pmod{3} \iff 3 \mid n - 2 \iff \exists x \in \mb{Z}, n - 2 = 3x \iff n = 3x + 2$.  
> Since $n \equiv 3 \pmod{5}$, $3x + 2 \equiv 3 \pmod{5} \iff 3x \equiv 1 \pmod{5}$.  
> Solving for the linear congruence, we get $x \equiv 2 \pmod{5}$.  
> So $5 \mid x - 2 \iff \exists y \in \mb{Z}, x - 2 = 5y \iff x = 5y + 2$.  
> So $n = 3x + 2 = 3(5y + 2) + 2 = 15y + 8 \iff n - 8 = 15y \iff 15 \mid n - 8$.  
> So $n \equiv 8 \pmod{15}$.  

> Note that we simplified two congruences into one. Now we have a system of two congruences again, $\begin{cases}
n \equiv 8 \pmod{15} \\
n \equiv 2 \pmod{7} \\
\end{cases}$.  
> We apply the same technique again.  
> Note that $n \equiv 8 \pmod{15} \iff 15 \mid n - 8 \iff \exists x \in \mb{Z}, n - 8 = 15x \iff n = 15x + 8$.  
> Since $n \equiv 2 \pmod{7}$, $15x + 8 \equiv 2 \pmod{7} \iff 15x \equiv -6 \pmod{7}$.  
> Solving for the linear congruence, we get $x \equiv 1 \pmod{7}$.  
> So $7 \mid x - 1 \iff \exists y \in \mb{Z}, x - 1 = 7y \iff x = 7y + 1$.  
> So $n = 15x + 8 = 15(7y + 1) + 8 = 105y + 23 \iff n - 23 = 105y \iff 105 \mid n - 23$.  
> So $n \equiv 23 \pmod{105}$.  

Proposition: Given integers $a_1$ and positive integers $m_1, m_2$, if $\gcd(m_1, m_2) = 1$, then the system $\begin{cases}
n \equiv a_1 \pmod{m_1} \\
n \equiv a_2 \pmod{m_2} \\
\end{cases}$ has a unique solution mod $m_1 m_2$. So if $n = n_0$ is one solution, then the complete solution is $n \equiv n_0 \pmod{m_1 m_2}$.

Basically, if we can find a single solution to a system of two linear congruences, then we can immediately write the complete solution.

For more than two linear congruences, we can solve the first two, then solve for the solution and the third one, and then solve for that solution, and so on, until there is only one left.

Application: if $a \in \mb{Z}, m_1, m_2 \in \mb{Z}, \gcd(m_1, m_2) = 1$, then $x \equiv a \pmod{m_1 m_1} \iff \begin{cases}
x \equiv a \pmod{m_1} \\
x \equiv a \pmod{m_2} \\
\end{cases}$.

In other words, the solutions to a system of congruences with coprime moduli are also the solutions to the congruence with the product of the moduli.

Solving one is equivalent to solving the other.

;wip: prove this using LCT 1

Solve $x^{43} + 28x^9 + 10x \equiv 1 \pmod{35}$:

> We know that $35 = 5 \cdot 7$, and $\gcd(5, 7) = 1$.
> So $x^{43} + 28x^9 + 10x \equiv 1 \pmod{35} \equiv \begin{cases}
x^{43} + 28x^9 + 10x \equiv 1 \pmod{5} \\
x^{43} + 28x^9 + 10x \equiv 1 \pmod{7} \\
\end{cases}$.  
> We already know that $x^{43} + 28x^9 + 10x \equiv 1 \pmod{5}$.  
> By FLT, if $[x] \ne 0$, then $x^4 \equiv 1 \pmod{5}$.  
> By testing, $x = 0$ is not a solution. So $x^4 \equiv 1 \pmod{5}$. 
> So $x^3 + 8x \equiv 1 \pmod{5}$.  
> Testing each value, $x \equiv 3 \text{ or } 4 \pmod{5}$.  
> We already know that $x^{43} + 28x^9 + 10x \equiv 1 \pmod{7}$.  
> By FLT, if $[x] \ne 0$, then $x^6 \equiv 1 \pmod{7}$.  
> By testing, $x = 0$ is not a solution. So $x^6 \equiv 1 \pmod{7}$. 
> So $x + 10x \equiv 11x \equiv 1 \pmod{7}$.  
> By inspection, $x \equiv 2 \pmod{7}$.  
> Now we resolve the cases: either $\begin{cases}
x \equiv 3 \pmod{5} \\
x \equiv 2 \pmod{7} \\
\end{cases}$ or $\begin{cases}
x \equiv 4 \pmod{5} \\
x \equiv 2 \pmod{7} \\
\end{cases}$.  
> We will solve the first case.  
> Clearly, $\exists k \in \mb{Z}, x = 5k + 3$ and $5k \equiv 6 \pmod{7}$. So $k \equiv 4 \pmod{7}$, by inspection.  
> So $\exists l \in \mb{Z}, k = 7l + 4$ and $x = 35l + 23$, so $x \equiv 23 \pmod{35}$.  
> We will solve the second case.  
> Clearly, $\exists k \in \mb{Z}, x = 5k + 4$ and $5k \equiv 5 \pmod{7}$. So $k \equiv 1 \pmod{7}$, by inspection.  
> So $\exists l \in \mb{Z}, k = 7l + 1$ and $x = 35l + 9$, so $x \equiv 9 \pmod{35}$.  
> The complete solution is $x \equiv 9 \text{ or } x \equiv 23 \pmod{35}$.  

# 4/11/13

RSA
---

It can be shown that $x^p \equiv x^1 \pmod{p}$ for any prime $p$:

> Either $p \mid x$ or $p \nmid x$.  
> If $p \mid x$, then $x^p \equiv x^1 \pmod{p}$ is obviously true.  
> If $p \nmid x$, FLT states $x^{p - 1} \equiv 1 \pmod{p}$, and $x^p \equiv x \pmod{p}$.  

### Mathematical basis

More generally, for any $r, s \in \mb{N}$, $r \equiv s \pmod{p - 1} \implies x^r \equiv x^s \pmod{p}$.

Proof:

> Assume $r \equiv s \pmod{p - 1}$.  
> Note that either $r < s$, $r = s$, or $r > s$.  
> If $r = s$, then clearly $x^r \equiv r^s \pmod{p}$.  
> The result for $r > s$ is the same as $r < s$, except with variables swapped.  
> So we will only consider $r > s$.  
> Assume $r > s$.  
> So $p - 1 \mid r - s$.  
> So $\exists k \in \mb{Z}, r = k(p - 1) + s$.  
> Clearly, $k \in \mb{N}$ since $r > s$.  
> We need these to be positive so we can use them in exponents.  
> Clearly, $x^r = x^{k{p - 1} + s}$.  
> Either $p \mid x$ or $p \nmid x$.  
> If $p \nmid x$, then FLT states $x^{p - 1} \equiv 1$ and $(x^{p - 1})^k \equiv 1^k \equiv 1$.  
> So $x^r = (x^{p - 1}) \cdot x^s \equiv 1 \cdot x^s \equiv x^s$.  
> If $p \mid x$, then $x \equiv 0 \pmod{p}$ and $x^r = 0^r = 0 = x^s$.  

Given primes $p, q, p \ne q$, for any $x \in \mb{Z}, r, s \in \mb{N}$, $r \equiv s \pmod{(p - 1)(q - 1)} \implies x^r \equiv x^s \pmod{pq}$.

Proof:

> Assume $r \equiv s \pmod{(p - 1)(q - 1)}$.  
> So $(p - 1)(q - 1) \mid r - s$.  
> Clearly, $p - 1 \mid (p - 1)(q - 1)$.  
> So $p - 1 \mid r - s$, by TD.  
> So $r \equiv s \pmod{p - 1}$.  
> In the same way, $r \equiv s \pmod{q - 1}$.  
> By the previous claim, $x^r \equiv r^s \pmod{p}$ and $x^r \equiv r^s \pmod{q}$.  
> Clearly, $\gcd(p, q) = 1$.  
> By CRT, $x^r \equiv x^s \pmod{pq}$.  

We can generalize further:

Suppose $p_1, \ldots, p_k$ be primes, all different. Let $n = p_1 \cdot \ldots \cdot p_k$ and $\phi(n) = (p_1 - 1) \cdot \ldots \cdot (p_k - 1)$. For any $x \in \mb{Z}, r, s \in \mb{N}$, $r \equiv s \pmod{\phi(n)} \implies x^r \equiv x^s \pmod{n}$.

$\phi$ is called the **Euler phi function**.

Consider $(x^3)^7 \equiv x \pmod{33}$:

> Let $n = 33 = 3 \cdot 11$.  
> So $\phi(n) = 2 \cdot 10 = 20$.  
> So $21 \equiv 1 \pmod{20}$, so $x^{21} \equiv (x^3)^7 \equiv x \pmod{21}$.  

Now say we are given $x^3 \equiv 6 \pmod{33}$:

> Clearly, $(x^3)^7 \equiv 6^7 \equiv 30 \pmod{33}$.  
> Since we know $(x^3)^7 \equiv 1 \pmod{33}$, $(x^3)^7 \equiv 6^7 \equiv 30 \pmod{33}$.  

### Algorithm

We can use $(x^3)^7 \equiv x \pmod{33}$ to **encrypt messages**. People can take a number $m$ and send $v = m^3$ it to the recipient as the encrypted message. The recipient would then decrypt it by taking $v^7$ mod $n$ to obtain $m$.

For example, we can represent each letter A-Z as congruence classes $[2]$ to $[27]$ (we skip 0 and 1 because $1^3 = 1$ and $0^3 = 0$). We now make a table with each one cubed mod $n$ to obtain $[8], [27], [31], [26], \ldots$.

Now we encrypt a simple message, "CANDY":

> We have $C, A, N, D, Y$ as the **plaintext** - the original message.  
> $C, A, N, D, Y$ becomes $[4], [2], [15], [5], [26]$ when represented using congruence classes.  
> If we take each congruence class to the power of 3, we obtain $[31], [8], [9], [26], [20]$.  
> This is the encrypted message. We do not need to re-express it in terms of letters.  

If someone gives us the modulus, 33, and the power, 3, we can undo the encryption by taking each number to the seventh power.

Now we decrypt the above message:

> We have $[31], [8], [9], [26], [20]$ as the **ciphertext** - the encrypted message.  
> We take each congruence class to the power of 7, to "undo the cubing": $[4], [2], [15], [5], [26]$.  
> If we lookup the values in our table, they correspond to the letters $C, A, N, D, Y$. This is the original message.  

This is the basic idea behind RSA (Rivest-Shamir-Adleman), a **public key cryptography algorithm**.

Alice wants to communicate with other people in a secure way. So she announces that the messages are encrypted using RSA.

Then, she:

1. Chooses 2 large primes $p, q$.
2. Computes $\phi(n)$ for $(p - 1)(q - 1)$.
3. Selects $e \in \mb{N}$, such that $\gcd(e, \phi(n)) = 1$ and $1 < e < \phi(n)$. This can be done by randomly choosing a number and testing, since it is likely that a random number will satisfy this property.
4. Finds a solution $d \in \mb{N}$ to $ed \equiv 1 \pmod{\phi(n)}, 1 < d < \phi(n)$.
5. Publishes $(e, n)$. $(e, n)$ is the **public encryption key**.
6. Keeps $d$ secret. $(d, n)$ is the **private decryption key**.

The public encrypts messages by using $x \longmapsto x^e \pmod{n}$.

Alice can decrypt messages using $x \longmapsto x^d \pmod{n}$ (taking each $x$ to the power $d$).

### Security

Alice's public key $(e, n)$ is known to everyone, including the malicious attacker Bob.

Suppose Bob intercepts a message intended for Alice. To read it, he needs $(d, n)$.

Bob knows $n, e$. To find $d$, he must solve $ed \equiv 1 \pmod{\phi(n)}$.

To solve this, Bob needs to know $\phi(n)$, and so needs to find $p, q$.

If $n$ is large enough, around 1024 binary digits, $p, q$ are impractical to find using today's technology.

Therefore, it is impractical to decrypt the message without already knowing $d$.

# 6/11/13

;wip: download the lecture slides

;wip: proof that \sqrt{2} is irrational

### Prime Factorization (PF)

A very famous theorem with a very famous proof.

Proposition: every integer $n > 1$ can be expressed as a product of primes.

Note that a product can have just one factor - when $n$ is prime.

Proof:

> Proof by contradiction.  
> Suppose there exists an integer $n > 1$ that cannot be written as a product of primes.  
> Let $N$ be the smallest integer that cannot be written as a product of primes.  
> So $N$ cannot be prime, or else it would be writable as a product with one factor, a prime.  
> So $N$ has a positive divisor $1 < r < N$, and $r \mid N$.  
> So $\exists s \in \mb{Z}, N = rs$. Since $r > 1$, $s < N$.  
> Clearly, $r$ and $s$ can be written as a product of primes, since $r < N \wedge s < N$, which is the smallest.  
> So $N$ can be written as a product of primes, which is impossible.  
> So all integers $n > 1$ can be written as a product of primes.  

### Infinitely Many Primes (INF P)

Proposition: the number of primes is infinite.

Proof:

> This proposition is Euclid book 9, proposition 20.  
> Proof by contradiction.  
> Suppose the number of primes is finite.  
> Therefore we can list them as $p_1, \ldots, p_n$, the complete list of all primes.  
> Construct $N = (p_1 \cdot \ldots \cdot p_n) + 1$.  
> Clearly, $N > 1$, so $N$ can be expressed as a product of primes.  
> So $N$ has at least one prime factor $p_i$ from the complete list above.  
> So $p_i \mid p_1 \cdot \ldots \cdot p_n$ (since $p_i$ is a factor), and $p_i \mid (p_1 \cdot \ldots \cdot p_n) + 1$ (since $p_i \mid N$).  
> By DIC, $p_i \mid (p_1 \cdot \ldots \cdot p_n) + 1 - p_i \mid p_1 \cdot \ldots \cdot p_n$.  
> So $p_i \mid 1$, which is impossible by BBD since $p_i > 1$.  
> So the number of primes is infinite.  

### Unique Factorization Theorem (UFT)

Proposition: no integer $n > 1$ can be expressed as a product of primes in more than one way, apart from rearrangements of the factors.

In other words, the **prime factorization of a number is unique**.

Proof:

> This claim is Euclid book 9, proposition 14.  
> We claim that given prime numbers, $p, q_1, \ldots, q_l$, if $p \mid q_1 \cdot \ldots \cdot q_l$, then $\exists 1 \le j \le l, p = q_j$.  
> Proof by contradiction.  
> Clearly, $p \ne q_j \implies p \nmid q_j$, since both numbers are prime.  
> Suppose $p \mid q_1 \cdot \ldots \cdot q_l$ and $\forall 1 \le j \le l, p \nmid q_j$.  
> If $p \nmid q_1$, then $p \mid q_2 \cdot \ldots \cdot q_l$, by PAD.  
> Repeating this, we get $p \mid q_l$, which is impossible.  
> So $\forall 1 \le j \le l, p \ne q_j$ is impossible.  
> So $\exists 1 \le j \le l, p = q_j$, and the claim is true.  

> Proof by contradiction.  
> Let $n$ be an arbitrary integer such that $n > 1$.  
> Suppose $n$ can be expressed in **two ways** as a product of primes: $n = p_1 \cdot \ldots \cdot p_l = q_1 \cdot \ldots \cdot q_l$.  
> We know from the claim that since $p_1 \mid p_1 \cdot \ldots \cdot p_l$, $p \mid q_1 \cdot \ldots \cdot q_l$.  
> Cancelling $p_1$, $p_1 \cdot \ldots \cdot p_l = q_1 \cdot \ldots \cdot q_l$ becomes $p_2 \cdot \ldots \cdot p_l = q_1 \cdot \ldots \cdot q_{j - 1} \cdot q_{j + 1} \cdot \ldots \cdot q_l$.  
> If we repeat this argument, we get $p_2 = k$ for some $k \ne j$.  
> Every $p$ is matched with some $q$, so the first list is a rearrangement of the second.  
> So the product of primes is unique.  

If we put together the PF and UFT, we get the **fundemental theorem of arithmetic**:

> Every integer $n > 1$ can be expressed as a product of primes in **exactly one way**, apart from the re-ordering of factors.  
> This unique product is called the **prime factorization**.  

;wip: CHIP is in MC 1052

# 8/11/13

;wip: assignment 8 question 5, addition required: $p > q$

Prime factorization for 180: $2 \cdot 2 \cdot 3 \cdot 3 \cdot 5 = 2^2 \cdot 3^2 \cdot 5$

When we write $n = p_1^{a_1} \cdot p_2^{a_2} \cdot \ldots \cdot p_k^{a_k}$, we generally assume that $p_n$ is distinct from all the others and $a_n > 0$.

### Divisors from prime factorization (DFPF)

Given $n \in \mb{Z}$ whose prime factorization is $p_1^{a_1} \cdot p_2^{a_2} \cdot \ldots \cdot p_k^{a_k}$, and $d \in \mb{Z}$, then $d \mid n \iff \exists 0 \le b_i \le a_i, 1 \le i \le k, d = p_1^{b_1} \cdot p_2^{b_2} \cdot \ldots \cdot p_k^{b_k}$

In other words, every combination of exponents of the prime factorization of a number such that the exponents are between 0 and the exponent in the number is a positive divisor of the number.

Consider the positive divisors of 36. Clearly, $36 = 2^2 \cdot 3^3$ ;wip: show the combinations of the exponents being divisors

Proof:

> First we will prove $\exists 0 \le b_i \le a_i, 1 \le i \le k, d = p_1^{b_1} \cdot p_2^{b_2} \cdot \ldots \cdot p_k^{b_k} \implies d \mid n$.  
> Assume $d = p_1^{b_1} \cdot p_2^{b_2} \cdot \ldots \cdot p_k^{b_k}$.  
> Construct $e = p_1^{a_1 - b_1} \cdot p_2^{a_2 - b_2} \cdot \ldots \cdot p_k^{a_k - b_k}$.  
> Clearly, $de = n$. So $d \mid n$.  
> Now we will prove the converse.  
> If $d = 1$, then obviously $\forall 1 \le i \le k, b_i = 0$.  
> Otherwise, $d$ has some prime factorization, by PF.  
> Let $q$ be a prime factor of $d$.  
> Clearly, $q \mid n$, by TD.  
> By Euclid proposition 14, $q = p_i$ for some $1 \le i \le k$.  
> So each prime factor of $d$ must also be a prime factor of $n$.  
> So $d = p_1^{b_1} \cdot p_2^{b_2} \cdot \ldots \cdot p_k^{b_k}$.  
> We now want to prove that each $0 \le b_i \le a_i$.  
> We will show it for the first factor, $p_1^{b_1}$. The rest can be proven in a similar way.  
> $d \mid n$ means $\exists e \in \mb{Z}, n = de$.  
> So $p_1^{a_1} \cdot p_2^{a_2} \cdot \ldots \cdot p_k^{a_k} = e \cdot p_1^{b_1} \cdot p_2^{b_2} \cdot \ldots \cdot p_k^{b_k}$.  
> Proof by contradiction.  
> Suppose $a_1 < b_1$.  
> So we can divide both sides by $p_1^{a_1}$.  
> Now we have $p_2^{a_2} \cdot \ldots \cdot p_k^{a_k} = e \cdot p_1^{a_1 - b_1} \cdot p_2^{b_2} \cdot \ldots \cdot p_k^{b_k}.  
> Note that $p_1$ divides the right hand side since $b_1 - a_1 \ge 1$. However, $p_1$ does not divide the left side, by the contrapositive of Euclid proposition 14.  
> But this is a contradiction, since we can't have two things that are equal where a number divides one but not another.  
> So it must be that $a_1 \ge b_1$.  

Determine the number of positive divisors of $n = p_1^2 \cdot p_2 \cdot p_3^5$:

> We want to count the number of expressions of the form $p_1^a \cdot p_2^b \cdot p_3^c, 0 \le a \le 2, 0 \le b \le 1, 0 \le c \le 5$.  
> So the number of positive divisors are $3 \cdot 2 \cdot 6 = 36$

Find $\gcd(x, y)$ if $x = p_1^2 \cdot p_2 \cdot p_3^5$ and $y = p_2^4 \cdot p_3^2 \cdot p_4^2$:

> All divisors are listed in the factorization.  
> The positive divisors of $x$ are $p_1^a \cdot p_2^b \cdot p_3^c \cdot p_4^d, 0 \le a \le 2, 0 \le b \le 1, 0 \le c \le 5, 0 \le d \le 0$.  
> The positive divisors of $y$ are $p_1^a \cdot p_2^b \cdot p_3^c \cdot p_4^d, 0 \le a \le 0, 0 \le b \le 4, 0 \le c \le 2, 0 \le d \le 2$.  
> So $0 \le a \le 2 \wedge 0 \le a \le 0 \implies a = 0$, $0 \le b \le 1 \wedge 0 \le b \le 4 \implies 0 \le b \le 1$, $0 \le c \le 5 \wedge 0 \le c \le 2 \implies 0 \le c \le 2$, $0 \le d \le 0 \wedge 0 \le d \le 2 \implies d = 0$.  
> So the greatest common divisor and $\gcd(x, y)$ is $p_1^0 \cdot p_2^1 \cdot p_3^2 \cdot p_4^0$, or $p_2 \cdot p_3^2$.  

### GCD from prime factorization (GCD PF)

Suppose $a, b > 1$ with the prime factorizations $a = p_1^{a_1} \cdot p_2^{a_2} \cdot \ldots \cdot p_k^{a_k}$, $b = p_1^{b_1} \cdot p_2^{b_2} \cdot \ldots \cdot p_k^{b_k}$, where some of the exponents may be 0 (so the sets of prime factors are the same), then $\gcd(a, b) = p_1^{d_1} \cdot p_2^{d_2} \cdot \ldots \cdot p_k^{d_k}$, where $d_i = \min(a_i, b_i), 1 \le i \le k$.

In other words, the GCD of two prime factorizations is the greatest common factor of the two expressions.

Proof is not required. ;wip: yes it is

GCD PF is a lot easier for very small numbers, because we can easily find the prime factorization. However, it is difficult and impractical for larger numbers because prime factorization is hard.

;wip: read chapters 26, 28, 29

# 11/11/13

We move away from number theory into complex numbers.

;wip: read chapters 35-38

Complex Numbers
---------------

$$\mb{N} \subset \mb{Z} \subset \mb{Q} \subset \mb{R}$$

$x + 2 = 0$ has no solution in $\mb{N}$, but it does in $\mb{Z}$. Many of these larger number systems were invented in order to solve equations that couldn't be solved before.

Likewise, $3x + 3 = 0$, $x^2 - 2 = 0$, and $x^2 + 2 = 0$ has no solutions in $\mb{Z}, \mb{Q}, \mb{R}$, respectively.

In the last one, however, there is a solution in **complex numbers**.

A **complex number** in **standard form** is any expression of the form $x + yi, x, y \in \mb{Z}$. The set of complex numbers is $\mb{C} = \set{x + yi \middle| x, y \in \mb{R}}$.

The $+$ is required for standard form; it must be retained in order to be standard form.

Examples:

* $2.7 + 3.2i$
* $-2 + (-3)i$ (plus sign is needed in standard form)
* $8 + 0i$

Every real number is a complex number of the form $x + 0i, x \in \mb{Z}$

We generally denote complex variables with $w$ and $z$ rather than $x$ and $y$. If $z = a + bi$, $\mathfrak{R}(z) = a$ (the real component), $\mathfrak{I}(z) = b$ (the imaginary component). Both of these are simply real numbers.

### Sum/Difference

Let $w = a + bi$ and $z = c + di$.

$w$ and $z$ are **equal** if and only if $a = c \wedge b = d$. In other words, their real and imaginary parts are equal.

**Addition** is defined as $w + z = (a + c) + (b + d)i$. In other words, we simply add the components.

Likewise, **subtraction** is defined as $w - z = (a - c) + (b - d)i$. In other words, we simply subtract the components.

### Multiplication

**Multiplication** is defined as $wz = (ac - bd) + (ad + bc)i$.

This is derived from the formula for multiplying a polynomial of the form $(a + bx)(c + dx) = ac + (ad + bc)x + bdx^2$.

### Inverse

How do we find the inverse of a complex number?

> Let $z = a + bi$ and $z \ne 0$.  
> The inverse is $\frac{1}{a + bi} = \frac{1}{a + bi} \cdot \frac{a - bi}{a - bi} = \frac{a - bi}{a^2 + b^2}$.  
> We can write this in standard form: $z^{-1} = \frac{a}{a^2 + b^2} + \frac{-b}{a^2 + b^2}i$.  

In this way, we find that $\frac{1}{i} = -i$.

### Conjugate/Modulus

Let $z = a + bi$.

$z$ has the **conjugate** $\overline{z} = a - bi$. For example, $\overline{3 + 2i} = 3 - 2i$.

The conjugate of a number simply has the opposite sign for the imaginary part.

Note that the conjugate of any real number is the same number.

$z$ has the **modulus** $\abs{z} = \sqrt{a^2 + b^2}$. For example, $\abs{3 - 2i} = \sqrt{9 + 4} = \sqrt{13}$.

Note that the modulus of any real number is the absolute value - $\sqrt{x^2}$. This is why we use the absolute value notation.

So $z^{-1} = \frac{\overline{z}}{\abs{z}^2}$.

### Operations

Notice that operations on complex numbers work like linear polynomials.

Proposition: for all $u, v, z \in \mb{Z}$:

* $(u + v) + z = u + (v + z)$
* $u + v = v + u$
* $z + 0 = z$
* If $z = a + bi$, $-z = (-a) + (-b)i$
* $uv = vu$
* $1z = z$ ($1 = 1 + 0i$)
* $z(u + v) = zu + zv$

### i

What is $i^2$, according to the multiplication formula?

$ii = (0 + 1i)(0 + 1i) = 0 \cdot (0 - 1 \cdot 1) + (0 \cdot 1 + 1 \cdot 0) = -1 + 0i = -1$

So $i^2 = -1$, and $i$ is the square root of -1. Sometimes, people write $\sqrt{-1}$. However, $\sqrt{\ldots}$ should only formally be written for non-negative real numbers.

# 13/11/13

### Properties of Conjugates (PCJ)

Proposition: for all $z, w, \in \mb{C}$:

* $\overline{z + w} = \overline{z} + \overline{w}$
* $\overline{z \cdot w} = \overline{z} \cdot \overline{w}$
* $\overline{\overline{z}} = z$
* $z + \overline{z} = 2 \mathfrak{R}(z)$
* $z - \overline{z} = 2 i \mathfrak{I}(z)$

These are trivially proved by using the definitions.

Interestingly, $\overline{z} - z = z - \overline{z}$.

### Properties of Modulus (PM)

Proposition: for all $z, w \in \mb{C}$:

* $\abs{z} = 0 \iff z = 0$
* $\abs{z} = \abs{\overline{z}}$
* $z \overline{z} = \abs{z}^2$
* $\abs{zw} = \abs{z} \abs{w}$
* $\abs{z + w} \le \abs{z} + \abs{w}$ - triangle inequality

Proof of first:

> Assume $z = 0$. So $\abs{z} = 0$.  
> Assume $\abs{z} = 0$. So $0^2 = \mathfrak{R}(z)^2 + \mathfrak{I}(z)^2$.  
> Clearly, $\mathfrak{R}(z)^2 \ge 0, \mathfrak{I}(z)^2 \ge 0$. So $\mathfrak{R}(z) = 0, \mathfrak{I}(z) = 0$.  

Proof of fourth:

> Clearly, $\abs{z}, \abs{w}, \abs{zw}$ are non-negative real numbers.  
> So we can just prove $\abs{zw}^2 = \abs{z}^2 \abs{w}^2$.  
> Let $z = a + bi, w = c + di$. So $\abs{zw}^2 = (ac - bd)^2 + (ad + bc)^2 = (a^2 + b^2)(c^2 + d^2) = \abs{z}^2 \abs{w}^2$.  

The rest is either trivial to prove or I'm too tired to.

### The Complex Plane

We can picture a complex number $z = x + yi$ as a point $(x, y)$ in a 2D plane.

In this representation, we call the x-axis the "real axis" and the y-axis the "imaginary axis".

$(x, y)$ are the **Cartesian coordinates** of $z$.

Points on a plane can also be described by polar coordinates. Here, $r = \abs{z}$ and $\theta = \arccos \left(\frac{x}{r}\right)$, making sure to keep the quandrant in mind.

In polar coordinates, $x = r \cos \theta, y = r \sin \theta$

Geometrically speaking, the modulus of $z$ is the length of the hypotenuse of the triangle formed with the point and the origin.

The **polar form** of $z$ is $z = (r \cos \theta) + (r \sin \theta)i = r(\cos \theta + i \sin \theta)$. The **polar coordinates** of $z$ are $(r, \theta)$.

The **argument** of $z$ is $\theta$.

For example, $z = 1 + i = \sqrt{2} \left(\cos \frac{\pi}{4} + i \sin \frac{\pi}{4}\right)$