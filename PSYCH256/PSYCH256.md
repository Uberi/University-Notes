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

One objection to this is that a better way to explain explanation is that the mind generates hypotheses like $x \implies y$: $x \implies y$ and $y$, so $x$ was the explanation for $y$ (this is called **abduction**, and is also the "affirming the consequent" fallacy). We can also add probabilistic logic on top to find the most likely $x$ out of many generated hypotheses. Although this is not a valid argument, it seems to work out well in a lot of cases, and humans seem to use something like this.

While deductive arguments can only yield information that was already in the premises of the argument, inductive and abductive arguments can generate new information, and involve a certain amount of risk that they're wrong.

Even though deductive theory has a lot of problems with explaining cognition, it's still a very useful model for how people evaluate whether arguments are good or not. A valid argument is almost always considered a good one, and a logically fallacious one is often considered bad.

That said, people often have trouble actually evaluating whether an argument is good or not - modus tollens is often difficult for people to apply without training. One explanation for this is that people are often more sensitive to the content of the argument than the form. According to Johnson-Laird and Byrne, people build a mental model of the situation, including only features of it that are contained in the argument and excluding the parts that aren't, then reason over that mental model. Since the mental model is missing features that aren't mentioned in the argument, people wouldn't consider them in the reasoning.

The fact that fallacies are so common seems to tell us that formal logic doesn't have that much of a role in human cognition.

In experiments, thinking does not seem to match probabilistic logic very well. For example, when subjects are either asked to estimate the likelihood of someone who reads a lot being a college-educated carpenter, or asked to estimate the likelihood of someone who reads a lot being a carpenter, the responses will often say that college-educated carpenter is more likely than just being a carpenter, even though being college-educated would be independent of being a carpenter. Formally, $P(\text{college-educated}) P(\text{carpenter})$ would be greater than $P(\text{carpenter})$, which is not possible under the rules of probability.

# 20/5/16

Rules and Rule Systems
----------------------

A **rule/production** is similar to a logical implication, but with a broader definition that includes actions rather than just arguments. Rules can be used to describe systems like chess: "IF the king is in check AND no single move can remove it from check, THEN the other player wins".

Rule-based models of cognition were developed in order to address shortcomings in the formal logic model of cognition. Where formal logic is limited to representing arguments, rule-based frameworks reflect the more general-purpose nature of language.

According to Newell, intelligence is the state of having knowledge and the ability to deploy that knowledge. In the 1960s, Newell and Simon developed a rule-based program to solve problems, known as the **general problem solver**. It had some interesting features:

* It worked from the goal, backward to the axioms/propositions **backward chaining**).
* It broke problems down into smaller, more manageable problems, solved those, then combined the results together (**subgoaling**).
* It had a database of rules that associated outcomes with actions that would achieve them (**means-ends analysis**).
* It could represent the difference between the current progress and the goal and try to reduce the difference iteratively.

One of the main limitations of this program was that backward chaining quickly became intractable for any non-trivial problem. Additionally, there was no way to infer new rules, so it couldn't learn anything new that wasn't already in its database.

Later programs managed to overcome these somwhat, and these paved the way for modern expert systems and various other AI applications in use today.

A **rule/production system** generally has three parts:

* A representation of a **goal**, and a representation of the **initial conditions**.
    * The initial conditions are usually represented as a set of propositions that start off all true.
    * The goal is usually represented as a set of propositions that all need to be satisfied.
* A **database of rules**, which describe outcomes and what actions we can perform on them - the system's knowledge.
    * These are of the form `if PROPOSITION then ACTION`, where `PROPOSITION` is the situation in which the rule applies, and `ACTION` is what we can do in that situation.
