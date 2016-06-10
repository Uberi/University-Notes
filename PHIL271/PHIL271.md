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

Are mathematical objects created, or discovered? Some people say axioms are created, and everything above that is discovered. Other people say that all math is a creation, while others still yet say math is discovered. **Constructivism** is the view that math is created.

If we ever ran into an advanced alien civilization, we would expect that they would also have mathematics that is quite similar to ours - math seems to be universal. This seems to be evidence that math is discovered, not created. In contrast, something like chess would not be the same across the entire universe, since it's a creation of some random person. Implicit is the assumption that discovery means the thing discovered is universal, while creation means that the thing created is not universal.

On the other hand, mathemeticians can seem to invent new mathematical objects all the time, which appears much like the process of creation. Another possibility is that mathematicians simply think about what to discover, and then discover things within the framework of logic.

Would aliens actually have the same mathematics? We assumed they did, but is it possible for them to have a totally different math?

One view is that to create something, one must change something to bring it into existance. In this view, since math doesn't change the state of the universe, If we go by this definition of creation, then nothing in math is created, only discovered.

One view is that the difference between discovery and creation is the way that they're done. Math is not like science because math requires certainty (through proofs), while science requires only that a high enough standard of certainty is reached.

An argument is a set of claims, one of which, the conclusion is defended  by the others, the premises.If you have a valid argument, then to refute the argument, you must first refute the premises.

An arguzment is cogent if the premises support the conclusion, and it's reasonable to believe the premises. By support, we mean that the premises imply that the conclusion is likely (not necessarily that the premises imply that the conclusion is in fact true). When we evaluate philisophical views, we need to evaluate whether the arguments for it are cogent.

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

According to Carnap, the outlandish claims are the result of confusion as to whether the philisophical questions are internal questions or external questions. For example, "Are there numbers?" as an internal question is obviously yes, because we use numbers all the time. on the other hand, as an external question "Are there numbers?" isn't a meaningful statement, because it's not talking about which framework to use. This confusion, Carnap says, is why philosophy results in outlandish claims.

Burgess' objection is basically that revolutionary fictionalism is wrong, because mathematicians answer the internal question with yes, but revolutionary fictionalists say that the answer to the external question is no, even though external questions don't have a yes/no answer based in philosophy.

Mary Leng objects by quoting Quine: that there's no difference between practical external questions and internal questions. So what we should believe to exist is what our best scientific theories tells us exists. However, Leng rejects Quine's indispensiblility argument, because the conclusion that we should believe math exists isn't supported by the premise that it's necessary.

Instead, she proposes an alternative argument for fictionalism: whether objects really exist don't make any difference to whether our empirical theories are successful in making predictions, as opposed to things like electrons, which, if they didn't exist, would be very obvious in our world. So if numbers stopped existing tomorrow, there wouldn't really be a difference, which is evidence that truth isn't required in mathematical claims.

# 30/5/16

In the mid-20th century, there was a big movement to reduce all of mathematics to naive set theory. If mathematics can all be reduced to sets, then we can anchor and ensure that they're correct simply by proving properties of those sets.

In naive set theory, a set is the collection of all distinct items that satisfy a predicate associated with that set. For example, the empty set can be defined as $\set{x \middle| x \ne x}$. If we call this set "0", we can define "1" as $\set{x \middle| x = 0}$, "2" as $\set{x \middle| x = 1}$, and so on, as $n + 1$ = \set{x \middle| x = n}. This is sort of like the $0, \mathrm{succ}(x)$ mechanism for non-negative numbers. From this we can define addition, multiplication, exponentiation, and so on.

Benacerraf concludes that since there are multiple different ways to construct numbers using sets, none of them can be correct - how can 2 be both the representation in one way of constructing sets, but also a different representation in another way of constructing sets? For example, 3 could be represented in sets as $\set{0, 1, 2}$ or $\set{2}$, but $\set{0, 1, 2}$ does not equal $\set{2}$.

Benacerraf is a realist about mathematics - this argument is only the case because we believe that numbers actually exist.

One way we can resolve this is by saying that the 3 isn't the abstract quantity 3, but actually $\set{2} = 3_{\text{in this particular way of constructing sets}}$. Alternatively, we could say that "this set represents so-and-so number" is actually a special operator, so actually $\set{2} =_{\text{represents in this particular way of constructing sets}} 3$. However, if we do this, it's no longer reduction, and we can't say we've really reduced numbers into set theory.

Generalizing, one way of constructing numbers might say "3 is a member of 7", while another way might say "7 is a member of 3". For any way of constructing numbers, as Benacerraf says, there's another way that will result in contradictory results.

In fact, according to Benaceraff, numbers are not objects at all - **numbers are are places within a certain structure**. As a result, asking questions about number identity doesn't make sense, since they're not actually things that have identity, just a part of a progression of structure - **structuralism**. For example, what says that $0.9999\ldots = 1$, if each unique number is a distinct objects? If they were positions within a structure, then we could say they are equal because they have the same position within the structure.

One issue with structuralism is that it addresses higher-level problems than what we're dealing with - how can we talk about identity if we don't know the nature of what we're trying to determine the identity of?

Another criticises the vagueness in the definition of structuralism - what is structure? If we lived in a universe that had no structure whatsoever, would there still be numbers?

Ante Rem (before the thing) structuralism says that structures exist without any instantiations, while In Re (in the thing) says that structure is the thing that is shared between all physical instantiations of that structure. With Ante Rem numbers, the criticism is that it's no better than just Platonic numbers - what's the point of adding all this complexity for no apparent philisophical improvement? All of the issues of Platonic numbers also apply to Ante Rem structuralism. With In Re numbers, the criticism is that not all imaginable structures will exist physically in the universe, and if the structure doesn't exist, it seems that the corresponding numbers don't actually exist.

Note that there are two types of Platonism now: Platonism about the natural numbers (Forms for each number), and Platonism about the numbers sequence (Ante Rem structuralism). Ante Rem structuralism says that numbers do exist as platonic forms, and so is a realist view. In Re structuralism says that numbers exist if the universe is infinite, so it's realist if the universe is infinite and anti-realist otherwise.

# 6/6/16

;wip: catch up on this one from the slides