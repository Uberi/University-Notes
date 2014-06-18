STAT230
=======

Probability.

    Section 001
    Instructor: Dina Dawoud
    Office Hours: Monday, Wednesday 2:30PM-3:20PM in M3 3126

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

There are two tests and five online quizzes on MapleTA

;wip: look at the schedule and put it on the calendar

Probability is a tool used to model uncertainty and variability, like size, weight, and height. It allows us to work with uncertainty, though it cannot eliminate it.

Definition
----------

We first specify the **outcome/event** that we are interested in that might occur in a particular setting. This setting is the **experiment/process**.

For example, rolling a 2 on a 6-sided die has an outcome of 2 and rolling the die is the experiment.

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

Many problems have sample spaces that are a set of arrangements - permutations. $n^{(r)} = \frac{n!}{(n - r)!}$ means "$n$ to $r$ factors" and is the number of $r$-permutations - arrangements of length $r$ of the $n$ elements without duplicates. This is often also represented as $n^{(r)} = {}_n\operatorname{P}_r$.

For example, consider a set of 20 people's birthdays:

> Clearly, $S$ is a set containing 20 dates (each one of 365 days), so there are $365^{20}$ outcomes.  
> What is the probability of everyone having a different birthdays?
> Clearly, everyone has a different birthday if and only if the ordered birthdays are a 20-permutation of $[365]$. This is because the 20-permutations account for all possible sequence of $[365]$ where all the dates are unique.  
> Therefore, there are $365^{(20)}$ possible outcomes, and since they are all equally likely, the probability is $\frac{365^{(20)}}{365^{20}} \approxeq 0.59$.  

# 9/5/14

The factorial function grows extremely quickly and can be difficult to calculate for large numbers. Therefore, we have various approximations that help us do this more easily.

**Stirling's approximation** is $n! \approxeq n^n e^{-n} \sqrt{2 \pi n}$ or $n! \approxeq \left(\frac n e\right)^n\sqrt{2 \pi n}$. This approximation is asymptotically equivalent to the factorial function - as $n \to \infty$, the percentage error gradually decreases.

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
> Clearly, there are 49 different places to insert the aces into the other cards.  
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

If $A$ and $B$ are events, and $A \subseteq B$, then $P(A) \le P(B)$. This can be proven by the comparing the sum of the probabilities of the outcomes.

### Venn Diagrams

Venn diagrams can be used to visually represent the events resulting from set operations on events.

These diagrams have a rectangle representing $S$, the sample space, and circles within the rectangle representing events. We can label the circles with names anywhere inside them. Sometimes, we also write some of the possible outcomes in the circles or rectangle.

We can have circles that overlap each other to represent them sharing outcomes. To represent the resulting event, we can shade in the area representing the set of the event's outcomes.

For example, a union of two events $A$ and $B$ (represented as $A \cup B$) means we shade in both events (even if they intersect), and a conjunction of two events $A$ and $B$ (represented $A \cap B$ or $AB$) would mean we only shade in the intersection of the two events. The complement of an event $A$ (represented $\overline A$) simply shades in everything in the rectangle that is not in the event.

# 16/5/14

;wip: buy the stats textbook

De Morgan's Laws:

1. $\overline{A \cup B} = \overline A \cap \overline B$
2. $\overline{A \cap B} = \overline A \cup \overline B$

This can be proved by proving the left set is a subset of the right set, and the right set is a subset of the left set.

Basically, we can "break the bar" and "flip the operator" when we have a negation of a disjunction or conjunction.

The probability of a union is the sum of the probabilities of either event, minus the probability that they both occur: $P(A \cup B) = P(A) + P(B) - P(A \cap B)$. The last term is because when we add $P(A)$ and $P(B)$, we added $P(A \cap B)$ twice, so we subtract it once to get the correct amount. This becomes clear if we draw a Venn diagram of the equation.

The probability of a union of more events is $P(A \cup B \cup C) = P(A) + P(B) + P(C) - P(A \cap B) - P(A \cap C) - P(B \cap C) + P(A \cap B \cap C)$. The reason for the negative terms is because the conjunctions are being added twice, so we subtract them once to get the correct amount.

$P(A_1 \cup \ldots \cup A_n) = \sum_{i = 1}^n P(A_i) - \sum_{i < j} P(A_i A_j) + \sum_{i < j < k} P(A_i A_j A_k) -$ ;wip: get it from the slides or online

Events $A_1, \ldots, A_n$ are **mutually exclusive** if $\forall 1 \le i \le n, 1 \le j \le n, i \ne j \implies A_i \cap A_j = \emptyset$, so $P(A_i \cap A_j) = \emptyset$. They are basically events that can never happen together. Two events $A$ and $B$ are mutually exclusive if $P(A \cap B) = 0$ or $A \cap B = \emptyset$.

The equation $P(A) = 1 - P(\overline A)$ comes from the idea of mutual exclusivity:

> Clearly, $S = A \cup \overline A$, and $P(S) = 1$.  
> So $1 = P(S) = P(A \cup \overline A) = P(A) + P(\overline A) - P(A \cap \overline A) = P(A) + P(\overline A)$.  

# 21/5/14

When our event consists of the majority of the outcomes in the sample space, it is often easier to calculate using the complement - it is generally easier to consider fewer outcomes.

For example, if we wanted to find the probability that at least one of two dice rolls is a 6, there are multiple outcomes - the first is 6, the second is 6, or both. If we use the complement, we can simply find the probability that none of the rolls are 1, which is a simpler calculation.

Two events are **independent** if and only if $P(A \cap B) = P(A) P(B)$, and dependent otherwise. If two events are dependent, then they have some sort of relationship or association.

$n$ events are **pairwise independent** if and only if for any $1 \le i \le n, 1 \le j \le n, i \ne j$, $P(A_i \cap A_j) = P(A_i) P(A_j)$. This means that the events in every possible pair of events is independent to each other.

