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

Classical cognitive science sees thinking as computation over mental representations. So far we've looked at rule-based systems, concept-based systems, and image-based systems. However, all of these systems have been based on creating a mind on a digital computer, while the human brain is structured nothing like our computers. We will now look at non-classical models of cognitive science.

Due to the massive differences between the structure of computers and brains, **connectionist models of cognition**  were developed, which attempt to explain cognition in terms of **connected networks of neurons**. In connectionism, knowledge is represented in the state of neurons and the connections between them, and thinking is the process of constraint satisfaction over those units. Additionally, all neurons operate in parallel, unlike a digital computer, which can only really do one thing at a time. Connectionist accounts of cognition are focused around satisfying constraints.

A **neural network** consists of a set of nodes and a set of connections (known as **links**) between them - a directed graph with labelled edges and nodes, where the edge labels are **constraint weights** (generally -1 to 1) and the node labels are the neuron's **activation value**. Edges with negative weights are called **inhibitory**, edges with positive weights are called **excitatory**, and the magnitude is the **strength** of the connection.

The activation level of a node (if not explicitly specified) is the value of an **activation function** called over sum of the activation levels of all nodes that connect to it, weighted by the constraint weight of each connection - for a node $i$, this is $\operatorname{activationFunction}\left(\sum_{j \in \text{nodes that connect to } i} \operatorname{activationLevel}(j) \times \operatorname{connectionWeight}(j, i)\right)$. The activation function is generally linear, Heaviside (step function), or a sigmoid function (like $\tanh(x)$), though the sigmoid function best approximates how real neurons work, so it's the most popular.