* A **search strategy** for applying rules - this needs to find a sequence of rules that, when applied, results in the goal.
    * The **knowledge space** is the graph of all possible outcomes of applying sequences of rules.
        * The origin node represents the initial condition.
        * The neighbors of a node represent the outcomes that can be reached from the current outcome by applying a single rule.
        * The search therefore becomes a pathfinding problem over the knowledge space - trying to find a path from the initial condition to the goal.
    * The most obvious strategy is the **forward strategy**, in which any rule that can apply to the current situation, gets applied, until we reach the goal (or don't reach the goal, if the rules aren't designed right).
        * This is analogous to repeatedly applying modus ponens - we repeatedly find implications where the proposition is true, affirm the antecedent, and obtain the consequent.
    * Another strategy is the **backward strategy**, in which the situations for any rule that resuls in the goal condition become subgoals, and we repeat this until one of those subgoals is already satisfied by the initial condition.
        * This is analogous to repeatedly affirming the consequent (a fallacy), though it doesn't matter since it's just trying to find possibilities - only the final path that we find matters with regard to logical validity.
    * There are also hybrid approaches like the **bidirectional strategy**, which simultaneously searches both from the initial condition forward using the forward strategy, and backwards from the goal using the backward strategy, and seeing if they ever meet in the middle somewhere.
    * Heuristics are important for making search strategies tractable for many real-world problems. Some of these heuristics include breadth-first/depth-first search and ranked search (where rules are ranked numerically by how useful we expect them to be in getting to the goal using some application-specific function).
    * Search strategies should be chosen based on the knowledge space at hand.
        * For example, a tic-tac-toe solver has a lot of possible goal states and only one initial state, so the forward strategy should work pretty well. Since basically all of the strategies are known already, it's also easy to use a best-first heuristic for the search to find the answer more quickly. In fact, the solver can be fully specified in as little as 5 rules.
        * For something like chess, the knowledge space is much, much larger, and under the rule-based model, most humans actually seem to use multiple different search strategies. For early-game, there are a lot of gambits that can be thought of as forward-chaining with a breadth-first heuristic. For mid-game, players often use subgoals such as taking a certain square or winning territory to make strategies tractable, and often employ the backward strategy with intuitive heuristics. For the late-game, it becomes tractable to simply use the backward strategy on the end goal with depth-first heuristics.

How good are rules at actually representing how thoughts work? Well, in formal logic, an argument with contradicting premises results in a valid argument for anything, including both $X$ and $\neg X$. Obviously, allowing contradictions means we can no longer say valid arguments often have true conclusions.

Likewise, in rule-based systems we could have contradicting rules like "if X then Y" and "if X then not Y", and arrive at totally different outcomes. However, this isn't an issue as long as the search strategy gets us from the initial conditions to the goal.

One way to make this work is to allow rules to be overridden or retracted if some heuristic decides that it would be good to do so while searching, or if we detect contradictory actions. An interesting side effect of this is that the number of conclusions can actually decrease when a retraction occurs, and therefore the rule-based system wouldn't strictly be doing deduction. This model seems to mesh pretty well with how thinking seems to behave in the real world.

The sequence of rules resulting from a rule-based system can be viewed as the explanation for a solution to the problem it was trying to solve. We could then think of the forward strategy as deductive explanation, and the backward strategy as abductive explanation.

Multiple approaches have been proposed for extending rule-based systems with the ability to learn new rules. Some of these are:

* Inductive generalization: the system finds that two things frequently occur together, and add the rule "if the first thing occurs, it's likely that the second thing occurs as well", or vice versa.
* Chunking/composition: the system finds sequences of rules that are applied really often, and combines that sequence of rules into a new, single rule.
* Specialization: the system finds certain rules in certain situations tend to not work that well in achieving the goal, and then either changes those rules or adds new rules that override the bad one for those situations.

Noam Chomsky is famous for his work in linguistics, specifically the view that language is generative and based on rules that build up the structure of the language, as opposed to associative and based on modifying similar language we've previously heard. The evidence for the generative model is that people are quite capable of dealing with constructed sentences that are nothing like they've ever heard before. With this model, language syntax could potentially be represented as a rule-based system where the goal is a string that represents a particular thing we're trying to express.

