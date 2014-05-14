STAT230
=======

Probability.

    Instructor: Dina Dawoud
    Office Hours: Monday, Wednesday 2:30PM-3:20PM in M3 3126

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

There are two tests and five online quizzes on MapleTA

;wip: there is a test date conflict, email the riley guy mentioned on the course outline

;wip: look at the schedule and put it on the calendar

Probability is a tool used to model uncertainty and variability, like size, weight, and height. It allows us to work with uncertainty, though it cannot eliminate it.

Definition
----------

We first specify the **outcome/event** that we are interested in that might occur in a particular setting. This setting is the **experiment/process**.

For example, rolling a 2 on a 6-sided die has an outcoem of 2 and rolling the die is the experiment.

The **sample space** is the set of all possible outcomes. For example, the die has a sample set of $S = \set{1, 2, 3, 4, 5, 6}$. We usually represent the sample space as $S$.

The **classical definition** of the probability of an event is the ratio of the number of ways the event can occur to the total number of outcomes in $S$.

However, this only works if all outcomes are equally likely to occur. In practice, this is not always the case.

The **relative frequency definition** of the probability of an event is the fraction of times when the event occurs when we repeat the experiment a large number of times.

For example, if we toss a coin a large number of times, the fraction approaches 50%. However, we cannot always repeat the experiment due to time and other constraints. Additionally, we have to keep the setting exactly the same.

We generally mean that we repeat the experiment an infinite number of times. In practice, we often settle for a lot less.

The **subjective definition** of the probability of an event is the confidence of the person making the statement that the event will occur. Often, this is based on the person's experiences.

### Probability model

1. Identify the experiment and the events of interest.
2. Define the sample space $S$ of the random experiment.
3. Define the subset of the sample space to which we can assign probabilities.
4. Assign the probabilities to events somehow.

A **discrete sample space** is one where there is a finite number of simple events.

A **simple event** is an event that is made up of only one outcome, synonymous with outcome, like rolling a die and getting 2.

A **compound event** is an event made up of more than one outcome, like rolling a die and getting an even number (outcomes 2, 4, and 6 trigger the event).

Let $S = \set{a_1, \ldots, a_n}$. Let $P(a_i)$ be the probability of the outcome $a_i$ taking place. Then $0 \le P(a_i) \le 1$ and $\sum_{i = 1}^n P(a_i) = 1$.

The function $P(x)$ is the **probability distribution** on $S$.

For a die, $P(a_i) = \frac 1 6$.

When we write $P(a, b, c)$, we mean the probability of either $a$, $b$, or $c$ occurring.

The **odds** of an event $x$ occurring is $\frac{P(x)}{1 - P(x)}$. So odds of 3:1 is a 25% probability. To convert odds like $a$:$b$ to a probability, we simply do $P(x) = \frac b {a + b}$.

# 7/5/14

;wip: do the mapleta stuff on LEARN

If we toss a coin twice, what is the probability of getting exactly one heads?

