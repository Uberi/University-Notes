PSYCH256
========

Introduction to Cognitive Science.

    Phil Bériault
    Section 081 (online)
    Email: pberiault@uwaterloo.ca
    Office: HH 337

# 6/5/16

Two essay assignments (worth 15% and 25% each), a midterm (worth 25%), and a final exam (worth 35%).

Overview
--------

Cognitive science is the study of the mind and intelligence, with a particular focus on what actually constitutes intelligence and how those things are assembled and used to exhibit intelligent behaviour. This course gives the history and context surrounding this field, with a focus on classical cognitive science, and then presents a wide view of the work that's building on top of this foundation.

Cognitive science can be thought of as a framework for **composing theories about how the mind works**, as well as a set of accumulated **practices and methods for testing these theories**. It's a paradigm in the same sense of paradigms in Kuhn's "The Structure of Scientific Revolutions".

The defining feature of **classical cognitive science** (circa 1950-1980) is that **thinking is conceptually similar to computation** - intelligence is built on **mental manipulation** of **mental representations**, just like computation is built on symbolic manipulation of symbolic representations. In the classical cognitive science paradigm, researchers investigate intelligent behaviours, compose theories about mental representations/manipulation, and test theories using computer simulations of models (this is known as **cognitive modelling**) and various other experimental methods to see how well they actually explain/predict features of human intelligence.

However, these classical theories have had a lot of trouble explaining many of the cognitive phenomena we observe, such as the origin of consciousness, emotions, and so on. Additionally, experimental evidence suggests that the brain doesn't actually seem to be doing anything like symbolic processing, at least at first glance.

First, though: what is intelligence? Colloquial use of the word tells us that intelligent behaviour is based on reason, predictive ability, engineering skill, or some other common things that humans tend to be good at. For this course, we'll be using a more precise definition: **intelligence is the ability to use knowledge or expertise**. Note that this relies heavily on the definition of knowledge - for example, under some interpretations, one might consider a textbook intelligent.

Here's an example of a theory in classical cognitive science: mental representations are the sets of statements about objects (this includes objects in the world, as well as abstract objects like numbers), and mental procedures are a set of rules that a mind can follow to achieve certain outcomes. Under classical cognitive science, we would test this theory by writing computer programs that replicate this, and try to see if we can get them to exhibit intelligence.

Another example of a theory would be: mental representations of human faces are stored in so-and-so location in the human brain. Under classical cognitive science, we would test this theory by performing brain scans while people are recognizing faces in photographs.

The **CRUM** (Computational Representational Understanding of Mind) paradigm is another name for the central ideas of classical cognitive science - that thinking is like computation, that intelligence is defined in terms of knowledge, and that intelligence can be tested for with computational models and various other known methods.

### History

Cognitive science asks many of the same questions we see in epistemology, metaphysics, and psychology, but answers them in very different ways.

According to Plato (~400 B.C.E.), one of the earliest western philosophers, thinking is the interaction between the mental organs (both the physical and the immortal, intangible parts) through organic fluids, as a hydraulic system, and knowledge is simply the mind's grasp of true, abstract ideas.

According to Locke (~1690s), one of the most famous early empiricists, thinking is any process of reflection that abstracts ideas from sensations/perception, and knowledge is a set of propositions rooted entirely in sensory experience.

According to the **behaviourist** model of the mind (~1920s), we can't make any scientific claims about knowledge, minds, or thinking. Basically, under this view we treat the mind as a black box, running on top of meat exchanging signals via chemical and electrical phenomena.

According to Wiener (~1940s), a proponent of the **cybernetics** model of the mind, thinking is the process of adapting future behaviour based on the results of past behaviour. Although this has fallen out of favour in most mind-related fields today, it formed the basis for control theory and a variety of fields used in robotics.

