PHIL110A
========

Analytical philosophy.

Instructor: Carla Fehr

Epistemology
------------

>Episteme - to learn  
>Logos - study of  

Epistemology is the study of knowledge.

Metaphysics
-----------

>Meta - "after"  
>Physics - book by Aristotle  

Metaphysics is the study of reality - "does God exist?" etc.

Logic
-----

Arguments are the fundamental unit of reasoning. The goal is to hold reasonable beliefs.

**Reason** is identifiable cause, but in other uses it means **justification or warrant** - the ability for something to be rationally defended in the face of evidence.

**Assertion** is the presentation of something as true. Conversations often have assertions, defences of assertions, and retractions of assertions.

Arguments
---------

Argument is the presentation of reasons, as well as a set of statements presented as true. All but one of the statements are the premises, which support or establish the truth of the conclusion, the remaining statement.

An argument is a set of premises given in support of a conclusion. The conclusion may or may not follow from the conclusion, and the premises may or may not be true.

An argument is **sound** if and only if it is valid and all of its premises are true.

Argumentation is the practice of showing the reasonableness of an assertion.

A sound argument has reasonable premises that are mutually accepted; an argument is not sound if the premises are not reasonable, even if they happen to be true.

In formal logic, considerations of soundness are less often used. What is more important is **validity** - whether the conclusion follows logically from the premises. A valid argument is one where the conclusion is true if the premises are true.

**Inference** is the act of reaching a conclusion on the basis of premises.

People infer conclusions, premises imply conclusions. Inference is only applicable to entities capable of acting.

Arguments are practical and linguistic objects. This means that an argument is both a practice (an activity that we do) and a collection of sentences (the thing itself).

Classical Logic
---------------

In Aristotle's time, logic terms where believed to only have one meaning/interpretation (univocal). It was also believed that there were three axioms from which all logic could be derived. This system is called classical logic:

* Law of Identity: P is true if and only if P is true, if P is a proposition.
* Law of Non-Contradiction: P and not P is always false, if P is a proposition.
* Law of Excluded Middle: P or not P is always true, if P is a proposition.

**Intuitionistic logic** is similar to classical logic, but excludes the law of excluded middle. As a result, in this system of logic, proofs cannot be made by contradiction (proving not P is false), and must be done directly.

**Dialethic logic** is similar to classical logic, but excludes or restricts the law of non-contradiction. As a result, contradictions are possible (I am two meters tall and I am not two meters tall). This is useful in the legal system, where multiple precedents may give multiple contradictory answers, all of which are acceptable.

Reasoning
---------

**Fallacious arguments** are arguments that are "bad". Fallacies are common errors in reasoning that result in bad arguments.

Arguments vs. explanations: arguments aim to show a statement worth believing, while an explanation aims to make better sense of something already believed. Sometimes, this may depend on context: "the ice is thicker over there because the ground slopes in that direction" could be either, depending on the situation.

Arguments and explanations can have many different assumptions. For example, the above assumed that the reader knows that ice is made by freezing water, and that water flows downward.

Deductive Logic
---------------

    Socrates is a man. ; premise
    All men are mortal. ;premise
    ------------------------------
    Therefore, Socrates is mortal. ;conclusion

Replace with variables:

    S is an M.
    All M are O.
    ---------------------
    Therefore, S is an O.

This is the **form** of the argument, the basis or schema on which it is based.

This is also a valid argument - no matter what we substitute for S, M, and O, the argument is always valid.

    All dogs are birds. ;premise
    All dogs have wings. ;premise
    ----------------------------
    Therefore, birds have wings. ;conclusion

The above is a valid argument, but is not sound since dogs are not in fact birds.

A **deductive argument** is one where if the premises are true, then the conclusion must be true. The validity of a deductive argument can be checked simply by looking at the argument form.

Deductive arguments have no new information in the conclusion - it is simply a rearrangement of the information in the premises.

Deductive is the same thing as valid; there are no invalid deductive arguments.

Deductive arguments are equivalent to implication, and can be written $A, B, C \implies D$.

Inductive Logic
---------------

Inductive arguments have new information in the conclusion.

    A goes to class every day and does well.
    B goes to class every day and does well.
    C goes to class every day and does well.
    D goes to class every day.
    ========================================
    Therefore, D does well.

The new information is that all other students who go to class also do well. An inductive argument only gives a certain probability of the conclusion being true.

A rational person would be entirely persuaded by a sound deductive argument. However, a rational person would only be more inclined to be persuaded by an inductive argument, depending on how strong it is.

Argument Properties
-------------------

Valid arguments:

| Premises | Conclusion | Possibly Valid | Possibly Sound | Example                                                                    |
|----------|------------|----------------|----------------|----------------------------------------------------------------------------|
| False    | False      | Yes            | No             | All clouds are stars, all stars are green, so all clouds are green.        |
| False    | True       | Yes            | No             | All birds are fish, fish have wings, so birds have wings.                  |
| True     | False      | No             | No             | All oranges are fruit, all fruits are organic, so all clouds are green.    |
| True     | True       | Yes            | Yes            | All oranges are fruit, all fruits are organic, so all oranges are organic. |

A valid argument can never have a false conclusion from true premises.

If we can find a case where the premises are true, but the conclusion is false, we can prove that the argument is invalid. This is known as a **counterexample**.

    All students are lazy.
    This student is not lazy.
    Therefore, the first statement is false.

Counterexamples can be used to disprove arguments.

$\neg P$ is "not $P$", the opposite of $P$.

Conditional Arguments
---------------------

Conditional arguments are a certain type of deductive argument, containing a conditional.

General form:

    if P, then Q.
    (antecedent=if P), (consequent=then Q)
    Four most common forms:
    affirming the antecedent: if P, then Q. P, therefore Q.
    denying the consequent: if P, then Q. ~Q, therefore ~P.
    denying the antecedent: if P, then Q. ~P, therefore ~Q ; INVALID - Q could be true even if P isn't
    affirming the consequent: if P, then Q. Q, therefore P ; INVALID - P could be false even if Q isn't

$$P \implies Q \text{ does not mean that } Q \implies P$$

If an argument is neither valid or sound, but manages to persuade, it is still an argument.

# 17/9/13

In summary:

* Deductive arguments have no new information, and if the premises are true, so is the conclusion.
* Inductive arguments have new information, and only suggest the conclusion is likely.

True and false are, in the context of philosophy, applicable only to sentences. They do not apply to arguments. We can say each sentence in an argument is true, but we cannot say the argument itself is.

Validity vs. Soundness: we can pinpoint missing information in valid arguments, so we know what we need to know to make the argument sound. We can also save time on figuring out whether the premises are true if the argument is not valid.

Validity and soundness only apply to deductive arguments, by definition.

Induction by enumeration: listing examples and generalizing to obtain a conclusion. "this swan is white, that swan is white, therefore all swans are white".

Writing deductive arguments:

    A is a B     premise
    All B are C  premise
    -----------  single line
    A is a C     conclusion

Writing inductive arguments:

    X_1 is a Y   premise
    X_2 is a Y   premise
    X_3 is a Y   premise
    ===========  double line
    All X are Y  conclusion

An inductive argument is evaluated based on **inductive strength**. Inductive strength is based on how much new information is introduced in the argument. A weak inductive argument has low quality or few examples, while a strong inductive argument has high quality or many examples.

Fallacies
---------

Fallacies are common errors in reasoning. They occur frequently enough to have their own names.

Deductive fallacies include denying the antecedent and affirming the consequent.

Inductive fallacies include:

* Forgetful induction: forgetting about evidence contrary to the conclusion - "smoking is alright because I knew two people who smoked and lived long lives" - ignoring contrary evidence.
* Hasty induction: jumping to conclusions, drawing conclusions without enough data: "this swan is black, so all swans must be black" - too much new information in the argument.

# 19/9/13

Aristotle
---------

Student of Plato, who was a student of Socrates. Lived around 400BCE.

Aristotle stated that an object is something that has a beginning, a lifetime, and an end. A seed is an object, as it grows, lives, and dies. He uses the terms "object" and "substance" interchangably. An **object** is **matter** and **form**.

Matter is that which stays constant. The matter of a statue is bronze.

Form is like the definition of an object. It is the essence of the object, the essential characteristic of its nature - the kind of thing it is. The form of a statue is its statue-ness.

Aristotle believed that for humans, the male provided the form, and the female provided the matter, and the human was created from the two combining.

Objects can change throughtout their lifetime and still be the same object - as long as the form stays with it. "Form actualizes potential"; the kind of thing defines what changes it can potentially undergo. When the change happens, it is the form that brings it about. An acorn has the potential to become an oak tree, and the form brings this change about. Potential is a property of an object, the end state of the object that draws the object towards that state.

I eat a cake, and the cake becomes part of me. I do not become the cake because the potential of cake is to be eaten. The form of each object determines how it behaves.

### Causes

Aristotle on causation: there are four causes, ways of answering "Why x?" ("Why does water flow downhill?"):

* Material cause: what the object is made of, its matter (water matter)
* Efficient cause: the events that brought something into existence (gravity)
* Formal cause: what kind of thing the object is, its form (water-ness)
* Final cause: the purpose for which it exists, its potential (to ensure plants are hydrated)

Human causes:

* Material cause: human meat
* Efficient cause: reproduction
* Formal cause: human-ness/rational animal
* Final cause: ??? (Aristotle believed these were philosophy and friendship)

# 23/9/13

### Teleology

Teleology is the study of purposes, final causes. Telos is the purpose/end/goal/reason. Logos is, among other things, the study of.

Aristotle thought the universe is orderly, and that **everything has a purpose**. The heart exists to distribute blood, and likewise everything exists for some end.

The job of the scientist is to figure out the purpose of objects.

The telos of the human is happiness, in exercising the most human aspect of us - rationality. Philosophy is the ultimate purpose of humans.

Humanity's role is to be the thinkers and philosophers of the universe.

### Universe

Aristotle's views on the universe are based on those of Ptolomy, a geocentric model.

The Earth is at the center of the universe, and it is surrounded by concentric spheres.

The innermost sphere is the sphere on which the moon is affixed.

The area within the innermost sphere is the **sublunary realm**. This area is more complex since it contains the four elements: **Earth**, **Water**, **Air**, **Fire**. The Earth is composed of concentric layers of these elements in that order. Everything is a mixture of these 4 elements. Humans are mostly Earth, but have some other elements.

**Natural motion** is motion that is in accordance with the layers of elements. Rain falls because water is below air, and chalk falls down because earth is below air. We can throw the chalk, but this is **unnatural motion** because it is against the natural order of elements.

The area outside is the **superlunary realm**. This area is perfect, everything moves in perfect circles (considered the perfect shape). This is the area where the heavens, the stars, and sun are.

### Science

A scientist is concerned with formal and final causes - to find the definition and purpose of objects.

These two causes are important because of their relation to change - why does change happen?

Observation is the tool of the scientist. For example, in a classroom, a scientist would try to find the kind and purpose of the group.

A scientist should look for the characteristics that **all humans have**, but **no other things have**. These would be the form. A human - a rational animal - is differentiated from a dog because of rationality, though they are both animals. A form is what allows categorization.

A scientist classifies things into categories, and tries to find the final cause. If the final cause of humans is to philosophize, then whenever the scientist sees another rational animal, it is known that the final cause of that human is also to philosophize.

Modern Philosophy
-----------------

Modern philosophy is generally considered to be that done between the 1500s and the 1900s. It is characterized by the doubting of the foundations of our beliefs.

The major shift is between the Aristotelian "what are the forms?" to "how do I know my ideas are like the world?". There was also major religious, political, and scientific upheaval. There started to be the question of whether the world is really as it appears, whether everything was wrong or not.

Prominent philosophers/scientists in this era include Renée Descartes, John Locke, and George Berkeley.

This was a time of revolutions and counter-revolutions - the rise of the scientific and industrial revolutions as well as the inquisitions. This was also the period during which the Ptolemic world view was challenged and a heliocentric model was developed.

### Renée Descartes - Rationalist view

Descartes was a mathematician first and foremost, and so approaches the topic from the view of fundemental truths, of methodical doubts. Descartes wants to find knowledge that we know for certain is true.

### John Locke - Empiricist view