Chomsky also proposed that word formation (morphology) and word sound formation (phonology) rule-based as well. However, this doesn't really match up with how language is actually used. For example, making words past tense doesn't really have any good rules (consider "sing" vs. "sung"), and seem to be leanred more through association with similar examples (if you've never seen "sing" before, you might compare it to "ring" vs. "rung").

Although rule-based systems are widely used today, and are quite powerful in certain fields, they don't seem to scale up into general human intelligence. One criticism of rule-based models of cognition is that search strategies and resolving conflicting/overriding rules seem to quickly become intractable. This is known as the **frame problem** - it's hard for the system to determine which rules result in relevant conclusions and which do not. Some rule-based systems solve this with relevance heuristics to avoid considering rules that are probably irrelevant, and there is also some evidence that humans seem to do something similar.

Rule-based systems seem to explain the differences in performance between domain experts and novices pretty well - experts in this model would simply have more domain-specific rules. Additionally, chunking-based learning in rule-based systems also follows the same power law increase in knowledge (number of rules over time), just like humans seem to do when learning about a subject - learning a lot at first, then gradually tapering off as there's fewer new things to learn.

# 27/5/16

Concepts
--------

Where rules represent human knowledge using logical statements, concepts represent knowledge through ideas/descriptions. They're basically representations of what we know about the contents/operation of the world and how we came to know them. In concept-based systems, thinking is the process of applying association and matching on concepts.

Concepts are useful because we can **categorize** them. Socrates was famously pretty big on categorizing everything into either morally good or morally evil, for example.

According to Immanuel Kant, concepts are a necessary and important part of conscious experience - the mind creates conscious experience by applying concepts to sensory experience. For example, when we hear someone speaking, we sense sounds as audio waveforms, yet consciously experience words and the meaning behind them.

Concepts also serve as a basis for induction - inductively applying a concept to a new situation can let us deduce details of the structure of that situation from the structure of the concept.

It seems that concepts must either be **innate** (the rationalist view, like Descartes'), or come **from sensory experience** (the empirical view, like Locke's). Modern experimental psychology suggests that there are indeed innate concepts - even infants are known to predict physical interactions, and will express surprise if they see things like a ball rolling behind a screen, and two balls rolling out the other side.

Concepts have a long history - famously, Plato defined the concept of a human to be "a featherless biped". However, over the years there have been different prevailing ideas about what these concepts actually are as objects. Dictionary-like definitions, abstractions/prototypes, Form-like ideal examples, explanatory categories, and many others have all been proposed as psychological bases for the concept within the mind.

The view that **concepts are like dictionary definitions** is probably the oldest one, and is what Plato used in defining a human as a featherless biped. In this view, a concept is its definition, like how "a bachelor" is "an unmarried man". For something to satisfy the definition, that thing must be both a man, and unmarried.

While this works well for technical terms, it does rather poorly at explaining the kinds of concepts we encounter most often in real life (often known as natural-kind concepts) - some of them are very difficult to put into definition-like terms. For example, a "tiger" concept might be "striped carnivore", yet a tiger painted all orange should still be considered a tiger. The issue is that every property of the definition is equally necessary to satisfy it, and all of the properties must be satisfied to be sufficient in satisfying the definition.

Due to these limitations, we obtain the view that **concepts are like abstractions/prototypes** - lists of features of things that typically satisfy the concept. Then, people can judge how well a concept applies to a situation by computing the weighted sum of the features shared between the situation and the prototype, minus the weighted sum of the features that differ between the situation and the prototype - $\operatorname{Similarity}(A, B) = a \cdot \operatorname{weight}(A & B) - b \cdot \operatorname{weight}(A \setminus B) - c \cdot \operatorname{weight}(B \setminus A)$. For example, a robin is a more typical bird than a penguin because it has more of the typical bird features, but a penguin can still be considered a bird under this model.

However, there are some issues with this when we get to technical terms - isosceles triangles are generally considered more typical triangles than, say, scalene ones, though they should all be equally typical, as triangles are mathematically any three-sided object. Also, features aren't always independent like this model assumes - a big spoon is typically wooden, and a small spoon is typically metal, so metallic-ness and size are related to each other in terms of how typical a spoon an object is, but this isn't represented in the prototype model.

There is also the view that **concepts are their best examples or particularly good examples of that concept**. Like with prototypes, we have a reference that we can obtain a similarity to for a given situation, but the similarity is either done in some way between the situation and the exemplars, or by constructing a prototype on the fly from those exemplars and computing similarity using the prototype method. Exemplar theory is interesting because it allows concepts to have variability and sizes - the concept of a vegetable just seems somehow larger than the concept of a spoon, perhaps because it has a lot more, highly varied exemplars. Also, we could have a large wooden spoon and a small metal spoon as exemplars, which seems to address the concern with prototypes storing all features independently.

However, if concepts are just their examples, why do some examples group together into one concept, and others into a different one? The predictive power of this model is rather limited.

The example of the tiger painted purely orange is an interesting one: despite removing many of the key features of the situation, we still consider the animal to be a tiger, because the original animal, before all the changes, was a tiger, even if it is now indistinguishable from some other animal. In other words, it seems like the **cause** of the situation matters as well when applying concepts. This is the view that **concepts are theories about what it takes to be a member of that concept**. For example, a broomstick modified with a strip of wood becomes a hockey stick, while a goose painted white doesn't become a swan, because the theory for a hockey stick needs only that it be suitable for hitting a puck, but the theory for being a particular species is a lot more strict.

This causal theory essentially says that a concept is an arbitrary statement about what things can belong to that concept. As such, the exemplar view and prototype view of concepts can be considered an approximation for evaluating these theories. It still doesn't tell us why tomatoes are conceptually fruits rather than vegetables, though, which can be viewed as one of the great failings of philosophy in the twenty-first century.

Going forward, we'll be using this causal theory of concepts when talking about the mind. When we're working with computational representations of concepts, however, we generally use frames.

A **frame** is a list of information that typically applies in a given situation/concept. Frames were proposed by Marvin Minsky to help logical systems make more relevant inferences - where logic tells us what we can do in any situation, frames tell us what we should prioritise and what we should skip. Frames are a way to reduce computing power requirements in most situations - the frame for restaurant dining allows us to infer immediately when we see a waiter that we can ask to be seated, rather than wasting time deducing, say, that waiters exist.

For example, a frame for a course might reference the concept of a course instructor, examples of courses, relations to other concepts, and so on. Basically, the frame acts as an arbitrary structure that we can use to represent the concept of a course. As a result, frames are also often called **schemas**.

A schema for eating at a restaurant, for example, might contain the fact that it's a dining event, the concept of eating occuring at a location, the procedure for eating at a restaurant, examples of restaurants, and so on. It seems that when we're following our mental "autopilot", there are many different fixed scripts that it follows to get us through the day.

Frames can be considered technically equivalent to meta-rules - rules that, when matched, govern things like the priority of other rules and strategies for matching them.

Where **searching** is the process of finding applicable rules in a rule-based system, **matching** is the process of finding the most applicable concept for a situation in a concept-based system.

Most frames can have is-a and has-a relationships with other concepts. As a result, it's possible to build up a heirarchy of concepts, where upper ones are more abstract, and lower ones are more specific. This heirarchy can be taken advantage of in searching/matching, or for finding related things. Interestingly, further meta-rules can be applied to this, like **inheritance** - sub-concepts can often inherit properties of their parents, or override them with their own values.

In the frame model, when we do matching, we do so via **spreading activation** - from a start frame, we go through relevant/related frames below it in the heirarchy, finding the one that applies best by comparing similar and dissimilar features/properties. For example, if naming a child, we might start from names in general, search through everything, and when hitting Irish names, find the one that best satisfies the criteria for a good name (excitatory links) while not satisfying any criteria for a bad name (inhibitory links). This is a decent representation of how human minds tend to be organized by their contents, where considering a situation often brings up similar situations.

The frame model solves the issues logic-based systems have with planning using frames that store fixed scripts - where pure logic ends up considering far too many possibilities to feasibly do planning, frames can simply store the sequence of actions that typically work in the associated situation. This doesn't always work, especially in edge cases, but it seems reasonably close to what humans actually end up doing.

Likewise, frames can solve issues with explanation in logic-based systems by storing pre-packaged explanations for common situations. By not having to do the entire chain of deduction every time, we save a lot of computational effort, even if it's sometimes wrong in atypical cases. This seems like a plausible theory for how humans behave.

In all concept-based models, **learning occurs by acquiring new concepts and refining existing ones**. Concepts are generally acquired by definition (describing their features directly), specialization (adapting a general concept to be more specific), generalization (adapting many specific concepts into a more general one), or composition (putting multiple, possibly unrelated, concepts together into a new one). These are quite straightforward to extend into the frames model of concepts.

# 3/6/16

Analogy
-------

Frames solve the relevance problem in logic-based systems by associating relevant information with concepts via links in frames, rather than searching through all known concepts every single time.

While this does seem to work for typical situations, it is difficult to apply this to novel situations that we do not already have frames for. In these situations, humans will generally use analogies to apply known concepts to new things.

An **analogy** is an alignment of multiple concepts/structures, generally used to adapt knowledge from some of them for the others. Analogies help us explain human creativity, which is something that concepts have a difficult time accounting for alone. One example of an analogy is "stone spear head artifacts were used for hunting, and these metal spear head artifacts are really similar to the stone ones, so they were probably used for hunting as well".

Analogies are often expressed as "A is to B as C is to D", alternatively written "A:B :: C:D", and this is known as a **proportional analogy** (2 is to 4 as 6 is to 12). Here, the knowledge of the relationship between C and D is transferred and adapted to obtain knowledge about the relationship between A and B, even if A and B are very different from C and D.

According to Aristotle, **analogies are inductive generalizations** - we generalize the relationship between C and D until it applies to A and B, and then we apply it. For example, 6:12 is a relation that multiplies by 2, so we generalize it to "multiply by 2" and can apply it to 2:4. Under this view, however, it is often possible to generalize something in multiple very different ways, each of which can give different results. This is a rule-based account of analogical reasoning, and often gives unreliable results when used in rule-based systems.

Mill proposed a more refined way to look at it - **analogies are extrapolations**. We say that since both A:B and C:D share features 1 to $n$, and since A:B has a feature $n + 1$, C:D probably has feature $n + 1$ as well. This isn't much different from inductive generalization, though, and still suffers from unreliability when applied generally.

These rule-based accounts of analogical reasoning present analogy as an unreliable source of information, and don't explain how humans do it very well. An associative view of analogy generally works better here. Modern cognitive science has many of these, one of which, multiconstraint theory, we will be studying in more depth.

In **multiconstraint theory**, **an analogy is a set of associations/alignments between two sets of concepts**. One set of concepts is the **source/base**, which is the concept we are adapting knowledge from, and the other is the **target**, which we are adapting knowledge to and are trying to know more about.

For example, stone spear head artifacts and metal spear head artifacts are two different concepts that we can compare, and they can be aligned along their shape, construction method, situations where we'd find them, and so on - they have **attribute mappings**. Likewise, they can be aligned along their relations to other things and between attributes, like how they're both generally attached to their own types of spear handles (even if they're different types of handles) - they have **relational mappings**. Finally, they can be aligned as systems (correspondences between relations), like how they were used for hunting because of the way they're attached to their handles - they have **system mappings**. These system mappings consitute the knowledge from stone spear head artifacts adapted for metal spear head artifacts - that metal ones were also used for hunting.

Basically, in multiconstraint theory, to evaluate an analogy we adapt attributes, adapt relations between those attributes, and then generate correspondences for those relations between the two concepts. These correspondences between relations (known as system mappings/relations) are the relationships that we are trying to transfer from the source to the target.

In multiconstrant theory, an analogy's **coherence** is guided by its structural consistency (whether the corresponding attributes/relations/system-mappings map one-to-one in the structure of both concepts), similarity (how similar those elements are between concepts), and pragmatic utility (how useful the analogy is in gaining knowledge). Since these are guidelines, they aren't strictly necessary to have a coherent analogy.

The spear head analogy is coherent because it's structurally consistent (whenever we have an element of stone ones, we find the same element in a corresponding place in the metal ones), has similar elements (they're both attached to spear handles, even if different types), and pragmatic (it tells us more about what metal spear head artifacts are used for).

Another analogy example is "dating is like wrestling: you have to stay in your own weight class". We can say that "two daters, desireability" attribute-maps to "two wrestlers, weight class", "the two daters date, the date is successful, the daters are equal in desireability" relational-maps to "the two wrestlers wrestle, the match is fair, the wrestlers are equal in weight class", and "the goal of dates is success, successful dates require equal desireability" system-maps to "the goal of wrestling matches is fairness, fair matches require equal weight classes". This is a coherent analogy, by the standards of multiconstraint theory.

There are many different forms of analogies in real-world use. One that we looked at are **verbal analogies**: "A is to B as C is to D", where all of the variables are words describing a thing or situation. There are also **visual analogies** - "PICTURE\_A is to PICTURE\_B as PICTURE\_C is to PICTURE\_D" - which are often used to transfer spatial concepts across different visual domains. Finally, **emotional analogies** can be used to express subjective emotional experience in a more shareable way, like how "blowing off steam" is an analogy comparing anger to internal pressure, and venting as a release of that pressure. It seems that analogies can be applied to any mental representation we've looked at so far.

As mentioned earlier, analogical reasoning is bad for reasoning mainly because it's easy to make analogies that seem coherent, yet result in incorrect conclusions (these are called **false analogies**). Not only that, but it's sometimes possible for two analogies to both be coherent, yet result in contradictory conclusions - there can be coherent **counteranalogies** to analogies in some situations.

Instead, Gentner says, analogical reasoning is good for determining directions in which to pursue and new ideas to explore (**candidate inference**) when we don't know how to proceed with a problem. For example, Copernicus used analogy to compare people on a ship feeling like the ship is still while the ocean moves backward to us not feeling like the earth is still while the stars move around us to argue for his heliocentric view of the world (even though the actual analogy is a rather weak one and doesn't transfer much knowledge). Since human memory seems to be really good at finding similar things, analogies in these contexts are highly efficient ways to determine where to start when stuck on a problem.

