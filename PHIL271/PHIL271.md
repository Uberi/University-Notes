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

One way to construct natural numbers in terms of sets is to define 1 as the empty set, 2 as the set containing just 1, 3 as the set containing 1 and 2, and so on, each successive number's set containing every predecessor's set. We can easily reduce integers to natural numbers by assigning alternating positive and negative integers to even and odd natural numbers (with the integer 0 being mapped to the natural number 1), and using similar techniques, rational, irrational, and complex numbers. Therefore, all of these numbers can be reduced to sets.

Suppose we say that the existance of sets are pretty much self evident. By reducing things to sets, we can anchor their existance in that of sets, and by doing do learn more about what objects we consider to exist. This is essentially much of the foundationalist work that took place in the late 19th century, as mathematicians attempted to get rid of gotchas and pitfalls in proofs once and for all.

Originally, sets were seen as extensions of concepts, where every well-defined concept defines a set of individuals that belong to that concept. However, this definition has a few issues. One of them is Russel's paradox: suppose we define a set with "something that is not a member of itself". Does this set contain itself? If it does, then it shouldn't by definition, and if it doesn't, then it should be contained in the set.