Locke was a biologist and a physician, and so approaches the topic from the view of the mind or brain, of the physical and tangible, and the role of the senses. Locke wants to determine how the senses fit into the obtaining of knowledge.

### George Berkeley - Empiricist/Idealist view

Berkeley was a bishop, and so approaches the topic from the view of the intangible. He is mostly in agreement with Locke, but figures that only ideas exist, and that everything is an idea.

# 1/10/13

Descartes
---------

> How do I know what is going on in my mind is like what is in the world?

Lived in 1500s. An important scholar in many fields, created the beginnings of analytical geometry, joining geometry and math, Cartesian plane, etc. Contemporary of Galileo. Lived in Netherlands for most of his life.

Proponent of **foundationalism** - epistemological stance searching for certain knowledge to be used as a base to build up a set of solid beliefs. Tracing back all knowledge to facts that are known for certain.

Foundationalism is independent from rationalism vs. empiricism - there can be rationalist foundationalists and rationalist empiricists.

**Rationalism** is the view that all knowledge is based on reason/logic alone. Often contrasted with **empiricism** - the view that all knowledge is based on the senses/observations. For example, we know $2 + 2 = 4$ through reason, not by seeing two things being combined to yield 4.

Empiricism is reminiscent of Aristotle's view on observations being the source of knowledge. Modern science is also aligned to empirical views.

**Realism** is the view that there is a reality outside of the mind, and that there is some sort of correlation between what is in the mind and what is outside of it.

**Skepticism** is the view that doubts this possibility, though they may not believe it is false.

**Pirrhonian skepticism** is skepticism with a point in mind - not doubting for the sake of doubting. Skepticism is simply the doubting of knowledge. It follows two rules:

* Acceptance of appearances qua appearances - what is presented before the mind must be accepted; it cannot be doubted what a person thinks they are thinking of. If someone says they saw a ghost, it must be accepted that they think they saw a ghost. There is first person authority - one is the authority on what oneself thinks.
* A method of opposition. Either stating that the world doesn't actually exist, or that there is an alternative explanation for what they think. If someone says they saw a ghost, a Pirrhonian skeptic might say it was a man with a sheet, or that the world does not exist for ghosts to be seen in, rather than doubting that the someone thinks they saw a ghost.

Descartes wants to be a realist - to have what he sees in his mind be the same as what is out there. To do this, it is necessary to test everything he knows.

This is done through **methodical doubt** - using skepticism to find at least one belief that cannot be doubted. When a belief cannot be doubted, it must be true.

Descartes is a **mind-body dualist** - he believes there are two types of substances in the world:

* **material** (things with time and space) - "res extensa" - extended in space and time.
* **immaterial** (souls, minds, ideas) - "res cogitans" - not part of space and time.

Descartes' meditations present the issue from the view of the realist and the skeptic. The realist presents beliefs, and the skeptic attempts to doubt them.

Descartes broke up all his beliefs into categories to be able to get through them all.

# 3/10/13

### Doubt of senses

The first skeptical attack **doubts the senses**. He states that senses have deceived him in the past without his knowing, and if something has deceived him, he should not trust them in the future. How do we know we can trust our senses?

The realist response states that it is **possible to tell the difference** when one is being deceived by the senses, and in **ideal conditions** the senses do not deceive.

### Doubt of sanity

The second skeptical attack **doubts his own sanity**. He states that a mental illness could cause false perceptions.

The realist response is that this **breaks the rules of Pirrhonian skepticism** - that appearances should be accepted for appearances. In other words, he can distinguish his perceptions of himself from those of the insane.

### Doubt of perception of reality

The third skeptical attack **doubts whether he is dreaming or awake**. He states that he has previously had dreams that appeared as real as reality while dreaming, and that he cannot be sure whether he is dreaming at this instant.

The realist response is that dreams are **paintings of reality** - there must exist a reality for dreams to reflect. In other words, there must be a world in order to have dreams.

Sub-argument counterpoint: to continue the analogy, abstract paintings would not be inspired by reality. In response, the realist response is that there are things like quantity, shape, and color that are also inspired by reality.

So now the skeptic has convinced the realist that a reality doesn't need to exist to have a dream. However, the skeptic has not yet convinced the realist that numbers, shape, etc. are not from reality.

### Doubt of being deceived

The fourth skeptical attack considers that there is a **possiblity that there is an all powerful, evil being that is actively deceiving him**. For example, the evil being could make every calculation mechanism make $2 + 2 = 5$, and manipulate all of the rest of mathematics to make everything consistent.

The realist has no response to this, and finds the best course for action is to doubt everything.

In the next meditation, Descartes finds a realist response for the last argument:

> Cogito ergo sum.

> I think, therefore I am.

    I think.
    If I think, I am.
    -----------------
    I am.

The argument states that Descartes knows that he thinks, and that a thinking thing must exist. Therefore, Descartes knows that he - an immaterial thinking thing - exists.

However, this does not prove that he has a body, just a mind. Also, he still does not know that the world exists. He also does not know that any other thoughts in his mind are true. In other words, Descartes has proven the existance of the **immaterial**.

    I eat.
    If I eat, I am.
    ---------------
    I am.

This is also a valid argument, but we can't say it is sound since we can't verify whether we are actually eating. However, one can think they are eating, in which case they exist. In this case though, the driving force is still thinking.

There are a few problems here.

The first is the **mind-body problem**. If minds and bodies are immaterial and material, how do they interact? Ideas and matter should not interact. But we observe that they interact all the time.

The second would be the **problem of other minds**. How do we know what is happening in other minds, or that they even exist? This leads to solipsism - the view that the self is the only mind in the universe, and that everything is a figment of the imagination.

The other response is that either the evil being exists, or that it does not exist and he is not being fooled.

If the being exists, then I must exist in order to be fooled by it.

If the being does not exist, he is not being fooled.

# 8/10/13

Logic
-----

Implicit premises are premises that need to be added to an argument to make it valid:

    I think
    -------
    I am

This is missing a premise - an implicit premise - "all thinking things exist". The argument is not invalid, because it is considered obvious enough that a reader would automatically insert the missing premise.

### Principle of charity

When reading or hearing an argument, we interpret an argument in its strongest possible form. This is because if we disprove the argument in its strongest form, we have disproved the argument in all forms.

