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
\newcommand{\abs}[1]{\left| #1 \right|}
\newcommand{\mb}[1]{\mathbb{#1}}
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

Prove that $x^2 \ge 2x \Leftrightarrow x \le 0 \wedge x \ge 2$:

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

;wip: Read textbook ch. 1, 2, 4, except section 2.4, 5, 6, 7, 8, 13

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

If A and B are statements, then $A \Leftrightarrow B$ (`A` if and only if `B`) means "`A` is true only when `B` is true".

`T` represents true, `F` represents false.

If `A` is a statement, then $\neg A$ (not `A`) means "not `A`".

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

* $\mb{N}$ - natural numbers
* $\mb{Z}$ - integers
* $\mb{R}$ - real numbers
* $\mb{Q}$ - rational numbers
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

The **union** of $A$ and $B$ is $A \cup B$. This is the set of all elements belonging to either $A$ or $B$. This can be written as $x \in A \cup B \Leftrightarrow x \in A \vee x \in B$, and is sometimes defined as $A \cup B = \set{x \mid x \in A \vee x \in B}$.

The **intersection** of $A$ and $B$ is $A \cap B$. This is the set of all elements belonging to both A and B. This can be written as $x \in A \cap B \Leftrightarrow x \in A \wedge x \in B$, and is sometimes defined as $A \cap B = \set{x \in A \middle| x \in B}$.

The **difference** of $A$ and $B$ is $A - B$ or $A \setminus B$. This is the set of all elements belonging to $A$, but not to $B$. This can be written as $x \in A - B \Leftrightarrow x \in A \text{ and } x \notin B$, and is sometimes defined as $A - B = \set{x \in A \middle| x \notin B}$.

The **complement** of a set $A$ is $\overline{A}$. This is the set of all elements in the **universe of dicourse** that are not in $A$.

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

Technique 2: Prove that $\forall x, x \in A \Leftrightarrow x \in B$:

> Let $x$ be an arbitrary object.  
> ;wip

Prove that for any sets $R$, $S$, $T$, $R \cap (S \cup T) = (R \cap S) \cup (R \cap T)$.

> Let $x$ be an arbitrary object.  
> We know that $x \in R \cap (S \cup T) \Leftrightarrow x \in R \wedge (x \in S \vee x \in T)$.  
> Recall that $P \wedge (Q \vee R \equiv (P \wedge Q) \vee (P \wedge R)$.  
>Clearly, $x \in R \wedge (x \in S \vee x \in T) \Leftrightarrow (x \in R \wedge x \in S) \vee (x \in R \wedge x \in T)$.  

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

General rules:

* $\neg (\forall x \in S, P) = \exists x \in S, \neg P$
* $\neg (\exists x \in S, P) = \forall x \in S, \neg P$
* ;wip

;wip: Figure out $\neg (P \Leftrightarrow Q)$. It's XOR, I think

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

The **converse** of an implication $P \implies Q$ is $Q \implies P$. This is very different from the original implication. When we prove a statement and its converse, we have proved that $P \Leftrightarrow Q$.

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
> ;wip

The **inverse** of an implication $P \implies Q$ is $\neg P \implies \neg Q$. Like the converse, this is also very different from the original implication.

Another technique for proving is **proof by contradiction**:

1. Assume the hypothesis is true.
2. Suppose the conclusion is false.
2. Derive a contradiction, such as $1 = 0$.
3. Since the implication cannot be false and result in a contradiction, it is true.

To prove $A \Leftrightarrow B$, we can prove $A \implies B$ and $B \implies A$.

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

$m \mid n \Leftrightarrow \exists k \in \mb{Z}, n = km$

Proposition: transitivity of divisibility: for integers $a$, $b$, $c$, if $a \mid b$ and $b \mid c$, then $a \mid c$.

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
> So $d = \gcd(a, b)$
> ;wip: the combination is -3 and 10

This theorem does not tell us how to find $x$ and $y$, or if they even exist.

Proof:

> Let $a$, $b$, $d$ be arbitrary integers.  
> Let $x$, $y$ be arbitrary integers.  
> Let $d \in \mb{Z}, d > 0, d \mid a \wedge d \mid b, d = ax + by$.  
> Let $c \in \mb{Z}$ be an arbitrary common divisor of $a$ and $b$.  
> Then $c \mid (ax + by)$, by DIC.  
> So $c \mid d$.  
> Since $d \ne 0$, $\abs{c} \le \abs{d}$, and $c \le d$, by BBD.  
> So $d = \gcd(a, b)$.  

### Extended Euclidean Algorithm (EEA)

Proposition: given integers $a$ and $b$, we can compute $\gcd(a, b)$, and we can find at least two integers $x$ and $y$ such that $ax + by = \gcd(a, b)$.

Proof:

> ;wip

There are often multiple possible values of $x$ and $y$ that can result in a linear combination.

EEA Table: technique for finding $\gcd(a, b)$ and integers $x$ and $y$ such that $ax + by = \gcd(a, b)$ all at the same time.

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
q_n &= \left\lfloor \frac{r_{n - 2}}{r_{n - 1}} \right\rfloor \\
r_n &= r_{n - 2} - q_n \cdot r_{n - 1} \\
x_n &= x_{n - 2} - q_n \cdot x_{n - 1} \\
y_n &= x_{n - 2} - q_n \cdot y_{n - 1} \\
\end{align}
$$

We stop when r_n = 0. The value of $r$ in the row before this is the GCD.

Note that $ax_n + by_n = r_n$. So the last nonzero remainder has corresponding $x$ and $y$ values that are coefficients for a linear combination of $a$ and $b$ equal to it. In other words, the $x$ and $y$ values in that row are a certificate of correctness for the GCD.

For example, finding $\gcd(42042, 1071)$:

| x | y | r     | q |
|:--|:--|:------|:--|
| 1 | 0 | 42042 | 0 |
| 0 | 1 | 1071  | 0 |
|---|---|-------|---|
| 0 | 1 | 1071  | 0 |
;wip

$$
\begin{align}
q_3 &= \floor{\frac{42042}{1071}} = 39
42042 &= 1071 q_3 + r_3 \text{ } \\
r_3 &= r_1 - r_2 \cdot q_3 = 42042 - 15 q_3 \\
x_3 &= x_1 - 1 \cdot x_2 \\
y_3 &= y_1 - 1 \cdot y_2 \\
\end{align}
$$

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
273 = 1 \cdot 252 + 21 \\
\gcd(273, 252) &= \gcd(252, 21) \\
252 = 12 \cdot 21 + 0 \\
\gcd(252, 21) &= \gcd(21, 0) \\
&= 21 \\
\end{align}
$$

Using these equations, we can find the linear combination:

> Write it as the linear combination of the previous values: $21 = 273 - 1 \cdot 252$.  
> Rewrite term: $21 = 273 - 1 \cdot (1071 - 3 \cdot 273)$.  
> Expand and simplify: $21 = 4 \cdot 273 - 1071$.  
> Rewrite term: $21 = 4 cdot (42042 - 39 \cdot 1071) - 1071$.  
> Expand and simplify: $4 \cdot 42042 - 157 \cdot 1071$.  
> Clearly, $x = 4, y = -157$.  

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

Two integers $a$ and $b$ are **coprime** if $\gcd(a, b)$ - if they have no common factors other than 1 and -1.

For example, 4 and 9 are coprime.

# 11/10/13

### Coprimeness and Divisibility (CAD)

Proposition: for any integers $a, b, d$, if $d \mid ab$ and $\gcd(d, a) = 1$, then $a \mid b$.

Proof:

> Let $a, b, d$ be arbitrary integers.  
> Assume d \mid ab$ and $\gcd(d, a) = 1$.  
> We want to prove $d \mid b$.  
> By EEA, there exist integers $x, y$ such that $dx + ay = 1$.  
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

Linear Diophantine Equations
----------------------------

A linear equation in the style of Diophantus, a Greek mathemetician who invented a theory of the integers.

They are equations having **integer solutions only**.