> Clearly, $S = \set{(Tails, Tails), (Tails, Heads), (Heads, Tails}, (Heads, Heads)$. Let $A$ be the event of getting one heads.  
> Clearly, each outcome is equally likely, so occurs 25% of the time.  
> We care about two of the outcomes, $(Tails, Heads)$ and $(Heads, Tails)$.  
> So the probability of exactly one heads is $P(A) = \frac{Event Outcomes}{Total Outcomes} = \frac{2}{4} = \frac{1}{2}$.  
> Alternatively, if we were to use $S = \set{0 Heads, 1 Heads, 2 Heads}$, each outcome would no longer be equally likely - it would be a mistake to say the probability is $\frac{1}{3}$.  
> Essentially, we found the probability $P(A) = P((Tails, Heads)) + P(Heads, Tails)$.  

What is the probability that the sum of two dice rolls is 5?

> Clearly, there are $6 \times 6 = 36$ possible outcomes, all equally likely. Basically, $S = \set{(1, 1), \ldots, (6, 6)}$. Let $A$ represent the event of the sum being 5.  
> Clearly, the combinations resulting in a total of 5 are $(1, 4), (2, 3), (3, 2), (4, 1)$.  
> Since there are 4 outcomes, $P(A) = \frac{4}{36} = \frac{1}{9}$.  
> If two indistinguishable dice were used, then we could no longer tell which die was which. Since the pairs in $S$ are no longer ordered, we remove the duplicates to obtain 21 possibilities. However, they now do not all have the same probability of occurring - $(2, 2)$ is only half as likely as $(1, 2)$ since $(1, 2) = (2, 1)$ when the dice are indistinguishable.  

Counting Techniques
-------------------

When there are $n$ outcomes that are all equally likely, then the probability of each outcome is $\frac{1}{n}$.

If job A can be done in P ways and job B can be done in Q ways, then we can do either job A or job B in $P + Q$ ways. Here, "or" becomes addition. For example, the probabiity of getting heads or tails is $P(Heads) + P(Heads) = \frac 1 2 + \frac 1 2 = 1$

If job A can be done in P ways, and for each of those P ways, job B can be done in Q distinct ways, then we can do both job A and B in $p \times q$ ways. For example, $P((Heads, Heads)) = P(Heads) AND P(Heads) = \frac 1 2 \times \frac 1 2 = \frac{1}{4}$.

Sampling **with replacement** means that every time we select an object for sampling, we simply put it back into the population, so we could potentially sample it again.

This means that what we get on each selection will not affect subsequent selections. For example, a coin flip has both sides of the coin replaced after each sample, so there is always the same probability of getting heads or tails.

Sampling **without replacement** means that after selecting an object, we do not put it back. Therefore, an object can only be selected at most once.

This means that what we get on each selection will influence sebsequent selections and is influenced by previous selections. For example, sampling genders of students from a classroom without replacement results in a different probabilities of choosing a certain gender.

Sampling without replacement has a big effect on small samples, but for larger samples its effect becomes negligible.

Many problems have sample spaces that are a set of arrangements - permutations. $n^{(r)} = \frac{n!}{(n - r)!}$ means "$n$ to $r$ factors" and is the number of $r$-permutations - arrangements of length $r$ of the $n$ elements without duplicates. ;wip: nPr notation

For example, consider a set of 20 people's birthdays:

> Clearly, $S$ is a set containing 20 dates (each one of 365 days), so there are $365^{20}$ outcomes.  
> What is the probability of everyone having a different birthdays?
> Clearly, everyone has a different birthday if and only if the ordered birthdays are a 20-permutation of $[365]$. This is because the 20-permutations account for all possible sequence of $[365]$ where all the dates are unique.  
> Therefore, there are $365^{(20)}$ possible outcomes, and since they are all equally likely, the probability is $\frac{365^{(20)}}{365^{20}} \approxeq 59%$.  

# 9/5/14

;wip: do the mapleta quiz available on Wednesday, due on Wednesday

The factorial function grows extremely quickly and can be difficult to calculate for large numbers. Therefore, we have various approximations that help us do this more easily.

**Stirling's approximation** is $n! \approxeq n^n e^{-n} \sqrt{2 \pi n}$. This approximation is asymptotically equivalent to the factorial function - as $n \to \infty$, the percentage error gradually decreases. ;wip: memorize this

The **complement** of an event $A$ is the opposite event - the event of $A$ not **occurring**. It is represented using $\overline A$ or $A^C$. It is always true that an event occurs, or it does not occur, so $P(A) + P(\overline A) = 1$.  

A 4-digit PIN code is selected with replacement. What is the probability that the number is even? What is the probability that it contains at least one "1"?

> Clearly, the sample space is $S = \set{0000, \ldots, 9999}$, with 10000 possible outcomes.  
> Clearly, all possible outcomes are equally likely because the PIN codes are selected randomly.  
> Clearly, if the number is even, then the last digit must be in $\set{0, 2, 4, 6, 8}$.  
> Clearly, there are 5 possible last digits, and the other three digits can be any of the ten digits.  
> So there are $10 \times 10 \times 10 \times 5$ possible outcomes, or $5000$.  
> So the probability of an even number is $\frac{5000}{10000}$, or 50%.  
> To find the probability of containing at least one "1" digit, we consider the cases where there is one "1" digit, two, three, or four.  
> Alternatively, we can consider all the numbers that contain no "1" digits - the complement of the number containing at least one "1". This is a more efficient way of finding the answer.  
> Clearly, if there are no "1" digits, then every digit can be anything but "1", so there are 9 possibilities. There are therefore $9 \times 9 \times 9 \times 9 = 6561$ possible PIN codes without any "1" digits.  
> Clearly, the event of having no "1" digits is the complement of the event of interest, so $P(1 occurs) = 1 - P(1 does not occur)$. Since $P(1 does not occur) = \frac{6561}{10000}$, the probability of a "1" occurring is 34.39%.  

Now we derived the formula for $n \choose r$, read the MATH239 notes from yesterday to get the same material.

# 12/5/14

${n \choose r} = \frac{n!}{r!(n - r)!} = \frac{n^{(r)}}{r!}$.

Given an event $B$, $P(B) = 1 - P(\overline B)$.

Also, $n^{(k)} = n(n - 1)^{(k - 1)}$ for $k \ge 1$ and ${n \choose k} = {n \choose n - k}$.

The Binomial theorem states that $(1 + x)^n = \sum_{k = 0}^n {n \choose k}x^k$

What is the probability that a random arrangement of the letters in "STATISTICS" begins and ends with S?

> Clearly, the total number of arrangements is $10!$, since there are 10 letters.  
> Let $W$ be a permutation. Assume $W$ begins and ends with an S.  
> Then the remaining letters are "TATISTIC", and there are $8!$ possible permutations of these letters.  
> Therefore, there are $8!$ event outcomes and $10!$ total outcomes, so the probability is $\frac{8!}{10!} = \frac 1 {90}$.  

What are the unique anagrams of the letters of "STATISTICS"?

> Clearly, there are 3 S's, 3 T's, 1 A, 2 I's, and 1 C, with 10 letters total. Then there are $10!$ possible permutations.  
> Clearly, for each permutation, the S, T, and I letters can be swapped around without changing the anagram - it doesn't matter which S is first or second.  
> So there are $3!$ permutations representing the same anagram due to S, and for each of these a factor of $3!$ more due to T, and for each of these a factor of $2!$ more due to I.  
> So there are $3! 3! 2!$ duplicate permutations for each anagram, and therefore $\frac{10!}{3! 3! 2!}$ unique anagrams.  

If we have $n_i$ symbols of type $i$, with $n = n_1 + \ldots + n_k$, then the number of arrangements using $n$ symbols is ${n \choose n_1} \times {n - n_1 \choose n_2} \times {n - n_1 - n_2 \choose n_3} \times \ldots \times {n_k \choose n_k} = \frac{n!}{n_1! n_2! \cdots n_k!} = \frac{(n_1 + \ldots + n_k)!}{n_1! n_2! \cdots n_k!}$.

# 14/5/14

How many ways can the 4 aces in a deck of 52 cards all be adjacent?

> Assume the aces are all adjacent. Then we can consider the four aces as a single large unit.  
> Clearly, there are $4!$ ways to arrange these 4 aces within the unit.  
> Clearly, for each of these ways there are $48!$ ways to arrange the other 48 cards.  
> Clearly, there are 49 different places to insert the other cards.  
> So there are $49 \times 4! \times 48!$ ways the 4 aces can be adjacent.  

How many ways can one choose 13 cards from a deck and have two of them be aces?

> Clearly, there are $52 \choose 2$ ways to choose the two aces.  
> For each of these ways, there are $50 \choose 11$ ways to choose the other cards.  
> So there are ${52 \choose 2} {50 \choose 11}$ ways.  

What is the probability of choosing a 6-4-2-1 split between the suits from a deck of cards?

> Assume we have chosen 13 cards.  
> Clearly, there are $4!$ permutations of suits we can split between.  
> Clearly, there are $13 \choose 6$ ;wip: is this right? check the lecture slides
> Clearly, the probability is $\frac{4! {13 \choose 6} {13 \choose 4} {13 \choose 2} {13 \choose 1}}{52 \choose 13}$.  

The Multinomial Theorem says that $(a_1 + \ldots + a_k)^n = \sum_{x_1, \ldots, x_k} \frac{n!}{x_1! \cdots x_k!} a^{x_1} \cdots a^{x_k}$.

The Hypergeometric identity says that $\sum_{x = 0}^\infty {a \choose x} {b \choose n - x} = {a + b \choose n}$.

Probability Rules
-----------------

Events are simply sets of outcomes. We can use things like set notation and similar when working with events.

If an event $A$ consists of the outcomes $\set{a_1, \ldots, a_n}$, then $P(A) = P(a_1) + \ldots + P(a_n)$.

Also, $0 \le P(A) \le 1$. This can be proven by proving $P(S) = 1$ (probability of one of any of the possible outcomes occurring is 1), and that $P(A) \le P(S)$.

If $A$ and $B$ are events, and $A \subseteq B$, then $P(A) \le P(B)$. This can be proven by the 

### Venn Diagrams

Venn diagrams can be used to visually represent the events resulting from set operations on events.

These diagrams have a rectangle representing $S$, the sample space, and circles within the rectangle representing events. We can label the circles with names anywhere inside them. Sometimes, we also write some of the possible outcomes in the circles or rectangle.

We can have circles that overlap each other to represent them sharing outcomes. To represent the resulting event, we can shade in the area representing the set of the event's outcomes.

For example, a union of two events means we shade in both events (even if they intersect), and a conjunction would mean we only shade in the intersection of the two events. The complement of an event simply shades in everything in the rectangle that is not in the event.