$n$ events are **mutually independent** if and only if $P(A_1 \cap \ldots \cap A_n) = P(A_1) \cdots P(A_n)$. This means that every event is independent of every possible intersection of all other events. Mutual independence implies pairwise independence, but not the other way around.

For example, separate dice rolls are independent, because they are unrelated to one another. Independence means that whether $A$ happens or not has no effect on whether $B$ happens, and vice versa.

If $A$ and $B$ are independent, then $A$ and $\overline B$, $\overline A$ and $B$, and $\overline A$ and $\overline B$ are all independent.

Proof:

> Clearly, $P(B) = P(AB) + P(\overline A B)$. Since $A$ and $B$ are independent, $P(AB) = P(A)P(B)$ and $P(B) = P(A)P(B) + P(\overline A B)$.  
> So $P(B) - P(A)P(B) = P(\overline A B) = P(B)(1 - P(A)) = P(B)P(\overline A)$, and $P(\overline A B) = P(\overline A) P(B)$, so $\overline A$ and $B$ are independent.

Given a large set of elements $S$ with properties $W$ and $F$ such that $P(F) = 0.15, P(W) = 0.45$, and that if $W$, then $P(F) = 0.2$, what is the probability of, in 10 randomly selected elements, at least 1 being $W$ and 1 being $F$?

> Let $T$ be a set of 10 randomly selected elements.  
> Since $S$ is large and $T$ is small, we can pretend we are selecting with replacement even though it is without replacement. This is because the probabilities would not hold if we did not do replacement.  
> Let $W_i$ or $F_i$ represent the $i$th element of $T$ being $W$ or $F$, respectively.  
> Let $W_a = W_1 \cup \ldots \cup W_{10}$, $F_a = F_1 \cup \ldots \cup F_{10}$.  
> Clearly, the probability is $P(W_a \cap F_a) = 1 - P(\overline{W_a \cap F_a}) = 1 - P(\overline{W_a} \cup \overline{F_a}) = 1 - P(\overline{W_a}) - P(\overline{F_a}) + P(\overline{W_a} \cap \overline{F_a})$.  
> Clearly, $P(\overline{W_a}) = P(\overline{W_1}) \cdots P(\overline{W_{10}}) = (1 - 0.45)^{10} = 0.55^{10}$.  
> Clearly, $P(\overline{F_a}) = P(\overline{F_1}) \cdots P(\overline{F_{10}}) = (1 - 0.15)^{10} = 0.85^{10}$.  
> We want to find $P(\overline{F_a})$ given that $\overline{W_a}$. This will allow us to find $P(\overline{W_a} \cap \overline{F_a})$.  
> Clearly, $P(W_i) = 0.45 = P(W_i \cap \overline{F_i}}) + P(W_i \cap F_i) = P(W_i \cap \overline{F_i}) + 0.09$, since $P(F_i \cap W_i)$ means we assume that $W_i$ and $P(F_i)$ then becomes 0.2.  
> So $P(W_i \cap \overline{F_i}) = 0.36$.  
> Clearly, $P(\overline{F_i}) = 1 - 0.15 = P(\overline{F_i} \cap W_i) + P(\overline{F_i} \cap \overline{W_i}) = 0.36 + P(\overline{F_i} \cap \overline{W_i})$.  
> So $P(\overline{F_i} \cap \overline{W_i}) = 0.49$ and $P(\overline{W_a} \cap \overline{F_a}) = 0.49^{10}$.  
> So $P(W_a \cap F_a) = 1 - 0.55^{10} - 0.85^{10} + 0.49^{10} \approxeq 0.801390566701062$.  

This demonstrated the very useful identity $P(A) = P(A \cap B) + P(A \cap \overline B)$, where $A$ and $B$ are events.

# 23/5/14

The conditional probability of an event $A$ given event $B$ is denoted $P(A \mid B) = \frac{P(A \cap B)}{P(B)}$, assuming that $P(B) \ne 0$.

This is the probability that $A$ will take place, given that $B$ is already known to take place.

If $A$ and $B$ are independent, then $P(A \mid B) = \frac{P(A \cap B)}{P(B)} = \frac{P(A) P(B)}{P(B)} = P(A)$. In other words, for independent events it does not matter whether we know $B$ occurred or not; the probability is still the same.

If 5% of males are color blind and 0.25% of females are as well, what is the probability of a random color blind person selected from an equal number of males and females being male?

> Let $M$ represent being male and $F$ represent being female in the population. Clearly, $P(M) = P(F) = 0.5$. Let $C$ represent being color blind in the population.  
> Clearly, $P(C \mid M) = 0.05$, $P(C \mid F) = 0.0025$, and $F = \overline M$. We want to find $P(M \mid C)$, the probability that the person is male given color blindness.  
> Clearly, $P(M \mid C) = \frac{P(M \cap C)}{P(C)}$.  
> Clearly, $P(C \mid M) = \frac{P(M \cap C)}{P(M)}$, so $P(C \mid M) P(M) = P(M \cap C) = 0.05 \times 0.5 = 0.025$.  
> Clearly, $P(C) = P(C \cap \overline M) + P(C \cap M) = P(C \mid \overline M) P(\overline M) + P(C \mid M) P(M) = P(C \mid \overline M) P(\overline M) + P(C \mid M) P(M) = P(C \mid F) P(F) + P(C \mid M) P(M) = 0.0025 \times 0.5 + 0.05 \times 0.5 = 0.02625$.  
> So $P(M \mid C) = \frac{0.025}{0.02625} \approxeq 0.952380952380952$.  
> Note that $P(C)$ is the weighted average of all the possible conditional probabilities.  

### Multiplication Rule