If we interpret the argument in a form that is not its strongest, this is a **straw man fallacy**.

In other words, we attempt to repair the argument if it is not fully valid - inserting implicit premises, trying to fix any errors. We try to make each position stronger rather than tearing them down.

Clarity and Distinctness
------------------------

Descartes finds that the cogito ergo sum argument is **clear** and **distinct**. He finds that there must exist a good god, and that such a being would only give arguments this clear and distinct feeling if it were absolutely true.

As a result, Descartes looks for other similar ones that also give this feeling, and when he finds them, he knows that they are true.

Descartes thinks there are **innate ideas** that we are born with and can discover via reasoning. To Descartes, **clear and distinct** ideas are innate.

# 10/10/13

Paper 1 due on Oct. 24. Topic: Do you prefer Descartes Rationalist approach, or Locke's mechanical empirical approach
to understanding the relationship between our ideas and things in the world? What are
the reasons for your preference? Formal writing, but personal pronouns allowed. Use size 12 black font and double space. Submit on LEARN in Word document form. Writing style is discretionary. Should be around 3 pages. Cite everything, including material in lectures. Include student number, course, name, instructor, date.

Locke
-----

Physician, 1632-1701, proponent of **experimental philosophy** and the scientific method.

Locke had previously read Descartes' work, but disagreed on the rationalist view. He focused on the question, "how can we know about the external world?".

The scientific method emphasizes **evidence**, **hypotheses**, and **experiments**. Locke thinks absolute knowledge would be nice for mathematicians like Descartes, but a scientist and physician should rely on evidence to draw conclusions from.

> Descartes: what do we know?  
> Locke: that's not important; how do we know?  

Locke believes the mind starts off as a tabula rasa - a blank slate. Our sense perceptions are the means by which we gain knowledge of the external world.

Locke is an **empiricist** - we know the world through observations and experience, and that our minds start off empty and accumulate knowledge from the world. This contrasts with **rationalism**, which states that there are innate ideas and we can know everything though reasoning on that knowledge.

Locke is a **dualist**, but a different type from that of Descartes (there are many types of dualism). Locke thinks there is a difference between a thing in the world, and the idea of that thing - that they are different kinds of things. However, to Locke **ideas are still matter** - specifically, an arrangement or pattern of matter, such as the electrical impulses in the brain.

Dualism is the view that the universe is made of two different kinds of things.

**Sensation** is the process in which an object causes a perception in a mind and brings an idea into the mind. A particular sensation is a perception bringing about an idea.

A dog sees a canteloupe and the idea of a canteloupe appears in its brain.

An **idea** is what a mind perceives in itself - anything appearing inside the mind. It is whatever is the target of perception, thought, or understanding.

As a result, **ideas exist only in the mind**. They are actually the patterns and movements of the particles in the brain.

We infer the existence of a real thing from the idea of it.

A dog sees canteloupe and the immediate object of perception is the idea of canteloupe.

1. There is an idea of a canteloupe in my mind
2. This idea implies a similar thing exists in the world
3. A canteloupe exists in the world

The **power** (ability or capacity) to produce an idea in a mind is a **quality** (property) of an object.

There are two types of properties:

* **Primary qualities**
  * Are those inseparable from the object - they stay with the object no matter how much it is changed.
  * Are **part of an object**.
  * These include solidity, extension, shape, motion/rest, and number.
  * For example, a canteloupe will **always have a quantity**, no matter how many pieces we cut it.
  * Exist within and resemble the object.
* **Secondary qualities**
  * Are the abilities/powers of an object to produce sensations in minds.
  * Caused by the interactions of the primary qualities of an object with our senses.
  * These include colors, sounds, and tastes.
  * For example, an object with the **ability to reflect of light around 450 nm** (primary quality) has the **ability to produce the sensation of blue** (secondary quality).
  * Exists **only in minds** and may not resemble the object.

The **representational theory of the mind** is that ideas resemble things in the world, because they are caused by things in the world.

This allows us to know that ideas caused by primary qualities are correct, while ideas caused by secondary qualities will often resemble those things in the world.

# 15/10/13

Review of the last lecture.

Locke vs. Descartes: each view addresses epistemology in a different way, with a different set of assumptions.

One criticism of Locke would be that the view assumes that the world exists at all, and is not a fabrication of a deceiver.

One criticism of Descartes would be that the view assumes that the mind possesses innate ideas.

Descartes thinks knowledge comes from reason alone. Locke thinks knowledge comes from sensations alone. These are mutually exclusive.

Locke believed there are also **tertiary qualities**. These are basically secondary qualities that apply to other objects instead of minds. For example, a key has the tertiary quality of having the power of opening a lock.

# 24/10/13

George Berkeley
---------------

"Bark-ellie"

Irishman, Anglican bishop, after Descartes' time, contemporary of Locke. British empiricist. Mind starts off as tabula rasa.

Berkeley was not only an empiricist (knowledge comes from the senses), but an **idealist**. Berkely thought that there is **no such thing as matter** - **everything is an idea or a mind**.

This contrasts with Locke, who thought everything was matter. Descartes thought there were both.

As a result, Berkeley **did not run into the mind-body problem** that Descartes did.

Berekely thought there were three objects of knowledge:

* **Sense ideas** - ideas that are passively (not controllably) brought into the mind by the **actions of the senses**. What am I seeing?
* **Inner sense** - ideas that are the result of **introspection**, thinking about the things in one's thought bubble. What am I thinking about right now?
* **Memory/imagination** - ideas that are the result of the **mixing of other ideas**. For example, thinking about a unicorn.

Ideas are immaterial things that exist either in **one's own thought bubble, or God's thought bubble**.

Everything is an idea in the mind of God. We exist in the thought bubble of God, and we have our own thought bubble inside of God's thought bubble.

Since God is an all-good being, we can be sure that what is in our minds corresponds to what is outside of it.

Since we are made in God's image, we also have control over our own thought bubble.

So God is all-knowing because everything **is God's knowledge**. This is offered as an explanation for God's omnipotence and omniscience.

A mind is a **thing that perceives ideas**.

Ideas only exist when they are perceived by a mind. So if a person dies, the ideas in that person's mind no longer exist.

> To be is to be perceived - without perception, there is no existance.