Around the same time as Wiener's theories, electronic computers were invented, and with it, significant advances in computational theory. For the first time, people saw machines doing a lot of the things previously only ever done by humans. This, along with several new discoveries (e.g., discovery of short term memory, invention of automated theorem provers, and Chomski-esque linguistics), essentially kicked off what would eventually become CRUM.

# 13/5/16

Logic
-----

**Logic** is the study of arguments, and therefore, one of the core fields in philosophy.

One of the most useful things we can use logic for is to determine the strength of an argument - whether we should be convinced or not. Generally, there's a consensus that the strength of an argument is determined solely from its form (the argument must use valid logical reasoning for the premises to support the conclusion) and content (the premises must actually already be believed if we are to be convinced).

Overview of argumentation and propositional logic goes here. See PHIL110A and PHIL145 notes for details.

A **syllogism** is an argument that has exactly two premises. Aristotle was first to discover that certain forms of arguments have their premises always support their conclusion - he discovered valid argument forms.

For some strange reason, this course also uses the nonstandard symbols $\to$ and $\subset$ to represent $\implies$. All of these operators should be considered equivalent.

Propositional logic uses uppercase letters to represent variables, and the usual logical operators such as $\wedge, \vee, \implies$ to form statements that are either true or false.

**Predicate logic** is an extension of propositional logic, much like we learned in CS245. It basically allows us to express variables in a more fine-grained way.

Lowercase letters, such as $x$ and $y$, represent objects, while uppercase letters, such as $A$ and $B$, represent properties/relations (relations in the CS245 sense, which result in either true or false).

So if $T(a, b) = a \text{is taller than } b$ and $x$ is Bill and $y$ is Tina, then $T(x, y)$ (or $Txy$ for short) means "Bill is taller than Tina".

Predicate logic also has the universal and existential quantifiers, which work much as you'd expect. There are also a lot of common valid forms in predicate logic, and many of them are simply extended versions of the common valid forms in propositional logic.

For example, $\forall x, G(x) \implies B(x)$ and $\forall x, B(x) \implies W(x)$ supports the conclusion that $\forall x, G(x) \implies W(x)$. "All men are mortal; Socrates is a man; so Socrates is mortal" can be written as follows:

> Let $M(x)$ represent $x \text{ is a man}$, $D(x)$ represent $x \text{ is mortal}$, and $s$ represent Socrates.  
> $\forall x, M(x) \implies D(x)$.  
> $M(s)$.  
> Therefore, $D(s)$.  

**Probabilistic logic** allows us to represent arguments that are not necessarily valid, but are still useful to consider, generally because the premises being true makes the conclusion likely to be true, even if it's not certain.

To review, some commonly used probability rules are:

* $P(\neg x) = 1 - P(x)$.
* If $x$ and $y$ are mutually exclusive events, then $P(x \vee y) = P(x) + P(y)$.
* If $x$ and $y$ are independent events, then $P(x \wedge y) = P(x) P(y)$.
* $P(x \mid y) = \frac{P(x \wedge y)}{P(y)}$.

Probabilistic arguments aren't formalized as much because they rely a lot more on the context and the content of the argument themselves, rather than the form. As a result, we mostly just evaluate whether probabilistic arguments are strong or not.

A probabilistic argument is strong if and only if, when given that the premises are true, the conclusion is a lot more likely to be true than false: $P(y \mid (x_1 \wedge \ldots \wedge x_n))$ should be a lot more than $P(\neg y \mid (x_1 \wedge \ldots \wedge x_n))$. Since the latter is just $1 - P(y \mid (x_1 \wedge \ldots \wedge x_n))$, we could also just say an argument is strong if and only if $P(y \mid (x_1 \wedge \ldots \wedge x_n))$ is a lot better than 0.5.

Consider the following argument: "There are no dinosaurs around. Therefore, my dinosaur repellant is working.". It's easy to see that this is not a strong argument, because $P(W \mid B)$ is about the same as $P(\neg W \mid B)$, where $W$ is the event of the dinosaur repellant working, and $B$ is the event of dinosaurs not being around. When we don't know whether events are likely or not, we often just use 0.5 as a placeholder for its probability.