The **multiplication rule** states that $P(A \cap B) = P(A) P(B \mid A)$. Extending this, $P(ABC) = P(A)P(B \mid A)P(C \mid (A \cap B))$ and $P(ABCD) = P(A) P(B \mid A) P(C \mid (A \cap B)) P(D \mid (A \cap B \cap C))$, and so on.

### Partition Rule

Disjoint events are those where $P(A \cap B) = 0$ and $A \cap B = \emptyset$. They are just mutually exclusive events.

The **partition rule** states that if $A_1 \cup \ldots \cup A_k = S$ where $A_1, \ldots, A_k$ are disjoint sets (mutually exclusive), and $B$ is an event in $S$, then $P(B) = P(B \cap A_1) + \ldots + P(B \cap A_k) = \sum_{i = 1}^k P(B \mid A_i)P(A_i)$.

This is because $B = B \cap A_1 \cup \ldots \cup B \cap A_k$, and $B \cap A_i$ is mutually exclusive with any $B \cap A_j$ when $i \ne j$. So $P(B) = P(B \cap A_1 \cup \ldots \cup B \cap A_k) = P(B \cap A_1) + \ldots + P(B \cap A_k)$.

So if $A$ is an event and $B$ and $C$ are mutually exclusive events, then $P(A) = P(A \cap B) + P(A \cap C) = P(A \mid B)P(B) + P(A \mid C)P(C)$.

A group of students that is 18.75% male is planning to go out for pizza. If $\frac{100}{3}$% of the male students go and $\frac{300}{13}$% of the female students go, what is the probability that a random student who goes out for pizza is female?

> Let $M$ represent male and $O$ represent going out for pizza.  
> Clearly, $P(M) = 0.1875, P(\overline M) = 0.8125$ and $P(O \mid M) = \frac 1 3, P(O \mid \overline M) = \frac 3 {13}$.  
> We want to find $P(\overline M \mid O)$. So $P(\overline M \mid O) = \frac{P(\overline M \cap O)}{P(O)} = \frac{P(O \mid \overline M)P(\overline M)}{P(O \mid M)P(M) + P(O \mid \overline M)P(\overline M)}$.  
> So $P(\overline M \mid O) = \frac{\frac 3 {13} \cdot 0.8125}{\frac 1 3 0.1875  + \frac 3 {13} \cdot 0.8125} = 0.75$.  
> So the probability that a random selected student from this group is female is 75%.  

A **tree diagram** is a diagram that helps represent conditional probabilities by showing the possibilities of several runs of an experiement as a tree. For example, we might draw a tree for flips of a coin, with each level being a subsequent flip of the coin.

When we move downwards in a tree, we multiply the probabilities together. When we include other nodes, we do a union and add the probabilities.

We label the edges of the tree with the probability of the child occurring given that all the parent events have occurred. So in the above example, the root node has labels $P(H)$ and $P(T)$, while the second level nodes have $P(H \mid H), P(T \mid H), P(H \mid T), P(T \mid T)$.

If we want the probability of a particular sequence of outcomes, then we would travel down the tree multplying by edges when we encounter them. So in the above example, the probability of getting a heads, and then another heads is $P(H \cap H) = P(H) P(H \mid H) = 0.25$.

We are eventually going to develop **Bayes Theorem**, which is $P(A \mid B) = \frac{P(B \mid A) P(A)}{P(B)} = \frac{P(B \mid A) P(A)}{P(B \mid A)P(A) + P(B \mid \overline A)P(\overline A)}$.

# 26/5/14

$P(A \mid B) = 1 - P(\overline A \mid B) \ne 1 - P(A \mid \overline B)$.

If $P(H \cap M) = 0.1$ and $P(H \cap \overline M) = 0.15$, find $P(M \mid H)$:

> Clearly, $P(H) = P(H \cap M) + P(H \cap \overline M) = 0.25$.  
> Clearly, $P(M \mid H) = \frac{P(M \cap H)}{P(H)} = \frac{0.1}{0.25} = 0.4$.  

Discrete Random Variables/Probability Models
--------------------------------------------

Probability models are used to describe outcomes associated with random processes.

Until this point we have been using sets in sample spaces to describe these outcomes.

Now we introduce **random variables**. A random variable is a function that assigns a real number in a set $A$ to each outcome in a sample space $S$. They are denoted with capital letters $X, Y, \ldots$ and their values are denoted with lowercase letters $x, y, \ldots$.

Random variables are defined for every outcome of an experiment - $X: S \to A$.

For example, if $S$ is the set of possible results of 3 coin tosses, $\set{TTT, TTH, THT, THH, HTT, HTH, HHT, HHH}$, we might have a random variable $X$ map each outcome in $S$ to the number of heads in that outcome.

We can also invert $X$ to get a set of all outcomes in $S$ for a given value $x$.

We are interested in finding $P(X = x)$. This is the probability that $x$ occurs, and random variables give us new tools to work with them. In the above example, $P(X = 3) = \frac 1 8$ because there is 1 outcome with 3 heads and 8 outcomes total.

There are two types of random variables - **discrete** and **continuous**. Discrete variables can only take on finite or countably infinite (like natural numbers) values. Continuous variables can take on values in some interval of real numbers.

The **probability function/probability mass function** (PMF/PF) of a random variable $X$ is $f_X(x) = P(X = x)$, defined for all $x \in A$. $f_X(x)$ is a probability function if and only if $f_X(x) \ge 0$ and $\sum_{x \in A} f_X(x) = 1$. So $0 \le f_X(x) \le 1$.

In the above example, $f_X(x) = \begin{cases} P(\set{TTT}) &\text{if } x = 0 \\ P(\set{HTT, THT, TTH}) &\text{if } x = 1 \\ P(\set{HHT, HTH, THH}) &\text{if } x = 2 \\ P(\set{HHH}) &\text{if } x = 3 \end{cases} = \begin{cases} \frac 1 8 &\text{if } x = 0 \\ \frac 3 8 &\text{if } x = 1 \\ \frac 3 8 &\text{if } x = 2 \\ \frac 1 8 &\text{if } x = 3 \end{cases}$.