- Berkeley

So if something is not being perceived, it doesn't exist. However, God is always perceiving everything, and so things don't pop out of existance when nobody is looking at them.

What is a thing? Locke might say it is a collection of matter exhibiting primary qualities.

According to Berkeley, a **thing** is an idea - any idea. Qualities stick together with an object because God did it.

Berkeley is a foundationalist, as he believes that God is a certain truth and then builds all knowledge on top of that.

Berkeley takes empiricism to the extremes. He criticises Locke's view as not empiricist enough, in a few ways:

* Primary qualities and secondary qualities are very similar. In fact, both of them exist in the mind.
  * A primary quality is something that we can't perceive an object without.
  * But secondary qualities are also necessary to perceive objects - imagine an object with shape but not temperature!
  * So primary qualitites and secondary qualities are the same.
  * But secondary qualities **must exist in the mind** since they depend on context.
  * But primary qualities could exist in the mind too.
  * So all qualities exist in the mind.
* Some perceptions are dependent on the conditions. Things can appear differently to different people. Even things like shape and dimension depend on the angle from which we view it.
  * Primary qualities depend on the observer too!
  * So there are no primary qualities, only secondary ones.
* Empiricism conflicts with materialism.
  * Locke has never seen an atom, yet explains things with them - Locke has no experience with atoms, yet says all knowledge comes from interaction of atoms.
  * What do we see when we look at an object? We see color, shape, dimension, but we never actually see matter. We **can't perceive matter**. If we can't perceive it, then why should we believe it exists?

Berkeley says that if one is an empiricist, one should also be an idealist, and cannot be a materialist.

# 29/10/13

> Why do the qualities of an object stay with the object? Why isn't the color of an object separable from the object?

In materialism, the qualities of an object are stuck to the matter of the object.

In idealism, the qualitites of an object stay with the objet because a good God makes it so to be coherent and consistent.

Berkeley was **not a skeptic**. He knows that there is a reality out there, because God makes it correspond to the idea that he knows in his mind. Also, skepticism might lead to the doubting of the existance of God, which is something he wants to prevent. Berkeley was "willing to give up matter to block skepticism".

### God

Instead of viewing God as an assumption on which we base Berkeley's view, we can also view the whole thing as Berkeley's proof of God's existance.

The most likely reason that objects don't stop existing when we stop observing them, that we each perceive the same thing when we view the same object, and various other problems, is that there is a good God. Well, we don't actually know that objects don't stop existing when we stop observing them, but by "common sense" we assume this is true.

God is a good explanation for the phenomena that we observe is probably true.

### Parsimony

Parsimony: the virtue of simplicity.

Occam's razor: the simplest answer is often the best.

Simplicity can be defined as making the fewest and most reasonable assumptions.

Berkeley thought that if there are multiple answers to a question, the simplest one - the one with the fewest assumptions - is the best.

Since assuming the existance of a good God is a "single assumption", it is the simple answer. With Locke's view, we have to assume there is matter, and qualities of matter, and all those other things.

So the simplest answer is idealism, and so it's the one we should use.

Review
------

| Philosopher | Source of ideas | Metaphysics            | Relation of knowledge to the world | Causation              | Skepticism                     |
|:------------|:----------------|:-----------------------|:-----------------------------------|:-----------------------|:-------------------------------|
| ALL         | Various         | Various                | Representational theory of mind    | Various                | Various                        |
| Aristotle   | Observation     | Form/matter            | Observation                        | Four causes            | Don't care                     |
| Descartes   | Rationalist     | Dualist - mind/body    | ??? Mind/body problem ???          | Efficient cause        | Methodic doubt test            |
| Locke       | Empiricist      | Materialist            | Physical interactions with brains  | Efficient cause        | Doubt only secondary qualities |
| Berkeley    | Empiricist      | Idealist - minds/ideas | Mental causation                   | Efficient cause        | Not at all                     |

# 31/10/13

Justified True Belief (JTB)
---------------------------

It is generally accepted that for a belief to be knowledge, it can't just be true by coincidence, it has to be:

* Justified: the belief must be supported by something
* True: it must be true
* Believed: one must believe it is true

So guessing something and being right is not knowledge.

### Justification

Philosophers often focus on the justification. For example, Descartes would justify things using reason and Locke would use the senses.

### Truth

Truth is a difficult thing to define. There are two main theories of truth:

* **Correspondence**: a belief is true if it accurately corresponds to something in the world.
    * Some issues would be:
        * How do we know they accurately map onto the world?
        * How do we know there is a world?
    * We want to find an objective viewer that we can compare our beliefs with. But there is no objective viewer that we can know is objective and can trust.
* **Coherence**: a belief is true if it does not conflict with the other beliefs that one holds.
    * Some issues would be:
        * Easy to think something is true that doesn't correspond to the world.
        * Hard to resolve multiple webs of beliefs.
        * One false belief messes everything else up.
    * Associated with the philosopher Quine.
    * A "web of belief".
    * A set of beliefs is strong together, and weak alone.
* **Pragmatic**: a belief is true if it supports our interacting with the world successfully.
    * For example, we believe the door is closed because we can better interact with the world by not walking into doors.
    * Some issues would be:
        * What does it mean to be successful?
        * Even if we had a criteria for success, how do we know we are being successful?
    * There is also a social viewpoint to the pragmatic theory of truth.
        * Something is true if a community of knowers has come to consensus/majority on it - if everyone agrees on it.
        * Whose opinion is worth more?
        * How do we know everyone isn't wrong - that we haven't all made the same mistake?
        * Also depends on psychology.

### Belief

Our beliefs are our own - we can freely hold and form our own opinion. However, the bar for knowledge is much higher.

For example, "I believe that I like chocolate" is a belief.

S knows that P
--------------

This is a common form of statement.

> $S$ knows that $P$.  
> **I** know that **the desk is solid**.  

$S$ is the holder of the knowledge. $P$ is a statement describing something $S$ knows.

For Descartes and Locke, they assume that $S$ is themselves, and that the same thing applies to others.

For them, $S$ is everyone - we can slot in any person as $S$.

Lorraine Code criticized this, asking whether who $S$ is affects $P$.

Lorraine Code
-------------