Analogy can also be used for explanation: when performing abduction, it can help generate possible antecedents. In other words, when we're looking to explain something, we may just draw parallels to things we already know, and then use those similarities to adapt a corresponding explanation for that thing.

Analogical provides a good explanation for how humans learn as well - once we've solved a problem successfully, we can then adapt solutions for future problems that we can draw parallels to. Also, after a few analogies that follow the same pattern, we seem to acquire a sort of schema/schemata for solving anything fitting that problem template (**schema induction**). This can be considered inductive reasoning rather than purely analogical, and is generally more reliable than just drawing analogies every time.

# 10/6/16

Imagery
-------

An **image** is a representation that stores some aspect of sensory experience, such as a visual image containing information about what's in the image, and the sensory experience of actually seeing that image. Images are somewhat more concrete than rules and concepts.

It is easy to see that we do have mental images - imagine the smell of fresh coffee, and you will obtain an experience simulating actually smelling  fresh coffee. The question is, what kinds of mental objects are images? Also, what role do they play in cognition, as opposed to just perception (this is called the **imagery debate**)?

Images are useful because many of our modern discoveries have been made with the help of visual aids. For example, tectonic plate theory came about partially due to the mental image of butting South America's east coastline up to Africa's west coastline and observing that they mesh quite well, and Einstein claims to have invented relativity by picturing what it would be like to ride a beam of light. Mechanical engineers often report designing and simulating mechanisms entirely through mental imagery. Additionally, mental images can be used as the base and target of analogies, allowing us to make visual comparisons and transfers of knowledge.