For example, $f_X(x) = \frac{kx}{2 + x}$ is a probability function that gives $x \in \set{1, 2, 3, 4, 5}$. Clearly, $k$ must satisfy $f_X(1) + f_C(2) + f_C(3) + f_C(4) + f_C(5) = 1 = \frac k 3 + \frac {2k} 4 + \frac {3k} 5 + \frac {4k} 6 + \frac {5k} 7 = \frac {140k + 105k + 84k + 70k + 60k} {420} = \frac{459}{420}k$, so $k = \frac{420}{459}$.

The Cumulative Distribution Function is $F_X(x) = P(X \le x) = \sum_{u \le x} f_X(u)$. It is always true that $\lim_{x \to -\infty} F_X(x) = 0$ and $\lim_{x \to \infty} F_X(x) = 1$. Therefore, $f_X(x) = F_X(x) - F_X(x - 1)$ and $P(X = x) = P(X \le x) - P(X \le x - 1)$. It is the probability of anything less than or equal to $x$ taking place.

# 28/5/14

For discrete probability functions, we can plot $f$ as a bar graph to get a probability distribution.

For cumulative distribution functions, the plot of $F$ must always have a line segment $y = 0$ from $-\infty$ to the first value of $x$ at $y = 0$. The function itself appears as a step function, like the plot of $\floor{x}$. At the far right side the last value should always be a line segment with $y = 1$ from the last value of $x$ to $\infty$.

So if $x \in \set{1, 2, 3, 4}$, and $F(2) = P(x \le 2) = 0.5$, then $F(2.5) = P(x \le 2.5) = P(x \le 2) = 0.5$.

Now we aim to identify common processes and problems that have certain probability distributions.

For example, tossing a coin 10 times where $x$ represents the number of heads obtained, or examining 12 items from a factory lines and $x$ represents the number of items with no defects. These problems are similar in that each trial is independent, and there are two possible outcomes for each trial - the coin is either heads or tails, and the item is either defective or not. Additionally, the minimum value for $x$ is 0 and the maximum value is the number of trials. In fact, all of these can be represented using the **binomial distribution**, which will be looked at in depth later.

$R$ is a free software package for statistical and probabilistic computation. It is commonly used in modern statisticss due to its ability to handle huge datasets.

### Discrete Uniform Distribution

Preconditions:

* Multiple outcomes $x_1, \ldots, x_n$.
* Every outcome is equally likely.

If the above are satisfied, then if $X$ represents the index of the outcome in $x_1, \ldots, x_n$ that occurred, $X$ has a discrete uniform distribution.

If the random variable $X$ takes on values $a_1, \ldots, a_n$ where each value is equally likely, then $X$ has a discrete uniform distribution on the set $\set{a_1, \ldots, a_n}$, by definition.

The probability of observing any of these is simply $\frac 1 {b - a + 1}$. The most common example of this is the rolling of a 6 sided dice several times.

The cumulative distribution function would be $F(x) = \sum_{u \le x} \frac 1 {b - a + 1} = \begin{cases} 0 &x < 1 \\ \frac \floor{x} {b - a + 1} &1 \le x \le 6 \\ 1 & x > 6 \end{cases}$.

If a 6-sided die is rolled 3 times, what is $F_X(x)$ and $f_X(x)$ where $x$ is the largest value rolled?

> Clearly, $F_X(x) = P(X \le x) = \frac{x^3}{6^3}$, because there are $x^3$ possible outcomes where all the values are less than or equal to $x$ and $6^3$ possible outcomes.  
> So $f_X(x) = P(X = x) = \frac{x^3 - (x - 1)^3}{6^3} = \frac{3x^2 - 3x + 1}{216}$.  

# 30/5/14

### Hypergeometric Distribution

Preconditions:

* Objects are in sample space $S$.
* Two outcomes - success and failure.
* $n$ objects chosen from $S$ **without replacement**.

If the above are satisfied, then if $r$ represents the total number of successes, and $X$ represents the number of observed successes, $X$ has a hyergeometric distribution and $f_X(x) = \frac{{r \choose x}{N - r \choose n - x}}{N \choose n}$, where $r$ is the total number of successes, $x$ is the number of successes observed, $N = \abs{S}$, and $n$ is the number of objects selected.

Basically, ${r \choose x}{N - r \choose n - x}$ is the number of ways we can choose $x$ successes out of $r$ total successes, multiplied by the number of ways we can choose the $n - x$ failures out of $N - r$ total failures. $N \choose n$ is the number of ways we cuold pick any $n$ objects from the total objects.

Given $N$ objects that have a boolean property $V$ (success), let $r$ represent the total number of successful objects, and let $X$ represent the number of successes observed.

Then if we pick $n$ objects **without replacement**, $X$ has a hypergeometric distribution.

The total number of arrangements is $N \choose n$, and the number of ways to select successes is $r \choose x$, and the number of ways to choose the failures is $N - r \choose n - x$.

So $f_X(x) = \frac{{r \choose x}{N - r \choose n - x}}{N \choose n}$, where $\max(0, n - (N - r)) \le x \le \min(r, n)$. $\max(0, n - (N - r))$ is the minimum possible number of successes that must be chosen, . $N$ is the number of objects in $S$, and $r$ is the  ;wip

Using the hypergeometric identity, we can prove that summing up all the the values of a hypergeometric distribution is 1.

A box of 12 tins of tuna contains $d$ tainted cans. 7 inspected cans are inspected and found to not be tainted. What is the probability that none are tainted for $d = 1, 2, 3$:

> Clearly, this is a selection done without replacement since once we inspect cans, we cannot inspect them again.  
> ;wip