Influential contemporary philosopher - wrote CODE in 1981.

Lorraine Code's contribution was asking, is the value of $S$ significant? Would it matter if $S$ was a man or a woman? If $S$ was of a minority?

Does the gender of $S$ affect $P$?

> Is the sex of the knower epistemologically significant?

The main point is, **different perspectives can affect what people know**.

It is important to consider when some $S$ knows $P$, it does not imply that all $S$ knows $P$.

When a lot of philosophers talk about $S$ being a rational knower, they were making a lot of stereotypically masculine assumptions, like rationality, assertiveness, logical thought.

However, this rules out a bunch of people. We can only say something is true for those people who fit the criteria. Can we extend this to include more people?

So **knowledge is dependent on the knower** - the identity of $S$ is significant.

Instead of asking "why is the chalk white?", we should instead ask questions that have more of a bearing on human well-being.

> How do we know other people? What does it mean to know someone?

### Situated Knowers

Before, $S$ is a general everyman. A **situated knower** is a particular $S$, a knower with a particular background and context - what is it about one's situation that affects what and how one knows?

For example, an upper class white woman is a situated knower.

**Situated knowledge** is knowledge that reflects the particular background and context of a situated knower - knowledge specific to a certain situation.

For example, bats can know things that humans can never know because we can't echolocate.

An example within humans might be women being more cautious situationally due to a greater risk of violence against women, compared to men. This impacts the way people see the world. For example, women might be more likely to know that the windows are locked, due to increased situational awareness.

Some people are in a better position to know certain things than others.

# 5/11/13

Focus now switches to **feminist epistemology** - the way gender does and ought to influence our concepts of knowledge, the knower, and how we acquire knowledge.

Before this, we focused on the "knows that" part of "$S$ knows that $P$". Feminist philosophy additionally asks "who is $S$?" and "how does $S$ affect the knowing?"

Why does what one person says sound correct to that person?

**Intersectionality** is the study of the intersections between different groups of minorities - the study of interactions between multiple systems of discrimination or oppression.

;wip: philosophy of the mind

## The Knower

Lorraine Code asks us to look at the nature of the people who know.

Now $S$ is an actual person. We assume these people **have bodies**, and that these bodies affect how we think and how we know.

$S$ has a **social** location - where your place is in society, the social groups that affect who $S$ is.

$S$ also has a **material** location - where your body is physically located.

The material location and social location has a significant influence on $P$. Race, class, gender, economic status, community, all affect social location.

The **interests** of $S$ - the goals that they stand for influences $P$.

**Credibility** is the measure of confidence of one's peers in oneself. People make a lot of judgements based on the information available to them.

We want to think about the social and material locations, interests, and credibility of $S$, and how this affects what and how $S$ knows.

### Knowledge is relational

Code changes the examples that we use for $P$. How do I know my friends?

This is a different meaning of **know** - instead of "having information about", it means "having knowledge of other people", or having a relation with the other people.

We know ourselves through our knowledge of others.

### Testimony, trust, credibility

In a biology class, the textbook author or lecturer is testifying to the student.

In fact, **most of the knowledge a person has is based on testimony**, rather than being derived from reason or observations as Descartes and Locke sought to.

How are we justified in trusting the author? The author may have a PhD in the subject, and be an expert.

The student's credibility affects the credibility of the teacher.

The social position and material position of a person significantly affects credibility and trust.

> My senses have before deceived me. Should I trust my senses? My friend has before deceived me. Should I trust my friend?

Helen Longino
-------------

Knowledge is a **matter of degree**.

Longino bridges epistemology to science. She switches the perspective from thinking about knowing something to thinking about **what we do to actually create knowledge**.

> How did we figure that out?  
> What did we do to arrive at this conclusion?  

Longino is focused on the practice of obtaining knowledge.

Longino shifts the thinking of knowledge from individuals to groups of people - "knowledge-collecting communities". As an individual, one cannot have high quality, due to our internal biases.

In communities with various perspectives, we can mostly overcome our biases. We can see things from many perspectives to see as much of the issue as possible.

Even scientists cannot uncover their own biases. The best way to uncover them is to have a discussion with someone who has a different set of biases.

# 12/11/13

Philosophy of Science
---------------------

Two main perpectives:

* What is the intrinsic value of the scientific method? For example, asking what kind of knowledge is scientific?
* How can philosophers contribute to and help science? For example, clarifying what evolution means in the philosophy of biology to allow for tighter experiments.

There is also philosophy of science in general, and philosophy of special sciences, like biology or psychology.

Karl Popper was one of the best known philosophers in the philosophy of science.

He focused on two questions:

* How do we know if some piece of knowledge is scientific of not? - the **demarcation problem**.
    * We are trying to draw the line between what we can place trust and credibility in and what we cannot.
* What is the scientific method? - his answer to this is the **falsification test**

### Induction

Before Popper's time, the scientific method had three steps: observation (premises), generalization (hypothesis), more observations (testing).

For example:

    Observation:
    The geese outside of Hagey Hall are jerks
    The geese outside V1 green are jerks
    The geese outside RCH are jerks
    Hypothesis:
    All geese are jerks
    Testing:
    The geese in North Carolina are jerks too

However, Popper found several issues with this method:

* Logical problem: inductive arguments always have new information; the conclusion is only likely to be true.
    * A test is just another premise of the argument - it offers no proof.
    * A single counterexample will disprove the argument.
* Psychological problem: confirmation bias - ignoring conflicting evidence.
    * This is subtle and is often done unconsciously.
    * Humans are very good at seeing only what they want to see.
    * We are more likely to only see the jerk geese and ignore the nice ones.
* Methodological problem: we can't collect observations unless we already have some sort of theory already.
    * How could a person make observations about geese without some assumptions about what geese or jerks are?
    * We can't observe entirely objectively.
    * In the first step, what do we observe? We need to have some idea of what we are looking for before making observations.

### Falsificationism

Popper has a better idea - **falsificationism**. According to this method, scientists should not be trying to find evidence tht proves their theory right. Instead, they should try to prove the theory wrong.

A hypothesis is **scientific** if and only if it can be falsified.

The test involves imagining figuring out what could potentially make it false.

We first figure out what the hypothesis predicts: "if all geese are jerks, then the geese in North Carolina should be jerks".