It takes time for the activation level of a node's neighbors to be updated when the activation level of that node is changed. Eventually, all node activation levels stop changing, and the system settles down into a steady state. The propagation process can be thought of as each node trying to maximize the activation level of its "friends" (nodes it's connected to via an excitatory link) while minimizing its "enemies" (nodes it's connected to via an inhibitory link).

One way to do useful processing with neural networks is to use **localized networks** - certain nodes are assigned specific, concrete meanings. In a network that tries to categorize things into cats and dogs, one node might represent "the thing we're seeing is a dog", while another node might represent "the thing we're seeing is a cat".

In localized connectionist models, neurons operating in parallel modify the behaviour of other neurons they're connected to (the characteristics of these modifications are known as neural constraints). According to Gestalt psychology, thinking is an optimization process: neurons constrain other neurons they're connected to, and thinking is the process of satisfying those constraints as much as possible over the whole network by changing its inputs. The network can learn new things by changing the constraint weightings.

The **deliberative coherence** (DECO) model is a localized connectionist model that can represent decision making. Each node represents either a goal (activation level represents whether goal is achieved) or an action (activation level represents whether the action is performed), or is the special goal priority node. All links in the DECO model are bidirectional, so a link between A and B behaves like two links, one from A to B and another from B to A, with identical weight. Excitatory links connect action nodes that allow other action nodes to be performed, or action nodes that allow goal nodes to be achieved.

The goal priority node is connected to each goal with link weights used to determine how important those goals are relative to each other. When the goal priority node is activated (has its activation level manually set to 1), the values propagate through the network, resulting in the nodes representing actions we should take to achieve that goal being activated as well when the network settles into a steady state.

For example, in a network that determines whether something is a cat or a dog, suppose we want to get the inputs that would make something resemble a cat, but not resemble a dog. To do this, we'd make the network bidirectional, then connect the goal priority node to the "the thing we're seeing is a cat" node with an excitatory link, and the "the thing we're seeing is a dog" node with an inhibitory link. By activating the goal priority node and letting the network settle into a steady state, the inputs that activate the "the thing we're seeing is a cat" node get activated - the things we need to see in order to consider something a cat and not a dog.

A similar **explanatory coherence** (ECHO) localized connectionist model can be used to represent explanations. Here, each node is either a piece of evidence, a hypotheses, or the special data priority node. Just like with the DECO model, all links are bidirectional. Excitatory links connect evidence nodes that explain/analogize hypothesis nodes, while inhibitory links connect evidence nodes that contradict evidence nodes or hypothesis nodes that compete with hypothesis nodes.

The data priority node is connected to each evidence node that we've observed, where weights represent how strong the evidence is. When the data priority node is activated, the values propogate through the network, resulting in the hypothesis nodes that best explain the evidence being activated.

Localized networks are nice because it's simple to interpret the results and how we achieved them, since each node has a specific, understandable meaning (this property is called **transparency**). That said, localized networks are prone to settling into local minimums, and it's difficult to make them learn new things - real problems might require adding whole new nodes and building new links out between different nodes, even while the activation propagation process is running. Plus, there isn't much evidence that human brains actually use anything like the DECO or ECHO models. For example, there doesn't seem to be a single neuron representing "this object is blue".

**Distributed networks** (also known as artificial neural networks) explain human brains better than localized networks, by representing knowledge in a distributed way, over multiple neurons and links between them. Rather than a single neuron representing "this object is blue", there might be a cluster of neurons, a certain pattern of which represents that concept. Unlike localized networks, distributed networks are generally not transparent, but they are usually a lot better at learning things.

Lashley's research into neuron damage discovered that cognitive deficit is proportional to the number of neurons lost - neurons work together in groups in order to represent knowledge. For example, the human visual cortex contains a cluster of neurons that fire in a pattern when there is the perception of something moving upward. We also notice that this cluster has a lot of connections between neurons in the group, and fewer connections with neurons outside of the group. Within the group, some neurons might recognize "moving directly upward", "moving upward and slightly to the left", "moving upward and rotating", and so on - together, their average behaviour represents whether that thing is moving upward, and that knowledge is represented by the group of neurons.

A layer within a neural network is a collection of neurons that serve a specific purpose, such as representing the output of the neural network, or recognizing convolutions.

A **perceptron** is a two-layer neural network with an input layer with multiple neurons and an output layer with a single neuron, where all nodes use the Heaviside activation function (step/threshold function) with a certain threshold, and there are only connections between the input neurons and the output neuron. Sometimes, we use a bias instead of a threshold, so we add the bias to the activation level and activate if and only if it's positive.

Minsky and Papert proved that perceptrons can learn to exactly mimic any linearly separable Boolean functions - any function where the function values that are true can be separated from the function values that are false by a hyperplane in the function's parameter space. This includes functions like AND/OR/NOT, but not functions like XOR and XNOR. The idea is that each neuron might be represented by a perceptron.

To teach a perceptron, we initialize all the weights $W_1, \ldots, W_n$ (where $W_i$ is the weight of the link between the $i$th input neuron and the output neuron) to 0 or small random numbers. Then for each sample in the training set, if the output $y$ of the perceptron for the sample inputs $x_1, \ldots, x_n$ doesn't match the sample output $O$, we update each weight with $W_i = W_i + C(O - y)x_i$, where $C$ is the chosen learning rate between 0 and 1 (this is chosen by the user to maximise training effectiveness). In code:

```python
class Perceptron:
    def __init__(self, num_inputs = 1, threshold = 0.5, learning_rate = 0.5):
        self.weights, self.threshold, self.learning_rate = [0] * num_inputs, threshold, learning_rate
    def train(self, sample_inputs, sample_output):
        output_error = float(sample_output) - float(self.classify(sample_inputs)) # how different the expected and actual outputs are
        self.weights = [weight + self.learning_rate * output_error * input for input, weight in zip(sample_inputs, self.weights)]
        self.threshold = self.threshold - self.learning_rate * output_error
    def classify(self, inputs):
        level = sum(input * weight for input, weight in zip(inputs, self.weights))
        return int(level >= self.threshold) # the activation function here is the Heaviside function centred at `self.threshold`, but some perceptrons might use something like a sigmoid function instead
```

A multilayered network is one with 3 or more layers. Generally, we talk about networks with 3 layers: input layer, hidden layer, and output layer, each with varying numbers of neurons. A 3-layer network can actually mimic any continuous function within a certain interval for each input (universal approximation theorem), so networks with more than 3 layers theoretically have an equivalent 3-layer network under common conditions. To simplify things, we often just talk about 3-layer networks, as it's easy to generalize to more layers.

Minsky and Papert also speculated that there is no learning rule that guarantees that a neural network can learn to mimic an arbitrary function. This is still an open question for research, though in practice we have algorithms that can give pretty impressive results already, even if they don't work for everything. Note that neural networks can in fact mimic any continuous function - it's just that there might not necessarily be a general algorithm that teaches the network to do so.

One of these learning rules is **backpropagation**, which is known to not be able to teach a neural network correctly for all inputs, but works great for certain problems. Backpropagation is capable of teaching 3+ layer networks functions like XOR and XNOR. Common backpropagation algorithms rely on differentiating the error function (how accurate the network is overall) with respect to each weight, and then using something like gradient descent to update the weights in order to minimize the error function.

Backpropogation somewhat resembles the perceptron learning rule:

1. Set all weights randomly.
2. For each sample in the training set:
    1. Let the network settle.
    2. Calculate the error - how far each output node is from the corresponding sample output.
    3. Update weights for links between the output layer and the previous layer according to the error: reduce weight for links going to an output neuron if it has negative error, increase weight for positive error.
    4. Repeat step 3 for links between the previous layer and the previous previous layer, and so on, until we reach the input layer.

One of the first impressive uses of artificial neural networks was NETtalk, which accepted a sequence of characters on its input layer and output a phoneme. The neural network achieved excellent accuracy and was capable of learning from examples, beating many competing rule-based systems of its time. Neural networks perform excellently in tasks that have "noisy" inputs or no formally defined theory for what an output should be given an input. As a result, they're currently being used for things like autonomous driving, handwriting recognition, and image classification.

In distributed connectionist models, the knowledge being represented seems to follow a concept-based account - classifying certain input combinations (input neuron values) into certain categories (output neuron values). The weights within a neural network are somewhat analogous to frames within a concept-based system, since they also store information about what's relevant in a given situation. On the other hand, each node might contribute to any number of outputs - concepts are not represented in any particular node or link weight, but rather across the whole network. Since nodes aren't really distinct from each other, it's actually the weights between nodes that represent the information.

Concepts in a neural network are organized associatively - if a previously unseen input is close to an input we have seen, the network is likely to give an output close to the output for that input we have seen. In other words, the output space of neural networks is generally quite smooth. This property is often seen as the ability for neural networks to generalize from examples, which is somewhat similar to the way humans generalize from examples.

One criticism of connectionism is that neural networks tend to be bad at learning things **systematically**, such as the ability to combine different pieces of knowledge together to form new knowledge. Humans are good at systematic thinking, and can often make very good generalizations from very few examples, while neural networks seem to require a huge amount of training data to learn that sort of thing.

The connectionist response to this might be that more complex ways of representing information and deeper networks (networks with more layers) allow this sort of systematic/structural information to be encoded as well. It's also possible to use structures like recurrent neural networks, where the outputs of certain layers from the previous run are fed back into the inputs of certain layers for the current run (generally, the hidden layer output is fed back into that layer). This allows the network to have a sort of context or memory. Note that with recurrent neural networks, knowledge is represented between the link weights, the outputs from the previous run, and the structure of the neural network (specifically, which outputs are connected back into the inputs).

The distributed connectionist model is nice because the human brain, like an artificial neural network, uses a distributed representation for knowledge, degrades gracefully when neurons are removed, and can generalize from examples. However, artificial neural networks are currently vastly smaller and simpler than the human brain, so it is possible that standard neural network architectures wouldn't scale up to human brain levels, or that there are chemical and biological interactions between neurons that the model doesn't capture. Also, there isn't currently much evidence that anything like backpropagation happens in the human brain - the human brain seems to learn using some other rule.

# 1/7/16

Neuroscience
------------

Classical cognitive science is based on the idea of thinking as computation. So far, when we've been talking about computation, we've meant computation on a general-purpose (Turing-complete) digital computer, like the digital ones we use as tools. However, neuroscience tells us the brain looks more like an analog, special-purpose device. Is classical cognitive science's model of thinking as computation still applicable/useful?

Historically, study of the brain began somewhere in the 1500s with anatomical studies. By the 1800s, this developed into phrenology - the idea that the brain was divided into distinct regions, each providing some particular psychological function like language, instinct, vanity, and religion. For example, a vain person would have a large vanity brain region, and we could therefore obtain information about the person's vanity by checking the shape of that person's skull to see how big their vanity brain region is. By the 1900s, we finally had the **neuron doctrine**: the brain is composed of billions of distinct cells connected in complex ways, and the interactions between those cells cause human behaviour.

Modern neuroscience, at the highest level, still divides the brain into distinct regions, each more-or-less with their own function. These divisions are known as **brain maps**, and the regions are known as **cortexes**.

Modern neuroscience depends heavily on technologies such as fMRI and PET scanning to obtain these measurements. Most of these technologies measure brain activity by determining how much oxygen each region is consuming. PET scanning has the subject injected with a weak radioisotope, then measures brain activity in a certain region by the level of radiation within that region - more radiation in a particular region means more blood/oxygen is being taken to that region, so that region must be more active. Likewise, fMRI measures brain activity in a certain region by determining how blood in that region interferes with radio waves, since oxygenated blood has different magnetic properties than non-oxygenated blood. By making measurements of the brain at a rest state, and in an experiment state, we can determine which parts of the brain get activated for a given experiment state.

Modern neuroscience has also benefitted greatly from electroencephalogram (EEG) technology, which measures electrical activity on the surface of the brain from the skin. EEGs have better temporal resolution than imaging technologies like fMRI and PET, though they give a lot less spatial information. This makes them more useful for measuring specific fast cognitive events, such as the exact moment when the brain starts paying attention after it hears a sound. These measurements are often done using the event-related potentials procedure, which measures the same activity over multiple runs and then averages them together to get rid of noise.

One criticism neuroscience raises about classical cognitive science is that the idea of thinking as computation can cause misleading analogies if we keep thinking of brains as computers. For example, Marr's account of human vision uses three levels of abstraction and approaches vision in a way that a computer scientist might model it, but it isn't particularly connected to how the brain actually works mechanically. General-purpose computers are designed, while brains are a product of evolution - we should not study the brain as if it has clear labels and encapsulated modules within it, like we would if the brain were designed by an engineer.

In other words, classical cognitive science focuses too much on how to implement human behaviours on a general-purpose computer (and then saying the brain is theoretically equivalent to a general-purpose computer), and not enough on looking at how the brain actually works. According to neuroscience, it's pointless to theorize about human cognition without knowing much about the brain.

For example, a common account of monkey finger motion said that there is an area of the monkey brain for each finger, to control them individually. This is a very intuitive explanation for finger motion, and is probably what someone designing a robotic monkey would use. However, it turns out that monkey brains actually require more activity to precisely move single fingers than to to whole-hand motions like grasping. Since grasping is one of the most basic motions needed, monkey brains seem to have developed to do those basic important hand motions, and all other motions seem to be implemented as modifications/exceptions on top of those motions.

Modern neuroscience also tells us that our connectionist accounts of the brain are likely incomplete. For example, the average firing rate of biological neurons is represented by the activation level in artificial neurons, but the firing in biological neurons can actually occur in many different possible patterns over time - there are many possible firing patterns that achieve a given firing rate. There is some evidence that these patterns are actually significant; for example, some neurons respond to firing patterns by repeating the pattern, while some might not.

In response to this, there are connectionist models of the brain such as spiking neural networks that can also model these firing patterns. The idea is that the activation level of each neuron represents its firing rate - the probability that the neuron will fire at a given time step. When we're running the network step by step, each neuron accumulates activation from its firing neighbors, until it reaches a certain threshold and itself fires. Many of these models essentially treat activation as a quantity that is passed around the network, accumulating in neurons when their neighbors fire, and decaying over time. Though these don't have much more computational power than normal artificial neural networks, they're often more useful for modelling biological systems.

There is also some evidence that biological neurons have a significant chemical component to their operation in addition to just electrical activity. Modern neuroscience actually knows of three different ways to do chemical signalling, each with possibly hundreds of different possible chemicals: autocrine signalling (a neuron signalling itself), paracrine signalling (a neuron signalling its neighbors), and endocrine (a neuron signalling far-away neurons or other cells via hormones in the bloodstream). Each neuron can release many different types of these neurotransmitters, and can have many different receptors for different neurotransmitters, each of which can affect whether it fires or not. These signals would significantly increase how much information each neuron can represent, and at the moment, does not have a good equivalent in connectionist accounts.

Classical cognitive science is at odds with modern neuroscience because the brain is nothing like a general-purpose computer. Proponents of neuroscience say that thinking as computation is too misleading to explain human cognition, while proponents of classical cognitive science say that the implementation isn't important, only the algorithms are. However, Thagard proposes another option: cognitive science should use both brain-level and computer-level descriptions, and they can be reconciled by considering them as being at different levels of abstraction.

Emotions
--------

Are emotions a part of cognition?

Many people say no: that emotion doesn't contribute to knowledge or intelligence, that emotion is an evolutionary holdover from when we didn't have intelligence, and so on.

Cognitive science divides states of mind into 5 categories: basic emotions (states that all other emotions are built on top of, like happiness or anger), complex emotions (emotions directed toward specific things, like love of X or shame about Y), feelings (states that we are aware of that are also not emotions, like hunger or calmness), moods (persistent states, like depression and apathy), and personality traits (permanent biases in states, like shyness or bravery).

Emotions can be positive/negative, cause different physical symptoms (embarassment causing flushing in the face, for example), and cause different mental predispositions (like apathy reducing mental willpower, for example). Emotions are different from moods and personality traits in that they are transient and might only be present as a result of one's current situation. Emotions can be considered a type of feeling, ones that are combinations of the known set of basic emotions.

Oatley gives an account of emotions called **appraisal theory**, in which basic emotions are assessments of how well the current situation fulfills one's goals. For example, happiness is when goals are achieved, anger is when goals are being blocked, and fear is when goal fulfillment is threatened. Under this account, complex emotions are when these basic emotions are associated with specific cognitive representations - complex emotions are structures that represent "I feel EMOTION about SOMETHING". However, appraisal theory doesn't explain why emotions are phenomenal - they have real effects, including physical effects on the body and mental effects on the mind. For example, why does anger increase our skin temperature?

Other accounts of emotion, like **James-Lange theory**, say that emotions are perceptions of bodily states - we feel fear because our body is trembling in response to stimuli, instead of our body trembling because we feel fear. There is some evidence for this: smiling is known to induce happiness. One criticism of James-Lange theory is that people that can't smile can still feel happiness. Additionally, something like trembling could be the response for a number of possible states, like being nervous, or afraid - which emotion should be induced when trembling?

Another account of emotion, **autonomic theory** is actually based on real neuroscience. This account says that there are certain parts of the limbic system (a subset of the nervous system) that decide what emotions to feel, then send commands to the brain to experience those emotions and send commands to the body to react. For example, the amygdala is known to induce feelings of fear when manually stimulated. The amygdala is currently considered responsible for many of the primitive, survival-related emotions, but other areas of the brain are also known to be responsible for different emotions.

The **somatic marker hypothesis** is an account of emotions that tries to explain more complex emotions that autonomic theory doesn't. It says that emotions are images of the state of the body attached to images of the state of the mind, and that the limbic system is responsible for making these attachments. For example, being embarrassed about missing an exam is the image of the body being embarrassed (like flushing in the face) attached to the image of the mental event of missing an exam. This account is nice because it explains the role of the limbic system, works for both basic and complex emotions, and explains the existance of physical responses to emotions.

Turing thought that emotions were an emergent property of intelligence. The somatic marker hypothesis, on the other hand, says that emotions are specialized interactions between the limbic system and the rest of the brain. One way to explain why the body is required for emotion is the evolutionary approach: anger prepares us to attack whatever is obstructing our goal, while fear prepares the body for fighting or running away. In other words, emotions are states of body and mind that are advantagous in certain situations.

People who have certain parts of their limbic system damaged are known to start having behavioural issues. In certain cases, when the connections between the limbic system and the higher reasoning regions were disconnected, the subjects were unable to associate somatic (body-related) images with cognitive images, and were therefore unable to associate emotions with cognitive states. These subjects no longer knew how they felt about plans and decisions, and seemingly lost the ability to effectively evaluate them.

This implies that **emotions are a necessary part of cognition**, and that humans need emotions to effectively evaluate how well our cognitive activities are running. Additionally, this implies that effective cognition requires some sort of representation of the body, in order to have those emotions.

# 8/7/16

Consciousness
-------------

It doesn't seem possible to directly perceive consciousness - consciousness seems to only exist to the consciousness that experiences it. As a result, conscious people must have observable and unobservable aspects.

The **mind-body problem** is the problem of how the unobservable and observable interact - if the consciousness is intangible, how does it actually affect the physical body that we observe? If it's intangible, what's the difference between a conscious person and a non-conscious person, given that everything the body does is accounted for by physics? According to Descartes, the body is made out of matter, the mind is made out of intangible substance, and they communicate via a region of the brain called the pineal gland (**substance dualism**). However, this theory is rarely accepted now because we actually know about physics.

For our purposes, consciousness is a state of mind, specifically the **state of having conscious experiences**. These conscious experiences are known as **qualia**, and are distinct from knowledge - if you see a firetruck, there is both the knowledge that we are seeing the firetruck, and the experience of seeing the firetruck itself. Qualia seem to be experienced by humans and several other advanced animal species.

Qualia don't seem to fit into the framework of classical cognitive science - we can't seem to explain qualia in terms of things like knowledge, or rules, or networks.

A philisophical zombie is a person that doesn't have qualia, but otherwise is physically 100% human. A philisophical zombie can pass any Turing test, but without qualia, we generally wouln't consider them conscious.

Consciousness in philisophical terms seems to be distinct from self-consciousness, which is the awareness and knowledge of oneself and one's perspective of the world. Self-consciousness can fit into existing cognitive science frameworks just fine, generally as representations of the self and the world, and relationships between those representations.

In English, the word consciousness itself generally means awareness of wakefulness. We generally measure awareness/wakefulness in a person by looking at how they respond to stimuli. Consciousness, for our purposes, is either wakefulness (the state of being responsive), having qualia (the state of having conscious experiences), or self-consciousness (the state of awareness of the self). Out of these, only qualia really cause problems when we try to fit consciousness into frameworks in classical cognitive science, since we still don't know how to make a computer experience things.

**Materialism** (also known as **physicalism**) is the view that all phenomena are the result of interactions between matter, including things like consciousness, and that physics alone can fully describe all phenomena. Note that philisophical zombies are impossible if materialism is the case, because anything that is physically identical to a conscious thing must also then be conscious as well.

The **functionalist** view of consciousness looks at consciousness in terms of what it does and what its functions are. According to functionalism, the function of consciousness is to detect what's happening around us, relate that to a mental model of the self, and use that model of the self to control activities. In other words, functionalism says that consciousness serves as the operating system of the mind.

Since we look at things from a purely functional approach, this view is relatively compatible with theories in classical cognitive science. This is because if we look only at the function of consciousness as opposed to how it must be implemented, we're in a better position to emulate those functions using digital computers (implementing the same functionality in different ways is known as multiple realization).

On the other hand, the functions of consciousness alone don't seem to account for things like qualia - most people think that an emulated consciousness on a digital computer don't have qualia. This is called the **problem of multiple realizability**. Qualia seem to be different in some fundamental way from just mental representations and procedures.

There are some issues with how well functionalism fits our observations of how the mind behaves. For example, certain optical illusions can fool our conscious mind, yet our motor system interprets them correctly and moves in a way consistent with not being fooled by the illusion - there seems to be more at play than just controlling activities directly from representations in the consciousness.

Chalmers proposes a solution to the issue of qualia within the functionalist account, known as **property dualism** - there are two types of properties of matter (mental and physical), and mental properties emerge from certain material objects, but are distinct from and irreducible to physical properties. In this view, anything that functions like a consciousness would also have qualia. To justify this, Chalmers presents the neuron replacement argument (where a conscious brain's neurons are gradually replaced by artificial ones, eventually replacing the entire brain, yet the brain never notices any changes). Chalmers also argues that mental properties are also basic properties of matter, just like electromagnetism and gravity, and that we should be studying these phenomenal properties scientifically. Note that under property dualism, since mental properties can be different between two physically identical objects, it is possible for philisophical zombies to exist.

Property dualism is nice because it has a lot of intuitive properties like compatibility with materialism and functionalism, while also ensuring that consciousness is localized to regions like the brain. However, property dualism doesn't seem to be falsifiable given that there's no way to physically measure phenomenal properties.

From a neuroscience perpective, we can look at consciousness as being certain brain states - consciousness is a certain pattern of neurons being activated. Neuroscience can be considered to give an **identity materialist** account of consciousness, in that consciousness is fully described by the physical properties of the brain.

Some people might think that the experience of seeing the color red is different from having a particular pattern in the brain. However, the identity materialist response to this might be that it's the same phenomenon from two different perspectives - one from the being experiencing red, and the other from a third party observing the being, just like how "my brother" and "John Doe" might be the same person, but from different points of view. In this 

On the other hand, if identity materialism means that consciousness is a set of brain states, then only human brains can be conscious. This seems contrary to the intuition that many other types of animals have qualia as well.

Neuroscience on wakefulness: EEG studies of the brain show that there are large-scale patterns distinct to wakeful and non-wakeful states - conscious states are distinguished by high-frequency, irregular EEG waveforms, while unconscious states tend to be slower and more regular. Studies of brains that have specific damaged regions (lesion studies) show that specific regions of the brain are responsible for the various behaviours associated with wakefulness. For example, the thalamus, a region on top of the brain stem, relays sense data into higher regions of the brain when awake, and fires in oscillating patterns when asleep (the thalamus going into this state is generally considered responsible for dreaming).

In addition to neuron firing patterns, there also seem to be chemical components to human wakefulness. For example, sleep seems to be the most important ways glycogen (sugar that powers neurons) is replenished within the brain. As a result, consciousness (in terms of wakefulness) can be thought of as a particular set of patterns in electrical and chemical activity in the brain.

Neuroscience on qualia: Crick and Koch said that we can learn about what qualia are and how/why they arise by looking at **neural correlates of consciousness** (NCCs) - neural activities that occur when and only when people report conscious experiences, specifically where those acitivities occur and what patterns they follow.

Crick and Koch concentrate on the visual aspects of consciousness, and say that the reason we have visual qualia is to produce the best possible interpretation of visual sensory data, and to use this to inform brain regions that control voluntary actions - in other words, qualia have a strong survival benefit by giving the person a better perspective to make decisions from.

Crick and Koch say that visual attention is the result of groups of neurons within the neural associative cortex competing and feeding back into each other for different interpretations of visual data, and that these feedback loops between neurons is what makes up short-term memory. Also, they identify that the motor cortex is where voluntary actions are controlled. Crick and Koch say that the visual associative cortex and motor cortex are the main NCCs for vision-related aspects of consciousness.

Blindsight is a well-known phenomenon in which people who have no visual experience perform much better than expectrd on visual tasks. For example, people with damaged visual cortices (who then report not having any visual experiences, while still being able to see) are able to tell which quadrant a dot flashed on screen appeared in. This is explained in that there are dorsal and ventral streams of visual data, and when visual experience is broken, it's usually only the ventral stream that gets interrupted.

An interesting consequence is that even normal brains are capable of blindsight. When a dot is flashed too fast for a person to be consciously aware of it, they can usually still identify which quadrant the dot was in, even if they never consciously saw it.

Binocular rivalry is a phenomenon in which when each eye is shown a different image, the brain only tends to be able to perceive one at a time. This is useful because if we measure neuron firing patterns associated with perceiving the left eye image versus the right eye image, we can find NCCs for binocular rivalry. Crick and Koch performed an experiment about this on monkeys trained to signal what they were perceiving, and the results seemed to show that NCCs can be found in the frontal/associative cortex - regions where sense data is packaged into an interpretation used for voluntary action in other parts of the brain.

While Crick and Koch focus mainly on the neuroscience aspects of consciousness, Baars approaches this from the functionalist angle - figuring out what kinds of representations and procedures we could use to implement the function of consciousness. According to Baars, consciousness is the thing that coordinates independent, unconscious mental processes (like perception, motor control, long term memory, language, etc.), provides working memory for any of these processes to read or write to, and has an attention mechanism that can highlight certain parts of the working memory - this is the **global workspace theory**.

In this theory, the mental processes are inflexible but highly efficient at their tasks (and can also run in parallel, taking advantage of the architecture of neural network hardware), while consciousness' working memory is a lot more flexible but is a bottleneck for performance. Working memory allows these mental processes to come up with the best interpretation of the world, and attention allows processes to focus on things for learning and other serial tasks. Also, having representations in working memory allows us to do introspection and as a result, allowing for critical thinking.

This theory seems to explain some of our behaviours pretty well, like how when we're preoccupied (all working memory being used), we tend to fall back on automatic behaviours (the mental process for background tasks are running independently without consciousness guiding it). Also, it explains why consciousness has clear bottlenecks and feels like a serial process, even though the brain is massively parallel (there isn't enough working memory or attention for all processes at once).