### Binomial Distribution

Preconditions:

* Objects are in sample space $S$.
* Two outcomes, success and failure.
* Multiple independent trials - objects chosen from $S$ **with replacement**.
* Same probability of success in each trial.

If the above are satisfied, then if $X$ represents the number of observed successes, $X$ has a binomial distribution and $f_X(x) = {n \choose x}p^x(1 - p)^{n - x}$ where $n$ is the number of objects selected, $p = P(success)$.

This is the same as the hypergeometric distribution, except our selection is done with replacement - every trial is independent. ;wip

;wip: justify this and organize all of this properly

$X \sim \operatorname(Bin)(n, p)$. The $n$ is the number of the number of objects in $S$, and $p$ is the probability of success for each object.

These independent trials resulting in success/failure are known as **Bernoulli trials**. The process is known as the **Bernoulli process**.

With $x$ successes and $n - x$ failures, there are $n \choose x$ ways of choosing them.

So $f_X(x) = {n \choose x}p^x(1 - p)^{n - x}$ where $0 \le x \le n$.

Given that we flip a coin 12 times, let $X$ be the number of heads obtained. What is the distribution of $X$?

> Clearly, this is a binomial distribution since there are multiple independent trials, two outcomes, and equal probabilities of success.  
> Therefore, $X$ has a binomial distribution.  

The binomial distribution is not always symmetric and looks like a curve. The higher $p$ is, the heavier the graph is on the right.

The binomial distribution is often used as a approximation for the hypergeometric distribution because it is easier to calculate and when the sample space is large, the difference between sampling with and without replacement becomes negligible.

;wip: midterm on thursday from 4:30-6pm, rooms will be posted on LEARN, 5-6 short answer with parts, bring pink tie calculators, covers lecture 1-10, just before discrete uniform distribution, check formula sheet on the practice midterm, try the practice midterms and mapleta revision quiz (not for marks)

# 2/6/14

55% of all high school seniors go to college. Given 18 high school students, what is the probability that exactly 10 will go to college?

> Let $X$ be the number of high school students that go to college.  
> Clearly, there are to outcomes (going or not going to college), and each student is an independent trial, and the selection is done with replacement (or without relacement in a large population), and each student has the same probability of going to college.  
> Therefore, $X$ has a binomial distribution.  
> So $P(X = 10) = f(10) = {18 \choose 10} 0.55^{10} (1 - 0.55)^{18 - 10} \approxeq 0.186373632163697$.  

### Negative Binomial Distribution

The negative binomial distribution has the same preconditions as the binomial distribution, but now $X$ records the number of failures before the $k$th success and $x$ is the number of failures.

This can be represented using $X \sim \operatorname{NB}(k, p)$, where $k$ is the number of successes and $p$ is the probability of success.

Clearly, there are $x + k$ trials - successes plus failures, and the last trial is always a success.

So there are $x + k - 1$ trials in which there are $x$ failures, and $x + k - 1 \choose x$ arrangements.

So $f_X(x) = {x + k - 1 \choose x}p^k(1 - p)^x$ where $0 \le x$.

Also, ${a + b \choose a} = {a + b \choose b}$.

With binomial distributions we know the number of trials but not the number of successes. With negative binomial distributions we know the number of successes but not the number of trials.

If 20% of people agree to buy tickets, and we want 25 people to buy tickets, what is the probability function of $X$ where $X$ is the number of people asked before 25 tickets are bought?

> Clearly, $X$ is the number of failures plus 25 successes, and $k = 25, p = 0.2$.  
> Let $X = Y + 25$ where $Y \sim \operatorname{NB}(25, 0.2)$, so $x = y + 25$ and $y = x - 25$.  
> So $f_Y(y) = {y + 25 - 1 \choose y}p^{25}(1 - 0.2)^y = {y + 24 \choose y}0.2^{25}0.8^y$ where $0 \le y$.  
> So $f_X(x) = {x - 1 \choose x - 25}0.2^{25}0.8^{x - 25}$ where $25 \le x$.  

# 4/6/14

Midterm Review.

* $S$ is the sample space, $A$ is an event, events are sets.
* $P(A) = \frac{\abs{A}}{\abs{B}}$.
* "OR" means union/addition, "and" means conjunction/multiplication.
* Consider which elements we are selecting.
* Consider whether the order is important.
* Consider how many sets we are selecting from - if two or more sets, use the multiplication rule and multiply the individual ways together to get the total ways.
* $P(S) = 1, 0 \le P(A) \le 1$.
* De Morgan's law, expanding conjunctions and disjunctions and conditionals, mutual exclusivity and independece ($P(A \cap B) = P(A) P(B)$).
* Product rule ($P(A \cap B) = P(A \mid B) P(B)$) and partition rule ($P(A) = P(A \cap B_1) + \ldots P(A \cap B_n)$ given $P(B_1) + \ldots + P(B_n) = 1$).
* Probability function: $P(X = x)$ over all $X$, represented using a histogram.
* Cumulative distribution function: $F_X(x) = P(X \le x)$, a non-decreasing function.
* $f_X(x) = F_X(x) - F_X(x - 1)$.

# 6/6/14

### Geometric Distribution

This basically the same as the negative binomial distribution with $k = 1$. It has the same preconditions as the binomial distribution, but $X$ is the number of failures before the first success.

If $X$ has a geometric distribution, then $f_X(x) = (1 - p)^xp$ where $0 \le x$. This can easily be derived from  the negative binomial distribution.

Also, we can write $X \sim \operatorname{NB}(1, p)$ or $X \sim \operatorname{Geo}(p)$.

Note that the binomial, negative binomial, and geometric distributions all have the same preconditions - two outcomes, independent trials, and equal probability of success in each trial.

The only thing different between them is what $X$ means - successes given $n$ trials, failures given $n$ successes, and failures given 1 success.