We assume this implication is true.

So there is a good way to disprove the antecedent - we can just find the negation of the conclusion: "The geese in North Carolina are not jerks".

If a scientist travels there and finds that there are geese that are not jerks, then the theory is disproven.

A theory is scientific if and only if we can imagine a practical situation in which we could **disprove** the hypothesis.

If it is impractical to disprove it, or it is impossible to find a counterexample, then the theory is not scientific.

For example, a horoscope might say "you will meet a strong character today". This is not a scientific statement because there isn't any imaginable or practical way of proving this false.

This test does not depend on actually testing it; we only need to imagine the situations. Actually doing the tests are necessary too but does not affect whether something is scientific.

With Popper's method, science progresses by **ruling out what is false**.

Popper says that his method doesn't have the issues mentioned above because:

* This method is deductive - a counterexample allows us to conclude with certainty that a theory is false.
* We eliminate confirmation bias by specifically going against it.
* We are trying to prove something false rather than true, so we are specifically trying to look for a specific thing. We are starting with the hypothesis in this case, the 

Although we cannot determine the truth of the hypothesis by observation, we can increase the our **confidence** in it.

Our confidence in a theory is determined through **strong tests**. A stronger test makes risky predictions, predictions that are unlikely to be the case. A weaker test makes predictions that we would expect to see anyways.

So when the prediction is actually true - there was a very risky test, and yet the theory still passed it - then our confidence in the theory is significantly increased. If it only passed a weak test, then our confidence is increased very little.

An example would be Einsteinian mechanics. Newtonian mechanics predicted that light travelled in straight lines, but Einstein says it can bend. This was a very risky prediction, and when light was observed to bend during a solar eclipse, our confidence in Einstein's theory was increased a lot.

To Popper, science is looking at the world and eliminating the false things. Eventually, we must converge on a set of all truths. This is reminiscent of methodical doubt used by Descartes.

# 14/11/13

;wip: paper 2 is due on tuesday, though possibly not since we didn't learn about Kuhn yet

Notes on paper 1:

* When the assignment asked to prove that the premises support the conclusion, it meant **validity**, not soundness, which most people talked about.

For example, the thesis "I think R's theory is more empirically adequate than G's" might have the premises "R's has more cultural evidence", "R's theory is based on a larger sample", and "R's theory has been verified by experiment"

Now in the validity paragraph, we would need to start off by notifying the reader that this in in fact the validity paragraph. We would not attempt to **prove the truth of the premises**, only the validity of the argument.

the validity paragraph is the one where we explain why we chose the premises we did, describing all three arguments in one paragraph

Actually, I misunderstood. A lot of people only talked about the soundness of the **premises** rather than the validity of the argument.

We are writing why the premises are used, not that the premises are true.

* Arguments should focus on the thesis and the thesis alone. Do not talk about anything else.

;wip: read the feedback on the first paper and the marking rubric - the "mechanics" grade marks the wording, style, and general aesthetics of the paper

* the assessment paragraphs were lacking. we should point out weaknesses and rebuttals to those weaknesses

Do/don't:

* do write exactly according to the instructions, do not deviate
* do use more originality - avoid points that were already given in class or presented by the philosophers themselves
* do use more signposting - tell the reader what each paragraph is about before jumping into the topic at the beginning
* don't write cryptically - use simple words, use simple sentences
* don't use gender-specific pronouns to describe generic people
* don't go over the page limit - 1 mark deducted per extra page
* don't talk about the theories too much - just talk about what background the reader needs to understand the argument in the paper

# 19/11/13

Thomas Kuhn
-----------

As a physics teacher for the humanities, he presented science in the context of history - he added a narrative structure to the history of science.

As a result, Kuhn decided to pursue the avenue further and study the history of science in more detail.

While Popper tried to determine what is science and what isn't, Kuhn states that scientists are mostly trying to build on top of an existing body of knowledge.

Most scientists are, most of the time, not trying to falsify theories. Instead, they are usually trying to do **normal science** - building on top of the current paridigm.

Scientists are trying to solve a system of problems using a system of tools that are all generally agreed upon. This is called a **paradigm**.

A paradigm is a general worldview, a set of theories, questions, and techniques that everyone agrees on. Scientists try to improve and build upon a picture they already think is there.

Where Popper's falsificationism would require that the entire paradigm be torn down every time something is falsified. Kuhn says that in practice, this happens very rarely.

A good example is geocentrism, which was false but still was a useful worldview that supported science for a long time. It was a paradigm that managed to explain what we saw, allowed ships to navigate by the stars, and was generally rather practical. Scientists of the time were trying to build upon geocentrism, not try to tear it down.

When scientists find something that doesn't fit with the paradigm - an **anomaly** - instead of falsifying the whole paradigm, we change the paradigm slightly to accomodate the anomalies or just drop the anomalies entirely.

An anomaly is an observation that does not fit with the paradigm. For example, Galileo observed that Jupiter had moons orbiting it rather than the Earth in a geocentric time.

However, though many anomalies just get ignored, **anomalies stack up**.

If there is another viable theory while the anomalies are piling up, then there is a **scientific revolution**, also known as a **paradigm shift** or **Gestalt shift** - we look at the puzzle in a different way and see two faces instead of a vase.

The scientific revolution takes place dramatically and quickly, and often in less than a generation the new paradigm is widely accepted.

Paradigm shifts take place in between periods of normal science.

People often think that the current paradigm is absolutely true. However, as Popper stated, it would only be more likely to be true as it survived more attempts to falsify it.

**Incommensurability** according to Kuhn is the idea that the truths in one paradigm don't apply to those of the other.

The truths of one paradigm is **incommensurable** with the truths of another. We observe the the world through the lens of our paradigm, and so when we change paradigms, the observations are no longer valid. We can't help but see the world through our theoretical and cultural perspective. This is called **theory ladenness**.

This is similar to the psychological problem raised by Popper - confirmation bias.

The ideas of the old paradigm are neither true nor false after a paradigm shift - they simply become invalid.

Aristotle and Galileo could be looking at the same sunrise, but one would see the sun going around the Earth, and the other would see the Earth going around the sun.

As time passes, Popper thinks we will know **more than we do now**. Kuhn thinks we will know **different from what we know now**.

