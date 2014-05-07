GENE123
=======

Electrical engineering.

    Instructor: Samar Mohamed
    Office: EIT 3112
    Office Hours: drop-in

$$
\newcommand{\set}[1]{\left\{ #1 \right\}}
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
$$

# 6/5/13

ELectricity
-----------

Matter is composed of protons, neutrons, and electrons. Protons are positively charged, and electrons are negatively charged.

The electrons are free to move around. Each electron has a negative charge of $-1.6 \times 10^{-19}$ Coulombs (the unit of charge). Charge is represented with $q$.

**Conductors** are materials that have lots of free electrons - electrons that are free to move. Insulators are the opposite, where few electrons can move freely.

Conductors allow electrons to move around inside them.

Since electrons are negatively charged, when then current flows in one direction, the actual electrons are moving in the opposite direction. The current is the flow of electrons.

This is a historical quirk that is the result of the original assumption that it was the positively charged particle that flowed in a circuit. When it was discovered much later that the negative charges are moving, the current direction was kept the same, but the particles were changed to move in the opposite direciton.

Electrical current flows from the positive to the negative, so the electrons flow from the negative to the positive.

There are also materials known as semiconductors, which can act like a conductor or an insulator depending on the way they are used. These are outside of the scope of this course.

In a superconductor, all the electrons are free. It is the ideal conductor.

A **circuit** is a path for electricity to flow in. Electrons transfer energy from the sources of a circuit to the loads.

It can be composed of things like sources (batteries, etc.), wires, resistors, switches, and more.

;wip: the large side of the battery is positive

;wip: normally open/normally closed switches with arrows drawn through them

**Electric current** (represeted by $I$) is the flow of electrons. It is the rate of change of the charge - $I = \frac{\dee q(t)}{\dee x}$. Therefore, $q(t) = \int_0^t I(t) \dee t + q(0)$. Current is measured in Amperes (A), and 1 Ampere is 1 Coulomb per second.

### Switches

Switches have two conductive ends. When a switch is **closed**, the ends are connected and current may pass through. Otherwise, they are not and current cannot pass through.

;wip: headlamps example with parallel circuit

Given $I(t) = \begin{cases} 0 &\text{if } t < 0 \\ e^{-2t} &\text{if } t \ge 0 \end{cases}$, $q(0) = 0$, find $q(t)$:

> Clearly, $q(t) = \int I(t) \dee t = \begin{cases} 0 &\text{if } t < 0 \\ \evalat{-\frac{1}{2}e^{-2t}}_0^t &\text{if } t \ge 0 \end{cases} = \begin{cases} 0 &\text{if } t < 0 \\ -\frac 1 2 e^{-2t} - \frac 1 2 &\text{if } t \ge 0 \end{cases}$.   
