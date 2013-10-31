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

;wip: the structure of scientific revolutions

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
* A method of opposition. Either stating that the world doesn't actually exist, or that there is an alternative explanation for what they think. If someone says they saw a ghost, a Pirrhonian skeptic might say it was a man with a sheet, or that the world does not exist for ghosts to be seen in.

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

;wip: paper due on Oct. 24. Topic: Do you prefer Descartes Rationalist approach, or Locke's mechanical empirical approach
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

For a belief to be knowledge, it can't just be true by coincidence, it has to be:

* Justified: the belief must be supported by something
* True: it must be true
* Believed: one must believe it is true

So guessing something and being right is not knowledge.

### Justification

Philosophers often focus on the justification. For example, Descartes would justify things using reason and Locke would use the senses.

### Truth

Truth is a difficult thing to define. There are two main theories of truth:

* Correspondence: a belief is true if it accurately corresponds to something in the world.
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

> $S$ knows that $P$.  
> I know that the desk is solid.  

$S$ is the holder of the knowledge. $P$ is a statement.

For Descartes and Locke, they assume that $S$ is themselves, and that the same thing applies to others.

For them, $S$ is everyone.

Lorraine Code
-------------

Influential contemporary philosopher.

Lorraine Code's contribution was asking, is the value of $S$ significant? Would it matter if $S$ was a man or a woman? If $S$ was of a minority?

> Is the sex of the knower epistemologically significant?

The main point is, **different perspectives can affect what people know**.

It is important to consider when some $S$ knows $P$, it does not imply that all $S$ knows $P$.

When a lot of philosophers talk about $S$ being a rational knower, they were making a lot of stereotypically masculine assumptions, like rationality, assertiveness, logical thought.

However, this rules out a bunch of people. We can only say something is true for those people who fit the criteria. Can we extend this to include more people?

So **knowledge is dependent on the knower**.

The identity of $S$ is significant.

Instead of asking "why is the chalk white?", we should instead ask questions that have more of a bearing on human well-being.

> How do we know other people? What does it mean to know someone?

A **situated knower** is a particular $S$, a knower with a particular background and context. **Situated knowledge** is knowledge that reflects the particular background and context of a situated knower.

For example, bats can know things that humans can never know because we can't echolocate.

An example within humans might be women being more cautious situationally due to a greater risk of violence against women, compared to men. This impacts the way people see the world. For example, women might be more likely to know that the windows are locked, due to increased situational awareness.

Some people are in a better position to know certain things than others.