Many logicians think that logical rules are actually the laws of thought, and that logic reflects how thinking is actually being done in the mind. It seems that being logical is a trait that's closely associated with being intelligent. This is far from a consensus, however.

Arguments can be valid in English without being valid in, say, propositional logic. For example, "all men are mortal" can't really be represented in propositional logic, besides as a single variable $M$, because we don't have things like quantifiers.

In the same way, logic can't represent all types of English sentences, such as questions, orders, and requests - logic focuses only on arguments. It seems like there is more than just argumentation to human thinking, and there are more than just arguments in our mental representations. However, logic is still useful for explaining many different mental manipulations.

For example, **deduction** is a possible model for how human minds draw conclusions from available information - people might use modus ponens to figure out what the result of an implication might be. To test this theory within the classical cognitive science framework, we will look at how well it explains observed cognitive phenomena.

The deduction theory explains **planning** quite well. For example, if I plan a route to get to the grocery store, I certainly could have been deducing that since I know how to get to point A, and how to go from point A to point B, and how to get from point B to the grocery store, and that going along multiple routes results in getting to the final point, I can go from here to point A to point B to the grocery store to get there.

One objection to this is that choosing the premises and coming up with the conclusion would be extremely computationally expensive if we do it purely deductively, because there are virtually limitless other, useless deductions we could also have made, that don't result in getting to the grocery store.

When there are multiple plans, we need to make **decisions** about which one to take, based on certain criteria and preferences. Deductive theory can explain this by using relations like $\mathrm{prefers}(x, y) = \text{I prefer to } x \text{ over } y$.

One objection to this is that it assumes that preferences can be ordered, and that preferences can be known before the plans are, which are rarely the case. One way to deal with this is to use probabilistic logic, which can give us probabilistic preferences that we can then use to deduce what is likely to be the most preferable solution. However, this is also very computationally expensive, since it relies on computing a lot of conditional probabilities.

**Explanations** are what we use to understand why something does or doesn't happen. Under deduction theory, this occurs by finding premises that support the conclusion that the thing did or didn't happen, such that it makes a valid argument.

One objection to this is that a better way to explain explanation is that the mind generates hypotheses like $x \implies y$: $x \implies y$ and $y$, so $x$ was the explanation for $y$ (this is called abduction, and is also the "affirming the consequent" fallacy). We can also add probabilistic logic on top to find the most likely $x$ out of many generated hypotheses. Although this is not a valid argument, it seems to work out well in a lot of cases, and humans seem to use something like this.

While deductive arguments can only yield information that was already in the premises of the argument, inductive and abductive arguments can generate new information, and involve a certain amount of risk that they're wrong.

Even though deductive theory has a lot of problems with explaining cognition, it's still a very useful model for how people evaluate whether arguments are good or not. A valid argument is almost always considered a good one, and a logically fallacious one is often considered bad.

That said, people often have trouble actually evaluating whether an argument is good or not - modus tollens is often difficult for people to apply without training. One explanation for this is that people are often more sensitive to the content of the argument than the form. According to Johnson-Laird and Byrne, people build a mental model of the situation, including only features of it that are contained in the argument and excluding the parts that aren't, then reason over that mental model. Since the mental model is missing features that aren't mentioned in the argument, people wouldn't consider them in the reasoning.

The fact that fallacies are so common seems to tell us that formal logic doesn't have that much of a role in human cognition.

In experiments, thinking does not seem to match probabilistic logic very well. For example, when subjects are either asked to estimate the likelihood of someone who reads a lot being a college-educated carpenter, or asked to estimate the likelihood of someone who reads a lot being a carpenter, the responses will often say that college-educated carpenter is more likely than just being a carpenter, even though being college-educated would be independent of being a carpenter. Formally, $P(\text{college-educated}) P(\text{carpenter})$ would be greater than $P(\text{carpenter})$, which is not possible under the rules of probability.