Given that there is a 30% chance of a car having leaks, and that the probability that we must check at least $n$ cars to find the first one with leaks is 0.05, what is the value of $n$?

> Let $X$ represent the number of cars without leaks before finding one with leaks. Then $f_X(x) = 0.3(1 - 0.3)^x = 0.3 \cdot 0.7^x$.  
> We want to find $n$ such that $P(X \ge n - 1) = 0.05$, since we want $n - 1$ or more cars to not have leaks before the first one with leaks.  
> So $P(X \ge n - 1) = \sum_{i = n - 1}^\infty f_X(i) = 0.05$.  
> So $0.3 \cdot 0.7^{n - 1} + 0.3 \cdot 0.7^n + 0.3 \cdot 0.7^{n + 1} + \ldots = 0.3 \cdot 0.7^{n - 1}(1 + 0.7^1 + 0.7^2 + \ldots) = 0.3 \cdot 0.7^{n - 1}\frac 1 {1 - 0.7} = 0.7^{n - 1} = 0.05$.  
> So $\ln 0.7^{n - 1} = \ln 0.05$ and $n = \frac{\ln 0.05}{\ln 0.7} + 1 \approxeq 9.4$.  
> Since $n$ must be an integer, we have to round it. Clearly, $P(X \ge 9.4 - 1) = P(X \ge 10 - 1) \ne P(X \ge 9 - 1)$, so we must round up.  
> So the probability that we must check at least 10 cars to find the first one with leaks is 0.05.  

### Poisson Distribution

Preconditions:

* Events occur at random points in time.
* Events occur independently of each other - observing events occur already does not change the probability of the events ooccurring later.
* Events occur $\mu$ times over the interval, on average.

If the above are satisfied, then if $X$ represents the number of events of some type within some interval, $X$ has a Poisson distribution and $f_X(x) = \frac{e^{-\mu} \mu^x}{x!}$ where $x \ge 0$.

This can be represented using $X \sim \operatorname{Poisson}(\mu)$.

This distribution is defined over a countably infinite set of outcomes.

This an approximation for the binomial distribution where $\operatorname{Poisson}(\mu)$ approximates $\operatorname{Bin}(n, \frac \mu n)$. The approximation gets better for large $n$ and small $p$.

This is because for large $n$ and small $p$, $n$, the trials in a binomial distribution, becomes the arbitrarily small sections of time, and $p$ becomes the probability of the event occurring (which is a success) in one of those small sections of time. Since each section of time is $\frac 1 n$ long, the probability of observing an event in this section is $p = \frac \mu n$, and we assume the sections are so small that the probability of two events occurring in one section is negligible.

Examples of this distribution occurring naturally might include the number of white cars we observe in 30 minutes, or the number of bacteria in particular radius.

# 9/6/14

The rate is not necessarily over time. It could be anything that events can occur relative to. For example, we can define $\mu$ as average pollutant molecules (success event) per liter of water.

When $n \to \infty$, the binomial distribution becomes the Poisson distribution:

> Let $f_X(x) = {n \choose x}p^x(1 - p)^{n - x}$. We want to prove that $\lim_{n \to \infty} {n \choose x}p^x(1 - p)^{n - x} = \frac{e^{-\mu} \mu^x}{x!}$.  
> Clearly, $\mu = np$ - the number of samples times the probability of each sample occurring is the rate of events occurring over all $n$.  
> So $\lim_{n \to \infty} {n \choose x}p^x(1 - p)^{n - x} = \lim_{n \to \infty} {n \choose x}\left(\frac \mu n\right)^x\left(1 - \frac \mu n\right)^{n - x}
= \frac{\mu^x}{x!}\lim_{n \to \infty} \frac{n!}{(n - x)!}\frac 1 {n^x}\left(1 - \frac \mu n\right)^n \lim_{n \to \infty} \left(1 - \frac \mu n\right)^{-x}
= \frac{\mu^x}{x!}\lim_{n \to \infty} \frac{n \cdot (n - 1) \cdots (n - x)}{n^x}\left(1 - \frac \mu n\right)^n
= \frac{\mu^x}{x!}\lim_{n \to \infty} \frac{n \cdot (n - 1) \cdots (n - x)}{n^x} \lim_{n \to \infty} \left(1 - \frac \mu n\right)^n
= \frac{\mu^x}{x!}\lim_{n \to \infty} \left(1 - \frac \mu n\right)^n$.  
> Since $e^x = \lim_{n \to \infty} \left(1 + \frac x n\right)^n$ and $e^{-\mu} = \lim_{n \to \infty} \left(1 - \frac x n\right)^n$.  
> So $\lim_{n \to \infty} {n \choose x}p^x(1 - p)^{n - x} = \frac{e^{-\mu}\mu^x}{x!}\lim_{n \to \infty}$.  

The idea is to keep $\mu = np$ fixed, so as $n \to \infty$, $p \to 0$.

Birthday problem - given 200 people at a party, what is the probability that exactly two of them are born on January 1?

> We assume that all days of the year are equally likely, and there are no leap years, and that birthdays are independent of each other.  
> Let $X$ be the number of people at the party born on January 1.  
> So $X \sim \operatorname{Bin}(200, \frac 1 {365})$. Then the exact probability is $P(X = 2) = {200 \choose 2} \frac 1 {365^2} \left(\frac{364}{365}\right)^{200 - 2} \approxeq 0.086766913252562$.  
> Using the Poisson approximation, $\mu = np = 200 \times \frac 1 {365} = \frac{200}{365}$, so $P(X = 2) = \frac{e^{-\frac{200}{365}}\mu^{\frac{200}{365}}}{x!} \approxeq 0.086790999064332$.  

Order Notation
----------------

