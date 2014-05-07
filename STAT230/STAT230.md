STAT230
=======

Probability.

    Instructor: Dina Dawoud
    Office Hours: Monday, Wednesday 2:30PM-3:20PM in M3 3126


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
