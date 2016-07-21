PHIL271
=======

Philosophy of math - ten philosophical puzzles about mathematics. This is listed in the undergraduate calendar as "Special Topics", and there are usually different topics for this course every term.

    Section 001
    David DeVidi
    Phone: 5198884567 ext. 35701
    david.devidi@uwaterloo.ca

# 2/5/16

In this course we discuss 10 mathematical/philisophical puzzles, at a rate of about one per week. There are readings for each topic, and they will be discussed and expanded on in class. The last two puzzles will actually be chosen by the class.

Math and philosophy are both a priori disciplines - we don't have to look at the world itself to learn about it. Math and philosophy also both heavily concern themselves with argumentation - math with proofs, and philosophy with debate.

Infinity
--------

What is infinity? Colloquially, it can be said to be a value that is larger than any number that can be conceived of. However, these sorts of explanations tend to run into trouble in practice. Throughout the years, infinity has been described as something that is unlimited, unbounded, or even beyond comprehension.

A **potential infinity** is a process that doesn't end. For example, the natural numbers are a sequence without an ending, and infinity simply denotes the direction that it grows toward, rather than some thing or value we actually reach. An **actual/completed infinity** is an unending quantity that we actually reach - the process actually completes. Most historical philosophers thought that potential infinities exist, but completed infinities do not. Eventually, as the field of mathematics advanced, completed infinities became necessary.

However, accepting completed infinities has some nonintuitive consequences. For example, it was previously thought that for any particular thing, the whole thing would be greater than the sum of its parts. With infinite sized sets, this isn't necessarily true. For example, we can make a bijection between the set $\set{n \middle| n \in \mb{N}}$ and $\set{n + 1 \middle| n \in \mb{N}}$ with $f(x) = x + 1$, yet the second set is only a part of the first (all the same elements, except for $1$). Essentially, even though we took out an item, it seems like the set remained the same size.

Dedikind actually used this to define infinity: as something that is the same size as one of its parts. Anything that doesn't obey "the whole is the same size as the sum of its parts", he said, would be called infinity.

Cantor had a different view. He started by defining finite as something that could be bijected with some fragment of the natural numbers - that there exists a natural number $n$ such that all natural numbers up to $n$ can be put in a one to one correspondence to that thing. Then, infinity can be defined as anything that isn't finite.

Cantor also showed, through the diagonalization argument, that positive rational numbers can be bijected with the natural numbers. In other words, the number of fractions is the same as the number of natural numbers. However, note that the numerators and denominators of rational numbers are both also just natural numbers, so the set of natural numbers is the same size as the Cartesian product of the set of natural numbers - there are an "infinity of infinities", so to speak.

Infinity makes arithmetic weirder. For finite numbers, $ab = bc \wedge b \ne 0 \implies a = c$, yet this doesn't apply anymore when we start dealing with infinities.

Sets and Foundationalist Mathematics
------------------------------------

Historically, not all numbers came into use all at once. The natural numbers came first, and then zero (originally used as a placeholder for numbers like 10), and then negative numbers, rational numbers, irrational numbers, and finally, imaginary numbers.

Kronecker argued that we should only say mathematical objects exist if they can be constructed from the integers - rationals being pairs of integers, reals as a sequence of rationals, and so on. To Kronecker, anything that could not be constructed out of integers simply didn't exist.

If we can reduce reals to just integers, and we can reduce integers into natural numbers, and natural numbers into sets, what does this say about those objects' existance? Are reals simply an abbreviation of sets, or are they separate concepts that also exist on their own?

One way to construct natural numbers in terms of sets is to define 1 as the empty set, 2 as the set containing just 1, 3 as the set containing 1 and 2, and so on, each successive number's set containing every one of its predecessors' set. We can easily reduce integers to natural numbers by assigning alternating positive and negative integers to even and odd natural numbers (with the integer 0 being mapped to the natural number 1), and using similar techniques, rational, irrational, and complex numbers. Therefore, all of these numbers can be reduced to sets.

Suppose we say that the existance of sets are pretty much self evident. By reducing things to sets, we can anchor their existance in that of sets, and by doing do learn more about what objects we consider to exist. This is essentially much of the foundationalist work that took place in the late 19th century, as mathematicians attempted to get rid of gotchas and pitfalls in proofs once and for all.

Originally, sets were seen as extensions of concepts, where every well-defined concept defines a set of individuals that belong to that concept. However, this definition has a few issues. One of them is Russel's paradox: suppose we define a set with "something that is not a member of itself". Does this set contain itself? If it does, then it shouldn't by definition, and if it doesn't, then it should be contained in the set.

# 9/5/16

Math: Created or Discovered?
----------------------------

Are mathematical objects created, or discovered? Some people say axioms are created, and everything above that is discovered. Other people say that all math is a creation, while others still yet say math is discovered. **Constructivism** is the view that math is created - constructed from basic elements.

If we ever ran into an advanced alien civilization, we would expect that they would also have mathematics that is quite similar to ours - math seems to be universal. This seems to be evidence that math is discovered, not created. In contrast, something like chess would not be the same across the entire universe, since it's a creation of some random person. Implicit is the assumption that discovery means the thing discovered is universal, while creation means that the thing created is not universal.

On the other hand, mathemeticians can seem to invent new mathematical objects all the time, which appears much like the process of creation. Another possibility is that mathematicians simply think about what to discover, and then discover things within the framework of logic.