Aristotle claimed that imagination is the ability to recall and manipulate mental images, and as a result, all thinking is done in terms of images. However, this was a controversial view. Descartes, for example, said that we are unable to imagine a 1000 sided polygon, whil Berkely said it's not possible to imagine abstract concepts like triangularity, only concrete instances of triangularity. In other words, **images aren't able to represent all of the things concepts can**.

**Quasi-pictorialism** is the view that visual mental images resemble what they represent, and have a significant role in cognition. By "resemble", we mean that parts of the image correspond to parts of what it represents, and spatial relations between parts of the image, like proximity and adjacency, correspond to relations between parts in what it represents. In pictorialism, we might think of visual mental images as graphics files encoding spatial information. We will be studying pictorialism as presented by Steve Kosslyn.

Quasi-pictorialism is different from pictorialism in that pictorialism has a "monitor" for the images in which these mental images are shown to the mind, while quasi-pictorialism doesn't. According to Kosslyn, however, there is a visual buffer in short term memory in which visual mental images can be placed in and manipulated, and experiencing visual imagery occurs whenever a visual mental image is placed in this buffer.

Visual mental images resembling what they represent has some basis in empirical psychological research. For example, when asked "are these rotated 3D shapes the same?", subjects took time proportional to the amount of rotation to answer, which supports the idea that they are visually rotating those shapes. When asked to memorize a map, and then recall whether different locations exist on it, subjects took time proportional to the distance of those locations to the point they were focusing on, which supports the idea that they were visually scanning for the location starting from their focal point.