$g(\Delta t) = o(\Delta t)$ as $t \to 0$ means that $g(\Delta t)$ approaches 0 faster than $\delta t$ does. So $\frac{g(\Delta t)}{\Delta t} = 0$ as $t \to 0$.

For example, $x^2$ ($g(\Delta t)$) approaches 0 faster than $x$ ($\Delta t$), so $x^2$ is $o(x)$. However, $\sqrt{x}$ approaches 0 slower than $x$, so $\sqrt{x}$ is not $o(x)$.

So if something is $o(x)$, then it approaches 0 faster than $x$ does.

$f(x) \in o(g(x))$ means that $f(x)$ grows much slower than $g(x)$.

# 11/6/14

Independent events means that events occur independent of each other - observing events occurring a lot of times already in the past should not affect the probability of observing events in the future.

Individual events means that $P(\text{2 or more events in same interval } (t, t + \Delta t)) = o(\Delta t)$ - that the probability of two events occurring in the same interval becomes negligible when $\Delta t \to 0$. In other words, in any interval $(t, t + \Delta t)$ there is either 1 or 0 events occurring, and the probability that two or more events occur is negligible.

Hommogeneity/uniformity means that the events occur at a uniform rate $\lambda$ over some dimension (usually time or space) so that $P(\text{one event in interval } (t, t + \
Delta t)) = \lambda \Delta t o(\Delta t)$.

If a process/experiment satisfies these three properties, then it is a **Poission process** and $\mu = \lambda t$.

$\lambda$ is the average rate of events per unit dimension (usually time or space). $\mu$ is the average number of occurrences over an interval $t$. Clearly, $\mu = \lambda t$.

If there are an average of 6 earthquakes per year and earthquakes are a Poisson process, what is the probability that 7 are recorded in the next 2 years?

> Let $X$ be the number of earthquakes in the next 2 years.  
> Clearly, $\lambda = 6 \text{earthquakes}/\text{year}$, so $\mu = 12 \text{earthquakes}$.  
> So $P(X = 7) = \frac{e^{-12} 12^7}{7!}$.  

The number of cars exceeding the speed limit in half an hour is a random variable $X$ with a Poisson distribution where $\lambda = 8.4$. What is the probability that 10 cars exceed the speed limit in 1 hour?

> Clearly, $\mu = 8.4 \text{speeders}/\text{0.5 hours}t = k \text{speeders}/\text{hour}t$. So $t = 2 \text{hours}$ and $\mu = 16.8 \text{speeders}$.  
> So $P(X = 10) = \frac{e^{-16.8} 16.8^10}{10!}$.  

# 13/6/14

Bacteria occur in water at 1 bacterium per 10 cubic centimeters of water. What is the probability that there are 5 or more bacteria in a 50 cubic centimeter sample?

> Clearly, "1 bacterium per 10 cubic centimeters of water" is the average rate per unit volume, so $\lambda = 1 \text{bacterium}/\text{10 cubic centimeters}$.  
> So $\mu = 1 \text{bacterium}/\text{10 cubic centimeters} \times \text{50 cubic centimeters} = 5 \text{bacteria}$.  
> Let $X$ represent the number of bacteria. Then $X \sim \operatorname{Poisson}(5)$.  
> So the probability that there are 5 or more bacteria is $P(X \ge 5) = 1 - P(X \le 4) = 1 - e^{-5}\left(\frac{5^0}{0!} + \frac{5^1}{1!} + \frac{5^2}{2!} + \frac{5^3}{3!} + \frac{5^4}{4!}\right) \approxeq 0.559506714934788$.  

When do we use Poisson distribution rather than the binomial distribution? We must consider the following:

* Does $X$ have a maximum value? This is $n$ in the binomial distribution, and we can use Poisson if this is countably infinite or very large.
    * For example, if $X$ is the number of seeds that germinate out of 25 planted, then $X$ has a maximum value of 25 and we should not use the Poisson
 distribution.
    * For example, if $X$ is the number of airplanes taking off, then $X$ has no maximum value - there could theoretically be infinite takeoffs and we should use the Poisson distribution.
* Does it make sense to ask how often the event does not occur? This asks if there are finite, distinct trials.
    * For example, if a coin is tossed many times, it also makes sense to count how often heads did not occur, so we should not use the Poisson distribution.
    * For example, it does not make sense to ask how often a plane is not taking off, so we should use the Poisson distribution.

Calls to a phone occur at an average rate of 3 per minute. What is the probability that 2 calls occur in the next minute given that 6 calls occur in the next 2.5 minutes?

> Clearly, $\lambda = 3$ and $\mu = 3 \times 2.5 = 7.5$. Let $X_t$ be the number of calls received over a time $t$.  
> Then $P(X_t = x) = \frac{e^{-3t}(3t)^x}{x!}$ because it is a Poisson random variable.  
> Clearly, $P(\text{2 in 1 minute} \mid \text{6 in 2.5 minutes}) = \frac{P(\text{2 in 1 minute} \wedge \text{6 in 2.5 minutes})}{P(\text{6 in 2.5 minutes})}$.  
> Clearly, $\frac{P(\text{2 in 1 minute} \wedge \text{6 in 2.5 minutes})}{P(\text{6 in 2.5 minutes})} = \frac{P(\text{2 in 1 minute} \wedge \text{4 in last 1.5 minutes})}{P(\text{6 in 2.5 minutes})}$, because if only two occur in the first minute and 6 occur in total, then 4 occur in the last 1.5 minutes.  
> Clearly, $\text{2 in 1 minute}$ and $\text{4 in last 1.5 minutes}$ are independent.  
> So $P(\text{2 in 1 minute} \mid \text{6 in 2.5 minutes}) = \frac{P(\text{2 in 1 minute}) P(\text{4 in last 1.5 minutes})}{P(\text{6 in 2.5 minutes})} = \frac{P(X_1 = 2) P(X_{1.5} = 4)}{P(X_{2.5} = 6)} = \frac{\frac{e^{-3}3^2}{2!} \frac{e^{-4.5}4.5^4}{4!}}{\frac{e^{-7.5}7.5^6}{6!}}$.  
> Incidentally, this is equal to ${6 \choose 2}\left(\frac{3}{7.5}\right)^2\left(1 - \frac{3}{7.5}\right)^{6 - 2}$, which is $P(Y = 2)$ where $Y \sim \operatorname{Bin}\left(6, \frac{3}{7.5}\right)$.  