The goal of research when we know there might be a paradigm shift is the possibility that the current paradigm is actually the true paradigm. In addition, there is the practical, useful aspect of the discoveries.

Kuhn thinks paradigm shifts often happen when the strongest proponents of the current paradigm die off and the new scientists bring about a change.

To Kuhn, **truth is relative to a paradigm**.

A **descriptive statement** is one that accurately describes the world. A **normative statement** is one that describes how things should be.

Kuhn's theory simply talks about how science is - it is descriptive. Popper's theory talks about how science should be - it is normative.

Willard Van Orman Quine
-----------------------

Quine was a philosopher of science, focusing on the philosophy itself rather than practical science. Quine criticized Popper's falsificationism.

> Hypotheses stand or fall in groups.

For example, if `Mary is an excellent student`, we would expect that `Mary does well on an exam`. The general form is $H \implies O$ - hypothesis implies observation.

Suppose `Mary does not do well on an exam`. Then could we say that `Mary is not an excellent student`?

No, because there are a variety of other possibilities, like `Mary is sick` or `the world ended`. There are almost unlimited other possibilities.

Quine says there are two categories we can use to see if a hypothesis is connected with a given observation:

* Initial conditions - things that already have to be in place in order to make the observation at all. For example, `mary took the test`.
* Auxilary hypotheses - things we must assume in order to connect the observation to the hypothesis. For example, `the test was graded fairly`.

The difference is not always perfectly clear and can overlap.

Now we have $H \wedge IC \wedge AH \implies O$ - **the hypothesis and initial conditions and auxilary hypotheses together imply the observation will take place**. So if $\neg O$, then we only know that $\neg H \vee \neg IC \vee \neg AH$ - we only know that one or more of these are false.

It is not practical to find all the possible initial conditions or auxilary hypotheses. As a result, we cannot simply falsify our hypotheses.

Quine's point is that we can only falsify hypotheses in groups. It is difficult to obtain a hypothesis by itself 

We can't have certainty, but we can try to prove as many of the auxilary hypotheses and initial conditions as possible. This increases our confidence that the hypothesis is false.

There is also no way to know whether we have found all the auxilary hypotheses or initial conditions.

# 21/11/13

Fox Keller
----------

Feminist philosophy of science. Scientist trained in biology. Studies systematic cultural bias in biology with respect to race, gender, etc.

Feminism is based on three main ideas:

* Sexism is morally wrong.
* Sexism has and does hurt people.
* We want do something about it.

Sexism is not necessarily explicit. For example, the structure of university makes it difficult to raise children properly for women, even though it wasn't done on purpose.

Studies show that between 25% and 12% of women experience sexual violence in their lifetimes. Sexual vioence is a problem. In everyday life, women have to take many more measures to avoid sexual violence, compared to men.

There is still a significant salary and income gap between genders. There are entrenched gender roles in terms of things like housework and raising children.

Doing something about sexism can range from running for office and enacting new laws and policies to not laughing at sexist jokes.

Feminism is not about just women - it is about fighting sexism against all genders.

Keller is looking at feminism as it relates to science - **whether science contributes to sexism**, and **how we can be more inclusive and objective in doing science**.

### Science Criticism

There is a continuum of science criticism, from **liberal** to **radical**:

* Liberal science criticism tries to remove biases from the various aspects of science - the rules themselves are good, but the people need change.
    * Science does not need to change, but scientists need to remove biases.
    * If most physicists are working on weapons, does this affect opportunities available for the genders?
* In between these two is a variety of viewpoints.
    * More liberal views look into biases in the culture of science and how it affects the types of science that get done, as well as where these biases come from - science employment, access to education, opportunities available.
    * More radical views look into the way experiments are designed - drug testing must include men and women, lack of research into breast cancer.
    * Most radical views look into objectivity and rationality and our biases in these,
* Radical science criticism tries to change the rules of science itself - science is inherently sexist, and needs to be reformed.
    * Science and its institutions are biased, and need to change.
    * ;wip

# 26/11/13

Radical Science Criticism
-------------------------

The differences between genders is significant when asking the question, "what does it mean to be human?".

Humanity is often defined in terms of our rationality - "rational animals". This is problematic because in this view women and children may be considered less human due to gender biases.

People often associate rationality with the men and the emotional with women.

If science is a rational practice, then people will associate it with masculinity. This could potentially affect the way we do science and the way science influences our lives.

Gender biases can sneak into scientific studies even if we try to control for them - consider confirmation bias.

### Critiques of objectivity

What does objectivity mean?

* Unbiased, guided by evidence.
* Dispassionate, not due to preferences.
* Facts instead of inferences.
* $S$ knows that $P$, where $S$ doesn't matter (subjective is when the subject $S$ matters).

We can apply objectivity to a person (integrity, honesty), a method (falsification, methodical doubt), or a fact (accurately describes the world, not dependent on the observer).

An objective view is a **god's eye view/view from nowhere**. We want to see the world as it actually is, regardless of who is observing it. We are trying to erase what is particular about our perspective. This view is called **aperspectival** or **neutral**.

**Objectivity as intersubjectivity**: the concept that knowledge is more objective if more people observe the same thing. This is because we reduce the influence of situated knowledge.

Feminist criticism of objectivity has several arguments regarding this:

* Perfectly objective knowledge is impossible because there is no neutral person - we can only view the world from our own perspective and situated knowledge.
* We cannot know that we have found all of our auxilary hypotheses. We would be misleading ourselves to give an "objective" fact our ful endorsement.
* We sometimes discard outliers. This negatively impacts our objectivity.
* Even the average of all humans cannot perceive everything - human beings can only see what is available to our senses.
* Intersubjectivity is vulnerable to everyone who is also observing the same thing having the same biases and situated knowledge. It is important who the subjects actually are.

### Improving objectivity

We want to control for as many factors as we can, even though it may not be possible to entirely eliminate biases.

Fox Keller states that traditionally, we need to be distant and dispassionate from our work in order to be objective. But men and women are raised differently, and we might be able to be more objective by being close and passionate about our work.

For example, I might not be able to judge my friend objectively because we are close, but Fox Keller might say that I could be more objective by being able to see things other people would not about the subject.