Would aliens actually have the same mathematics? We assumed they did, but is it possible for them to have a totally different math?

One view is that to create something, one must change something to bring it into existance. In this view, since math doesn't change the state of the universe, If we go by this definition of creation, then nothing in math is created, only discovered.

One view is that the difference between discovery and creation is the way that they're done. Math is not like science because math requires certainty (through proofs), while science requires only that a high enough standard of certainty is reached.

An argument is a set of claims, one of which, the conclusion is defended  by the others, the premises.If you have a valid argument, then to refute the argument, you must first refute the premises.

An argument is cogent if the premises support the conclusion, and it's reasonable to believe the premises. By support, we mean that the premises imply that the conclusion is likely (not necessarily that the premises imply that the conclusion is in fact true). When we evaluate philisophical views, we need to evaluate whether the arguments for it are cogent.

Sometimes, a premise isn't reasonably believable by itself. In these cases, we can still make the argument cogent by supprting the premise with a subargument.

Philosophers often end up arguing about things that are quite distant from the original subject. For example, a debate about "should we punish people that don't remember commiting crimes?", philosophers would quickly end up discussing whether a person with no memory is the same person who committed the crime, whether it is right to punish crimes, and so on.

Philosophy papers are written in a certain **dialectical context**, for a certain audience. They will often respond to earlier authors, which they assume the reader has already read, and that the reader has the appropriate background knowledge shared in the field. This class provides the original papers written for their own contexts, but also tries to provide that context in class and discussions.

Often, philisophical debates revolve around realists vs. anti-realists, like materialists vs phenomenalists, Platonists vs. anti-Platonists, etc. A realist believes that the things that are predicted by theory actually exist, while an anti-realist believes that the things predicted by theory do not actually exist. For example, a realist believes electrons exist because it's predicted by the standard model, while an anti-realist says they are only a convenient imaginary construct to make the math work out.

Plato advocated his theory of the Forms, idealized representations of things, like a tree or truth. Forms are timeless, unchanging, perfect versions of anything, and these forms are what actually represent reality. Plato thought that there were forms for not only mathematical objects, but also physical objects.

Platonists are realists, and therefore they believe that mathematical objects exist in reality, and therefore they believe that math is discovered. Quine, one of the better known Platonists, summarizes it as "to be is to be the value of a variable in a true theory". In other words, we should believe in the existance of things we can quantify over our best scientific theories. In other words, the things that exist are exactly those things that our best theories of the world say exist (things that correct science says exists).

Platonists say that because we must use math to formulate our best mathematical theories, mathematical objects must exist.

Plebani argues against the Platonist view of this, that mathematical objects must exist because they are indispensible in our theories of the world. The Plebani reading is essentially a refutation of Quine's argument. He basically says, "even if the premise of math being indispensible is correct, it doesn't support the conclusion that mathematical objects exist".

Plebani does this by constructing an argument that has the same form, but gives an absurd result - reductio ad absurdum. Plebani formulates Quine's argument in simpler terms:

1. We can't represent a complex world unless we are using numbers.
2. Therefore, we can't represent a complex world lacking numbers - numbers must exist!

Plebani substitutes some nouns and gets the following absurd argument:

1. Person A can't see person B unless Person A is using glasses.
2. Therefore, Person A can't see Person B unless Person B is using glasses.