In general, if we have a Poisson variable and we restrict its maximum value like in the above example, when we then calculate the probability it is equivalent to a binomial distribution.

# 16/6/14

We can also combine distributions together to solve problems.

A large number of ladybugs are released into an orchard. They scatter randomly so that every tree has an average of 6 bugs. Find the probability that any 10 trees have 8 with more than 3 ladybugs:

> Let $X$ be the number of ladybugs in any given tree.  Clearly, $X \sim \operatorname{Poisson}(6)$ and $P(X > 3) = 1 - P(X = 0) - P(X = 1) - P(X = 2) - P(X = 3)$.  
> So $P(X > 3) = 1 - \frac{e^{-6}6^0}{0!} - \frac{e^{-6}6^1}{1!} - \frac{e^{-6}6^2}{2!} - \frac{e^{-6}6^3}{3!} = 1 - 61e^{-6}$.  
> Let $Y$ be the number of trees out of 10 that have more than 3 ladybugs. Then $Y \sim \operatorname{Bin}(10, P(X > 3))$ and $P(Y = 8) = {10 \choose 8}(1 - 61e^{-6})^8(1 - (1 - 61e^{-6}))^{10 - 8} = 45(1 - 61e^{-6})^8(61e^{-6})^2 \approxeq 0.277182287706655$.  

What is the probability that, given two trees with a total of $t$ ladybugs, there are $x$ on the first tree?

> ;wip: use the definition of conditional probability and \frac{P(x in first tree) P(t - x in second tree)}{P(t in two trees)}

Expected Value and Variance
---------------------------

We often want summary statistics rather than the full details of the data. For example, the mean, median, and standard deviation.

A useful way to present data is the frequency distribution, which plots the number of $X = x$ with respect to $x$. For example, if $X$ represents the number of peope in cars passing over a bridge, then the frequency histogram or table is the number of trials where $X = x$ for each $x$.

The **arithmetic mean** or **sample average** of a sample of observations $x = \set{x_1, \ldots, x_n}$ is $\overline x = \frac 1 n \sum_{i = 1}^n x_1$ where $x_1, \ldots, x_n$ are the individual outcomes of each sample. It is the sum of the values divided by the number of values and is not necessarily an exact value of $x$ - it might not be an integer even if $X$ is.

# 18/6/14

The set of observed outcomes $x_1, \ldots, x_n$ for a random variable $X$ is a **sample**.

The **median** (represented $Q_2$) of a sample of observations $x = \set{x_1, \ldots, x_n}$ is the value $x$ such that when the observations are numerically sorted, half the numbers are below it and half are above. If there are an even number of observations and it is impossible to divide it exactly in half, the mean of the middle two values is used. ;wip: the $x$ should have a tilde over it

If a set of values is sorted, the median is the value in the middle or the mean of the two values in the middle.

The **mode** is the value that occurs most often. This is not used very often, and there can be more than one mode if there are values that occur equally often.

The mean, median, and mode are not necessarily the same, though they all measure centrality/location. Sometimes one will represent the data better than another.

We previously defined the mean, median, and mode to summarize statistics for a sample of observations for a random variable 4X$. We can also extend these concepts to describe the probability distribution of $X$.

The mean of a sample set is $\sum_{i = 1}^k x_i \times \frac{\text{the number of occurrences of } x_i}{\text{total number of occurrences of any outcome}}$, where $x_1, \ldots, x_k$ is now the set of all possible outcomes.

Clearly, as the number of samples approaches infinity, $\frac{\text{the number of occurrences of } x_i}{\text{total number of occurrences of any outcome}}$ approaches $P(X = x_i) = f(x_i)$.

So in the long run, the mean will approach $\mu = E(X) = \sum_{i = 1}^k x_i f_X(x_i)$. This is known as the **theoretical mean/expected value/expectation**, because it is the average value we would expect if we repeated the experiment an infinite number of times. Clearly, this depends on the probability distribution of $X$.

Also, if $g(x)$ is a function of $x$, then $E(g(X)) = \sum_{i = 1}^k g(x_i) f_X(x_i)$. $f_X(X)$ is simply a function of $X$, while $f_X(x)$ is a specific value. $x$ is like a specific value that $X$ can assume.

$E(g(X))$ represents the average value of $g(X)$ when the experiment is repeated an infinite number of times, and can be a decimal number even if $g(x)$ only results in integers.

Clearly, $E(g(X))$ must be between the smallest and largest value in $g(x_1), \ldots, g(x_k)$. It is never possible to get a value outside of this range.

Given a random variable $X$ such that $f_X(x) = \frac 1 3$ and $x = -1, 0, 1$, and $Y = X^2$, what is $E(Y)$?

> Clearly, $E(Y) = E(X^2) = (-1)^2 \frac 1 3 + 0^2 \frac 1 3 + 1^2 \frac 1 3 = \frac 2 3$.  
> So the expected value of $X^2$ is $\frac 2 3$.  

Also, $E[a_1 \cdot g_1(X) + \ldots + a_n \cdot g_n(X)] = a_1 \cdot E(g_1(x)) + \ldots + a_n \cdot E(g_n(x))$, so the expected value operator is a linear. If $g(x)$ is a linear function (of the form $aX + b$), then $E(g(x)) = g(E(X))$.