Some of these experiments are considered questionable because they told candidates specifically to scan for locations, or to mentally rotate the objects. A better designed experiment placed a dot on a canvas, removed it, then placed an arrow on the canvas and asked subjects whether the arrow pointed at where the dot was originally, without telling them how to get the answer. It turns out that subjects take time proportional to the distance from the arrow to the dot, which suggests that subjects are mentally extending the arrow to see if it intersects.

Visual mental images having a significant role in cognition also has some experimental evidence. fMRI studies suggest that an area of the visual cortex, V1, has a function similar to the visual buffer described by Kosslyn, because its structure spatially resembles the retina and activity patterns correspond to intense visual manipulations like 3D rotations. However, there is also conflicting evidence, and other studies have not seen comparable activity in V1 for visual tasks like testing whether a point is in a shape. A different study tested effectiveness at visual tasks when trying to visualize something versus trying to auralize it, and found that effectiveness at the tasks dropped a lot more when visualizing - this suggests there is a single visual resource that is used to perform visualization-related tasks, which is evidence in favor of the visual buffer concept.

**Descriptionism** is the view that visual mental images are actually just descriptions of/propositions about what they represent, and they don't have a significant role in cognition. Together, pictorialism and descriptionism are the two main sides to the imagery debate. We will be looking at descriptionism as presented by Pylyshyn. Since descriptionism is sort of the default view (since the imagery debate takes place in the context of rule/concept based knowledge frameworks), most of the support for descriptionism is evidence shooting down pictorialism.