Ernest talks about this divide between realists and anti-realists in more detail, clarifying that anti-realism is not the idea that anything goes in mathematics, but that there are factors outside of purely what exists in the world - mathematics is invented, and not purely discovery (anti-realists say math is invented, while realists say it's discovered). To support this, he brings up the effects of Godel's incompleteness theorem in the mathematics community, social influences on mathematics, and examples of how mathematics has been flawed in the past.

One of the criticisms he addresses is "how can mathematics be invented if it works so perfectly to describe reality?". To respond, Ernest states that because of social incentives to make it work flawlessly, it would be expected that it would work as well as it did.

# 16/5/16

There's a holiday next monday (Victoria day). In class test on May 30th at 6:30 PM, I'm writing it in RCH 308. The rest of the class starts at 7:45PM in RCH305. There's a choice of questions about many of the key concepts, and several of them need to be answered.

Assignment 1 is due on June 6. It contains many of the parts of building a good philosophy paper in isolation.

Truth in Mathematics
--------------------

What makes something real? Do they need to be made out of particles? Extend into spacetime? Clearly, there seem to be something additional and something missing from this definition. For example, we say beliefs and desires exist, because they're useful for describing human behaviour. Why are people anti-realists about unicorns, but realists about things like humour?

**Realism about something** is the idea that that thing is independent of us (objective vs. subjective), human beings. Additionally, basic claims about the thing are also literally true. In contrast to literally true, a **vacuously true** claim is one that is only technically true ("unicorns eat grass" is vacuously true because unicorns don't exist, but it's not literally true). Realists believe that the thing is **real**, while anti-realists believe that the thing may or may not be real.

As a result, you can be an anti-realist in two ways - by rejecting the idea that the thing is not independent (**semantic anti-realism**), or by rejecting the idea that there are literally true claims about that thing (**error theory**).

J.L. Mackie wrote a book called "Ethics", which argues for ethical anti-realism (moral nihilism) by rejecting the existance of ethical basic claims - an ethical error theory. His argument is simple: objective values, if they existed, would be different from anything else in the universe, because they would be intrinsically motivating (if we discovered it, we would have enough reasons to follow it). Basically, Mackie says that no ethical claim can be literally, objectively true, and therefore ethics isn't necessarily real. Some types of ethical anti-realists are emotivists (ethics is making emotional claims rather than objective ones, so they're not literally true), contractivists (ethics is making social contracts rather than objective claims, so they're not literally true).

Mackie presents the argument from queerness: if there were actually objective ethical truths, then the world would look very different to how it is today.

Mackie is not saying that ethics don't matter - even if it's something we just invented it, we invented it for a reason. Error theorists tend to spend a lot of time justifying why things are important regardless of whether they're true or false.

Hartry Fields, author of Science Without Numbers, is the most influential source of modern fictionalism about math. The main question in this is, "if we accept fictionalism, which would mean that all mathematical claims can't be literally true, why do we still consider math important?". When we say "17 is prime", why is it still meaningful if all mathematical claims are false?

According to Fields, math is just a conservative extension of science without numbers. A conservative extension of a theory in a language is a set of new words and rules that doesn't let us prove anything new that we couldn't already prove without the addition. The things we can prove from the theory are the theory's consequences. In other words, a conservative extension of a theory is a set of additions to its language that don't change its consequences.

Basically, everything we do with math can also, in principle, be proved using the language of science with numbers - math is a set of shortcuts over science without numbers, but it's not required. According to Fields, mathematics makes things easier, but we don't need to believe it in order to find it useful.

This is in response to Quine, who says we shold believe math is real because it's necessary for science. Fields says that math is actually not indispensible, because we could theoretically do science without any math.

One of the big objections to this view are that the "science without numbers" that Fields presented is not really without numbers - some of the concepts seemed quite mathematical and abstract.

At this point we have our reading, Mary Leng's defence of fictionalism from John Burgess.

**Hermeneutic fictionalism** is the view that mathematicians intend their assertions "fictionally" - "17 is prime" is a fictional assertion just as "Sherlock Holmes is a detective" is, because neither 17 nor "Sherlock Holmes" exist.

**Revolutionary fictionalism** is the view that mathematicians intend their assertions to be literally true, but they're wrong to do so and need to change (calling for a revolution).

One objection to revolutionary fictionalism, presented by David Lewis, is that mathematics has been working very well and providing a lot of useful results, while philosophy asking mathematics to change the nature of their assertions wouldn't make math more useful in any way. He basically says that if revolutionary fictionalism is correct, math would need to be rejected, while in reality, it really doesn't need to be rejexted.

Aside: why does philosophy often result in outlandish claims and unusual results? Wittgenstein viewed philosophy as a therapeutic activity - language tempts people to think themselves into dead ends, and looking at the language itself can help us avoid this.

Carnap proposed the concept of internal and external questions. Internal questions take place within a certain language framework/practice, and are answered with empirical evidence or using the rules of the framework. In contrast, external questions are questions about which language frameworks/practices we should be using, and are answered pragmatically.

One criticism of the concept of internal/external questions, proposed by Quine, is that it implies there must be a sharp analytical (matters of meaning, argued outside of a language)/synthetic (matters of fact, which can only be argued within a language) distinction, while there is no real way to distinguish them in general. In other words, there's no generally applicable distinction between internal and external questions, so the distinction wouldn't be principled.

According to Carnap, the outlandish claims are the result of confusion as to whether the philisophical questions are internal questions or external questions. For example, "Are there numbers?" as an internal question is obviously yes, because we use numbers all the time. on the other hand, as an external question "Are there numbers?" isn't a meaningful statement, because it's not talking about which framework to use. This confusion, Carnap says, is why philosophy results in outlandish claims.

Burgess' objection is basically that revolutionary fictionalism is wrong, because mathematicians answer the internal question with yes, but revolutionary fictionalists say that the answer to the external question is no, even though external questions don't have a yes/no answer based in philosophy.

Mary Leng objects by quoting Quine: that there's no difference between practical external questions and internal questions. So what we should believe to exist is what our best scientific theories tells us exists. However, Leng rejects Quine's indispensiblility argument, because the conclusion that we should believe math exists isn't supported by the premise that it's necessary.

Instead, she proposes an alternative argument for fictionalism: whether objects really exist don't make any difference to whether our empirical theories are successful in making predictions, as opposed to things like electrons, which, if they didn't exist, would be very obvious in our world. So if numbers stopped existing tomorrow, there wouldn't really be a difference, which is evidence that truth isn't required in mathematical claims.

# 30/5/16

In the mid-20th century, there was a big movement to reduce all of mathematics to naive set theory. If mathematics can all be reduced to sets, then we can anchor and ensure that they're correct simply by proving properties of those sets.

In naive set theory, a set is the collection of all distinct items that satisfy a predicate associated with that set. For example, the empty set can be defined as $\set{x \middle| x \ne x}$. If we call this set "0", we can define "1" as $\set{x \middle| x = 0}$, "2" as $\set{x \middle| x = 1}$, and so on, as $n + 1$ = \set{x \middle| x = n}. This is sort of like the $0, \mathrm{succ}(x)$ mechanism for non-negative numbers. From this we can define addition, multiplication, exponentiation, and so on.

Benacerraf concludes that since there are multiple different ways to construct numbers using sets, none of them can be correct - how can 2 be both the representation in one way of constructing sets, but also a different representation in another way of constructing sets? For example, 3 could be represented in sets as $\set{0, 1, 2}$ or $\set{2}$, but $\set{0, 1, 2}$ does not equal $\set{2}$.

Benacerraf is a realist about mathematics - this conclusion is only an issue because we believe that numbers actually exist.

One way we can resolve this is by saying that the 3 isn't the abstract quantity 3, but actually $\set{2} = 3_{\text{in this particular way of constructing sets}}$. Alternatively, we could say that "this set represents so-and-so number" is actually a special operator, so actually $\set{2} =_{\text{represents in this particular way of constructing sets}} 3$. However, if we do this, it's no longer reduction, and we can't say we've really reduced numbers into set theory.

Generalizing, one way of constructing numbers might say "3 is a member of 7", while another way might say "7 is a member of 3". For any way of constructing numbers, as Benacerraf says, there's another way that will result in contradictory results.

In fact, according to Benaceraff, numbers are not objects at all - **numbers are places within a certain structure**. As a result, asking questions about number identity doesn't make sense, since they're not actually things that have identity, just a part of a progression of structure - **structuralism**. For example, what says that $0.9999\ldots = 1$, if each unique number is a distinct objects? If they were positions within a structure, then we could say they are equal because they have the same position within the structure.

One issue with structuralism is that it addresses higher-level problems than what we're dealing with - how can we talk about identity if we don't know the nature of what we're trying to determine the identity of?

Another criticises the vagueness in the definition of structuralism - what is structure? If we lived in a universe that had no structure whatsoever, would there still be numbers?

Ante Rem (before the thing) structuralism says that structures exist without any instantiations, while In Re (in the thing) says that structure is the thing that is shared between all physical instantiations of that structure. With Ante Rem numbers, the criticism is that it's no better than just Platonic numbers - what's the point of adding all this complexity for no apparent philisophical improvement? All of the issues of Platonic numbers also apply to Ante Rem structuralism. With In Re numbers, the criticism is that not all imaginable structures will exist physically in the universe, and if the structure doesn't exist, it seems that the corresponding numbers don't actually exist.

Note that there are two types of Platonism now: Platonism about the natural numbers (Forms for each number), and Platonism about the numbers sequence (Ante Rem structuralism). Ante Rem structuralism says that numbers do exist as platonic forms, and so is a realist view. In Re structuralism says that numbers exist if the universe is infinite, so it's realist if the universe is infinite and anti-realist otherwise.

# 6/6/16

;wip: catch up on this one from the slides

An ontological question is one like "is there something like X?". Most ontological-style questions are trivial, like "are there numbers?", because we use numbers all the time. But do these things exist on a deeper level? Are they really there?

According to Carnap, these deeper ontological questions are meaningless and misguided, because of the external question vs. internal question distinction. Carnap says external ontological questions are useless - while we should ask "should we behave as if X exists?", it is nonsense to ask "does X exist?".

Quine criticizes this by saying the distinction between internal and external questions is meaningless due to the analytical/synthetic distinction not being meaningful (see above). According to Quine, we should answer ontological questions by doing science, and assuming that the things our best theories tell us exist, actually exist.

Yablo also thinks that these deep ontological questions are misguided, but he has a different explanations for why they are meaningless. He tries to refute Quine and make the distinction between internal and external questions meaningful again.

What makes it true that metal expands when it's heated? What makes Newtonian mechanics "true" in many situations, even though it doesn't predict reality? Sometimes, according to Quine, scientific claims are literal, and other times, non-literal. It follows that we should seek to increase the literal claims an reduce the non-literal one.

Yablo says that there's also no real principled distinction between literal and non-literal claims. For example, what kind of scientific theory is needed to tell us that cities exist? Why is it harder for a scientific theory to say cities to exist than, say, electrons? According to Yablo, it's obvious that there are cities, because we can live in them, but it's meaningless to ask if there are "really" cities. If the latter was a meaningful question, then there would be a literal/non-literal distinction, since we could non-literally say that cities exist, while literally we would have a totally different question.

# 13/6/16

Benacerraf wrote a lot about what truth in mathematics means. What kind of things are true/false? What does it mean to say something is true/false? Why does the idea of truth show up so often in philosophy?

One common idea is that either sentences are true or false. But this doesn't seem to apply to all sentences, like questions, commands, etc. Some philosophers often say that statements are always true or false, while other philosophers say that it's the actual proposition/meaning behind sentences that is always true or false. However, paradoxical statements like "this sentence is false." could be considered to be neither true or false. While this is an interesting philisophical question in its own right, in this course when we refer to sentences being true or false, we'll actually mean whatever kinds of sentences can actually be true or false.

People used to believe the earth was flat, but now we believe it is round. Should we then say "it used to be true that the earth was flat, but now it's round"? Most people would not, and instead say "we used to falsely believe the earth was flat, but it is actually true that it is round". Most conceptions of the truth is that it's universal, and if something is true, then it should be true for everyone, everywhere, at any time. Whatever the definition, however, it seems that truth is closely related to the way reality is.

According to redundancy theory, the concept of true is a linguistic convenience, and doesn't actually exist. Saying "X is true" is the same thing as saying "X", so isn't really a useful, real thing. Other theories say things like true sentences being the ones that fit in the largest self-consistent web of facts, or the ones that fit in with the world after we've hypothetically obtained all possible evidence.

According to Benacerraf, all satisfactory accounts of mathematical truth must mesh properly with a satisfactory theory of meaning and must explain how we have mathematical knowledge. Also, existing accounts of mathematical truth don't satisfy both of those criteria - those that mesh with a satisfactory theory of meaning don't explain mathematical knowledge, and vice versa. Therefore, Benacerraf says, there are no existing satisfactory accounts of mathematical truth. This is a valid argument (modus tollens), but is it sound?

Why must a satisfactory account of mathematical truth mesh properly with a satisfactory theory of meaning? Benaceraff argues that this is necessary since the entire language, excluding mathematics, meshes well with a satisfactory theory of meaning, so mathematics should as well. If it doesn't, then it's difficult to explain how math and the rest of the language interact.

Why must a satisfactory account of mathematical truth explain how we have mathematical knowledge? Well, Benaceraff says, we do have mathematical knowledge, so any theory must be able to explain how truth leads to knowledge.

Why don't theories that mesh with a satisfactory theory of meaning explain mathematical knowledge? If we accept the standard view of knowledge as justified true belief, then we will have a lot of issues with philisophical aspects of theories of meaning. On the other hand, if we don't, then we can't satisfactorily explain mathematical knowledge.

Why don't theories that explain mathematical knowledge mesh with satisfactory theories of meaning? Well, mathematical knowledge is acquired by proof, so knowledge can only be obtained for things that can be proved. Theories of mathematical truth based on epistemology are called combinatorial theories, like those that are based off building things from axioms, constructivism, and so on. Since truth is provability, we must stand in the right causal relationship to truth when we read a proof.

Some objections to this argument are: objecting to premise 1 by rejecting that we have mathematical knowledge (like in error theory), objecting to premise 2 by saying that that other linguistic domains are also referential/use referential knowledge (like ethics and logic), so other fields also face the same problems math does while still having satisfactory accounts, or objecting to premise 3 by saying that constructivists don't fit the pattern.

# 20/6/16

Assignment 1 marks are coming out tonight. Suggestions for future assignments: if it's in quote marks, it should be a verbatim quote; if it's not in quotation marks, make sure to really write it in your own words. Always ackknowledge the source of ideas if they aren't your own. Make sure that objections address some part of the actual argument - often, it's helpful to restate the relevant part of the author's argument to make this clearer.

Assignment 2 will be posted on Wednesday. It's due on July 4.

Why is the language of mathematics so applicable and appropriate for the sciences? Eugene Wigner proposed this question in 1960, in "The Unreasonable Effectiveness of Mathematics in the Natural Sciences". For example, why does pi, which was defined for use with the properties of circles, appear in the definition of the Guassian distribution, even though it has nothing to do with cirles?

In other words, why is mathematics so effective a language for doing physics, even though mathematics is done independently of physics?

According to Wigner, the main activity of mathematics is to invent new concepts, and mathemeticians tend to focus on concepts that are interesting and beautiful. Elementary math can be derived from experience, like geometry from looking a the real world, and addition from putting things together. But it is likely that nobody has ever experienced a complex number or a Borel set.

Math is essential to physics - we can't even formulate most theories in physics without mathematical concepts. Additionally, these mathematical theories often give us high quality, accurate predictions about the world based on the mathematics, despite math being done independently of the sciences. So why does the world seem to match mathematics so well? Why does the world work in a regular, seemingly rule-based way?

Steiner adds that there are different ways mathematics can be essential to physics - formulating theories, making discoveries, and so on. According to Steiner, the actual puzzle is why discovering things in mathematics often corresponds to discovering things in physics.

Steiner also says that this puzzle challenges naturalism (the idea that our minds work in a way not attuned to the way the world works), since if naturalism was the case, then we would expect mathematics to not be so effective.

One answer to this puzzle is that the effectiveness is simply coincidence: math is making a huge number of ideas and predictions, and one would expect that at least some of them would be highly accurate. Another is that it wouldn't be possible to do science or make discoveries at all if the world didn't correspond to the mathematics, or that we just wouldn't discover things we didn't have the mathematics to describe.

According to Colyvan, the puzzle of mathematics being unreasonably effective (also known as the **applicability problem**) is only really a puzzle in the formalist philosophy of math, not in most others. Formalist mathematical philosophy is a philosophy in which mathematics is a game played with symbols. The applicability problem is only really a problem because a game of symbols would not be expected to make accurate predictions about the world.

Under scientific realism, if our theories say there are electrons, there are actually electrons out in the world, and it's reasonable to expect electrons exist since all of our observations act as if they do. However, Colyvan says we can't make the same argument about mathematical objects like sets, because the presence/absence of mathematical objects doesn't have any effect on what we observe. Therefore, the applicability problem is still a problem under mathematical realism.

Under scientific anti-realism/fictionalism, electrons are just a convenient name for something that does what our theories say electrons do. According to Colyvan, however, scientific concepts like electorns are only effective at explaining the world because the underlying phenomena are still causing the effects. In contrast, mathematics doesn't have any of these causal powers, so while it's reaosnable to expect it to be able to explain the world (we might've written mathematics to resemble the world), it's still not reasonable for it to help us discover or predict things, because mathematical objects have no causal effects - sets existing or not existing doesn't cause anything to change in the world. Therefore, the applicability problem is still a problem under mathematical anti-realism.

# 27/6/16

What is a proof?

Recall that a valid argument is one where the premises being true means that the conclusion is definitely true, while an inductively strong one one means that the conclusion is likely to be true.

One view is that a proof is a valid argument. In mathematics, every proof can be said to be "if the axioms of the domain of our proof are true, then X is also true" - an argument where the axioms are the premises (or contained in subarguments), and the thing being proved is the conclusion.

It seems like there is also another requirement for what makes a proof good - it has to **demonstrate its own validity**. The gap between premises and a conclusion needs to be small enough that humans can easily check validity. Intuitively, a proof must break a big gap into a smaller one.

Accoding to Locke, a demonstration of an idea being in agreement/disagreement with another is a constant, visible, immutable connection between the two. In other words, if we can stick ideas between two ideas such that they link up to connect the two ideas, then we can demonstrate whether they are in agreement or disagreement. Locke says that a probability is an appearance of agreement/disagreement, though the connection might not be constant/immutable.

According to Guass, a proof is something that makes every doubt about a statement impossible - proofs are linked to certainty. Under this view, since empirical knowledge isn't certain, empirical knowledge cannot be used in proofs. This differs from Hume's problem of induction in that Hume says there's no rational grounds for believing unobserved events resemble observed events (we can't rationally prove that the future resembles the past - induction must be used to justify induction), while this says that all events, even those we observe, are not for certain (we can't trust our observations for sure, in general). Science accepts that it doesn't produce certain knowledge, so **proofs must be a priori**.

The conventionalist view is that we have intuitive, a priori knowledge of some basic truths, and proofs extend our knowledge from there. In mathematics, we might consider that intuitive knowledge to be axioms, which we simply accept are true. Without this intuitive knowledge, however, we could still have conditional knowledge of things, like "if we knew X was true, then Y is also true".

According to Descartes, a proof must be something that we can hold entirely in our minds at once - proofs should be surveyable, with every single part included in a single sweep of thought. If we can't hold the whole thing in our minds, there is room for doubt to creep in.

Recall the mathematical monsters from a few classes ago - the convincing, widely published proofs that were later disproved by simple counterexamples. The issue was that a convincing proof isn't necessarily a correct one. Where Descartes and Locke relied on visualizing arbitrary connections between ideas, Frege invented **concept script**, which defined a set of connections that are always guaranteed to be valid. This concept script was the beginning of modern formal logic, though it looks quite different from how it looks now.

Concept scripts allow us to make **formal proofs**, as opposed to normal proofs. All systems that can generate formal proofs must have a rigorous formal language for claims to be made in, and a small set of inference rules/axioms that can be easily seen to be correct. The goal is to make sure the conclusion is close enough to the premises that we can guarantee that there is no logical gap between them.

Note that the actual proofs we see in the real world, even mathematical ones, often aren't formal proofs. Some might be impractical to make formalized (formal proofs are often very long for anything non-trivial), or some might be pictoral/graphical proofs. Many philosophers think that all correct proofs must have a corresponding formal proof (except practical reasons mean we often don't try to write one), though some constructivists disagree.

Before Andrew Wiles proved Fermat's Last Theorem, it was provable, but not proven. It became proven after Wiles wrote the proof. However, there are definitely things that are provable but will never be proven - for example, proofs that have steps like "list all the prime numbers", or steps that would take an impractically long time. Most real proofs have logical gaps in them - leaps of logic where we generally decide to just make the leap.

When our real-world proofs have this sort of impossible step, we seem to really be telling how a hypothetical mathematician with infinite time and resources how to construct the proof. In other words, **we're giving a proof that there is a proof of something**, which is logically equivalent to a proof of that thing in the first place. An interesting example of this is the computational proof of the four-color theorem. This theorem was proved with the help of a computer, but the resulting proof is far too long for any human being to read or understand. We could think of the computer program that generated the proof as a "proof that there is a proof for the four-color theorem", but we can't directly verify or find the proof itself in any practical way.

One criticism of the four-color theorem proof is that the operation of computers is only empirical knowledge - whatever the output of a computer is, its output is empirical, and therefore not certain. The program might have bugs in it, or the hardware might even have errors (for example, the Pentium division bug). That said, most mathematicians think the four-color theorem is proved.

# 4/7/16

Test 2 coming up next week, in the same format as the first test. I'm writing in RCH308, starts 6:30 and lasts 1 hour.

Mathematical Pluralism
----------------------

Political pluralism in a society is when there is no fact of the matter, and it is possible to freely criticise other views. In scientific pluralism, there are competing scientific theories, and any of them might be correct. Pluralism in general is about values/morality.

Pluralism about mathematics is when there are multiple competing accounts of mathematics, any of which might be true. This is an unusual problem because mathematics is the domain of absolute truth, with no room for other opinions.

To defend mathematical pluralism, we must first show that pluralism is a reasonable idea - that there could be more than one account of mathematics in an interesting and non-trivial way. Then, we must show that there are actually multiple accounts of mathematics. By interesting, we mean that it's not immediately obvious whether there could be more than one account, and by non-trivial, we mean that it's not just having more than one account in a degenerate way, like when there's multiple accounts by having one account be a subset of another.

For example, Martin Davies argues that constructivist (construct an example of something to prove it exists) and classical math (just prove it exists, without necessarily having to produce an example) both have their place - while constructivist math is more informative, classical mathematics can work on more cases. While this can be considered pluralism, it's not interesting pluralism, because all mathematicians are already aware of it, and those two accounts of math don't really seem all that different.

Under Carnap's model, mathematical disagreements can only really happen within a mathematical model - if claims in different languages seem to disagree, it is only because they're both in different languages, using the same symbols to say different things.

Longino compares mathematical plurality to scientific plurality. According to Longino, plurality about something is when there are several ineliminable theories about that thing - when multiple theories are required to account for different aspects of a single, complex reality. Ineliminability might be that any two of the theories can't be unified, or they focus on or explain different things. For example, nowadays we know Newtonian mechanics to be false, but we still keep it alongside relativity because it's more practical for many purposes, while relativity is needed for other purposes.

;wip

# 11/7/16

Assignment 2 should be marked by next Monday.

Mathematical Beauty
-------------------

Beauty in mathematics is often considered to be the quality of being elegant, simple, or efficient. Math seems to really be more like an art than a science, so beauty seems to play an important role in deciding what mathematics to do.

Plato characterized mathematical beauty as different from conventional beauty in that it's absolute and eternal. Mathematical beauty seems to have something to do with being eternal, being rigorous, 

Mathematician seems to think beauty is important for determining what to investigate and accept as correct, and that beauty is a "I'll know it when I see it" quality.

Moore rewords Quine's indispensability argument (an argument for mathematical realism) using the idea that information is knowledge if and only if it improves understanding/predictability of sense experience (empiricism), the idea that science is the only way to get empirical knowledge (naturalism), the idea that hypotheses can only be tested together, not individually (holism), and the idea that we should say entities exist if and only if they are indispensible to scientific theories (indispensibility criterion).

Moore says that if we assume empiricism, naturalism, holism, and the indispensibility criterion, then mathematics is indispensible to science. This is the Occamite account of mathematics.

However, Moore mentions two cases where mathematical practice doesn't seem to follow Ockhamism. One is the search for new axioms that allow the continuum hypothesis to be proven - mathematicians seem to be looking for axioms that have beautiful consequences, rather than ones we know are true. As a result, mathematics doesn't seem to be about empirical knowledge at all, since it's not scientific and, according to naturalism, science is the only way to get empirical knowledge.

These objections seem to be an argument against mathematical realism, since if we're a realist, then mathematics must be scientific, and it isn't if science is empirical and math isn't. So we must either accept that science isn't empirical, math is empirical, or accept mathematical anti-realism. Since mathematics is guided by beauty, it can't really be empirical, so if we're realists, we must explain how science isn't empirical.

However, the anti-realist must also account for how mathematics and science benefit from being separate if mathematics doesn't even deal with empirical knowledge. Moore's point is to build a better framework for how realism indispensibility arguments should be constructed.

# 18/7/16

Final exam on Saturday August 6, 12:30pm to 3:00pm in RCH 307. Assignment 2 marks should be out tonight.

Physicalism
-----------

Russel's paradox showed us that previously, our mathematical knowledge is flawed because it wasn't based on a solid foundation. As a result, mathematicians developed axiomatic set theories, and built the rest of mathematics on top of that. Under this view, everything we talk about in math ultimately are abstractions over sets, and if we have a solid set theory, we have a solid foundation for everything else. Also, if we're realists about sets, this means that we're realists about the rest of mathematics as well.

Benacerraf said that philosophies of mathematics fall into two categories. One is realist theories explaining what mathematical statements mean, but have epistemological problems. The other is combinatorial theories that can correctly explain why mathematicians do what they do, but can't explain what mathematical statements mean.

Maddy says that it is indeed possible to have both a satisfactory theory of meaning and explain how math works in the real world - we can indeed have a realist theory explaning what statements mean without epistemological problsm. She does this by showing we can have causal interactions with some sets.

How does the word "Aristotle" become the philosopher in the listener's mind? This is the **naming problem**. An old explanation for this is the **description account of names**, which says that every word has a fixed, specific definition referring to a thing in the world, in this case the philosopher. However, the word might have different definitions to different people, or the definition might point to a different thing in the world in light of new evidence.

If it was found that the person we always thought of as Aristotle actually didn't write his ethics book, and it was actually written by a ghost writer, and we defined Aristotle as "the person who wrote the ethics book", then it seems like the word must afterwards refer to the ghost writer instead. Then something like Pythias, which we might define as "wife of Aristotle", would no longer exist. This seems somewhat problematic, since we would expect to say that Aristotle didn't actually write the books attributed to him, not that Pythias stopped existing. Therefore, the description theory seems to be wrong.

The way we normally use descriptions doesn't seem to be rigid - they might not refer to a unique object in the world, or refer to different objects under different circumstances. Therefore, descriptions don't really seem to be a good explanation for how names refer to objects. Kripke says that in order to work with proper names like Aristotle, descriptions really must be rigid, since they must always refer to the same object in the world in all circumstances.

The Causal/Putnam theory of reference is another approach. In this account, names are attached to an object in the world in an event called a baptism (for example, talking to someone who knows the name, from whom you hear it for the first time). Each subsequent use of the name refers to the object the person or text we learned it from is referring to, as a sort of causal chain. In other words, when we say "Aristotle", we actually refer to the object referred to by the people who taught us the word, and those people are referring to the object referred to by the people who taught them the word, all the way until the first person who baptized the name.

This is nice because it explains how we can have highly mistaken beliefs about objects, like Aristotle referring to the writer of the book even if they never wrote any books.

The causal theory of reference put essential properties in the philisophical vogue again. Essential/necessary properties are the properties of an object that determine that object's identity (i.e., what makes Aristotle himself?), as opposed to accidental properties. If there is a universe with a person identical to Aristotle, but that person didn't actually write any books, we would probably still call that person Aristotle. However, if there is a universe with Aristotle being a goat, we probably wouldn't call that goat Aristotle. We might say that to be called Aristotle, the object must be a sentient being, named Aristotle, who performed philosophy in some way.

This is somewhat related to the Ship of Theseus problem - the identity of the ship would be based on the essential properties of the ship, and arguably ships have no essential properties. Whether people have essential properties is still up for debate.

Quine disagrees with the existance of essential properties for people - he says that two-leggedness is an essential property for people as cyclists, yet not for two-leggedness for people as philosophers.

Maddy for some reason introduces kinds of kinds to help explain essential properties of people. For example, gold and water are both kinds of things, and home runs and bachelors are both kinds of things, but gold and water seem to be different kinds of kinds of things than bachelors and home runs, perhaps because one kind of kinds describes physical matter, while the other kind of kinds describes social constructs.

Maddy says that there are natural kinds (e.g., water and gold), arbitrary groupings (e.g., the contents of my pockets), and cultural kinds (e.g. bachelors, home runs).  Natural kinds are distinguished by things that are defined in our best scientific theories. According to Maddy, the causal theory of reference also applies to kinds and explain how kinds are associated to sorts of things in the real world. Basically, kinds are associated with sorts of things in an event known as baptism, and later references to that kind refer to the sort of thing that the kind referred to upon us learning it or baptizing it.

This is nice because it exaplins how we can be wrong about kinds yet still refer to kinds in the real world - we can call whales a kind of fish, and people will still understand what sort of thing whales are even after discovering that whales are mammals, not fish. Baptism, even if originally wrong about whether something is a kind or not, can convey meaning about what sort of thing we mean.

Putnam says that definitions are not just what we hold in our head. If you see a material that looks and behaves in every way like water, but is chemically different, we would be wrong to call it water. This is an externalist account of meaning.

Justified true belief is the standard way we define knowledge, but we know from Gettier cases that that definition isn't always enough. According to Maddy, knowledge additionally requires that the justification for knowledge must also be the result of a causal chain between the knowledge obtainer and the original knowledge knower. This is the causal theory of knowledge.

Benacerraf approaches the problem of naming mostly from theories of knowledge, while Maddy approaches using theories of meaning. Benacerraf says that realist accounts of mathematics have epistemological problems because mathematical objects aren't located in the world, so don't have causal interactions. However, if the causal theory of knowledge is true, and the causal theory of reference is true, then we can't refer to mathematical objects at all because we need a causal chain in order to refer to things, and mathematical objects can't be a part of causal chains.

According to Maddy, it is actually possible to refer to mathematical objects. She fills out Godel's ideas about mathematical realism to make a full argument for being able to refer to sets, form perceptual beliefs about sets, and have knowledge about sets. Godel's idea is that axioms in math are analogous to scientific laws, in that they organize mathematics just as scientific laws organize the world. Scientific laws can be evaluated against the real world for accuracy, but not for math, because there's no mathematical equivalent of empirical perception. However, Godel's point is that mathematical intuition is the equivalent of perception - we can evaluate axioms against out intuitions to see if they're true.

Maddy lays out the argument as follows:

* The person empirically perceieves something somewhere if and only if there actually is that thing there, and obtains perceptual beliefs (beliefs obtained via perception) about that thing being there, and the thing is directly involved in the formation of these perceptual beliefs.
* The person can't form a perceptual belief if they don't have the necessary concepts to have that belief - you can't have a belief that you saw a sparrow if you don't know what a sparrow is, and we can't perceive a triangle unless we know what a triangle is.
* Experimental evidence suggests that we aren't born with the concept of physical objects that keep existing when we can't see them, so we can't start off perceiving physical objects. Instead, we gradually develop the right structures in our brain, object detectors, to have that concept, so we can start forming perceptual beliefs about objects. Therefore, perceptual beliefs come from a causal process, and we have to develop it over time.
* Just as we form object detectors and triangle detectors in our brains, Maddy says we also develop set detectors in our brain sometime later in our development, therefore allowing us to have the concept of sets, and therefore allowing us to have perceptual beliefs about sets.
* Therefore, if we are realists about mathematics, we can perceive sets. If we see a dozen eggs in a carton, we can say those eggs are the set, and are directly involved in forming perceptual beliefs about that set of eggs - we can perceive a set of eggs directly, and therefore can indeed have knowledge about mathematical objects.

To defend against obvious objections, Maddy says that a set of physical objects is indeed located in space and time, and it must be a set, not a physical aggregation, because physical aggregates don't really have numerical properties. Maddy, with this argument, answers Benacerraf's question of how we can perceive sets. Also, it answers how we can refer to sets, because it shows that we have sets be part of a causal chain for referring to things.

How does perception of sets of physical things let us know things about sets of non-physical objects like sets of sets or sets of numbers? Well, Maddy says, if sets are a kind, then sets can have essential properties that must apply to all sets, and we can use mathematical intuition to evaluate whether any properties are essential properties and justify our knowledge. Therefore, Maddy says we can be realists and explain what mathematical statements mean, without any epistemological issues, answering Benacerraf's challenge.

Some examples of these essential properties might be "any quantity of things can be collected into a set", or "for any two objects, there is a set containing them". We can baptize sets using sets of physical objects, and then use a causal chain of references to be able to refer to all other sorts of sets. Another interesting consequence of Maddy's view is that axioms can actually be falsified by observations.