Note that visual mental imagery is only a subset of general knowledge, and theories of visual mental images don't try to explain how we have general knowledge.

One criticism of pictorialism is, "how are images represented mentally if they must be perceived to be a mental representation?". If, as pictorialism says, all visual mental images are only representations when perceived themselves as visual mental images, then in order to mentally represent something, we would have to have a never ending chain of an image representing the perception of an image representing the perception of an image, and so on. The infinite regress of perceivers perceiving themselves is a criticism of pictorialism because it says pictorialism gives an absurd result. However, this doesn't seem to be a valid criticism, since images can still be mental representations even when not perceived, so we don't actually need an infinite chain of perception for it to work - pictorialism is no worse than description in this regard.

Another criticism of pictorialism is that it's unfalsifiable: the definition of a visual mental image is defined so loosely that any experimental result could be interpreted as support of it. In response, a proponent of pictorialism might say that the difficulty in falsifying is due to the inherent complexity of the problem itself and in obtaining good evidence for any position on the problem, and it should be expected to be difficult to falsify even when it's known to be valid. The pictorialism view is computationally equivalent to the descriptionism view. However, pictorialism makes certain testable empirical claims about the structure of the human brain that may support or falsify it in the future.

Another criticism of pictorialism is that visual mental images don't explain the flip-flop effect very well. A famous example of this is the image that can be interpreted as either two faces facing each other, or a candlestick. Normally, when one views the image in the real world, it is easy to switch back and forth and see either interpretation. When asked to memorize the image, it is often only possible for subjects to see one of the interpretations, which suggests that the image is being memorized as a description of the interpretation they saw when they were memorizing the image, rather than the image itself. If they memorized the image instead, we would expect that they would be able to see both interpretations in their mind's eye. On the other hand, descriptionism doesn't explain certain operations on visual mental imagery very well too. For example, "is a sideways N the same as a Z?" would be difficult to answer just from a description of what the letters look like, but most people can answer the question quite easily. A proponent of pictorialism might say that the seemingly irrelevant details of mental images quickly fade away and are forgotten, which would explain why we can't reinterpret the candlestick as the faces, and vice versa.

Regardless of whether we support pictorialism or descriptionism, we also want to ask how they work as mental representations to store knowledge. Due to being specific to spatial activities, images aren't really suitable for representing general knowledge.

One way images can be mental representations is the "deep" representation: images are stored as frames (in the same sense as frames in the concept model of knowledge) that contain all of the information needed to reconstruct the actual visual image from it. This is often proposed as how images are stored in long-term memory.

Another way images can be mental representations is the "spatial" representation: images are stored as multidimensional arrays or graphs that are filled with labels according to the position of each entry in a perspective-independent way. Then, we can apply computations like "is object A north of object B?" on the array. The advantage of this approach is that it can be embedded in other spatial representations and worked with very easily. In fact, many computer visual applications use a similar representation for visual data.

Another way images can be mental representations is the "visual/occupancy array" representation: images are stored as a 2D or 3D array filled with boolean values determining whether each position is filled by an object, from a particular perspective (as opposed to a perspective-independent spatial array). The advantage of this representation is that it is easy to perform operations like rotating, zooming, and transforming on the image.

# 17/6/16

Connectionism
-------------

Classical cognitive science sees thinking as computation over mental representations. So far we've looked at rule-bases systems, concept-based systems, and image-based systems. The 