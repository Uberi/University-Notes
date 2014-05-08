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

**Electric current** (represeted by $I$) is the flow of electrons. It is the rate of change of the charge - $I = \frac{\dee q(t)}{\dee x}$. Therefore, $q(t) = \int_0^t I(t) \dee t + q(0)$. Current is measured in Amperes (A), and 1 Ampere is 1 Coulomb per second.

### Switches

Switches have two conductive ends. When a switch is **closed**, the ends are connected and current may pass through. Otherwise, they are not and current cannot pass through.

Given $I(t) = \begin{cases} 0 &\text{if } t < 0 \\ e^{-2t} &\text{if } t \ge 0 \end{cases}$, $q(0) = 0$, find $q(t)$:

> Clearly, $q(t) = \int I(t) \dee t = \begin{cases} 0 &\text{if } t < 0 \\ \evalat{-\frac{1}{2}e^{-2t}}_0^t &\text{if } t \ge 0 \end{cases} = \begin{cases} 0 &\text{if } t < 0 \\ -\frac 1 2 e^{-2t} - \frac 1 2 &\text{if } t \ge 0 \end{cases}$.   

**Normally open** switches are open (not conductive) until actuated by the user. For example, a pushbutton or a keyboard key. **Normally closed** switched are the opposite, and are closed (conductive) until actuated by the user.

         o
        /
    ---o   o----------o---o---
       Open           Closed

Normally open switches are drawn as open switches with a curved clockwise arrow through the middle of the switch indicating it can be closed, and normally closed switches are drawn as closed switches with a curved counterclockwise arrow.

# 7/5/14

When we solve circuits, we might not know the direction of the current of the first. We can assume that the current flows in a **reference direction**.

$i_{AB}$ is the current that flows from the point $A$ to the point $B$.

In our circuits, $i_{AB} = -i_{BA}$. In other words, the magnitude of the current is always the same, regardless of the reference direction chosen. If the current is negative, the current is just flowing in the other direction.

### Types of Current

**Direct current** (DC) is current that stays constant over time. This is produced from batteries and many power supplies.

**Alternating current** (AC) is current that oscillates about 0 Amperes. It might look like a sine wave, or a square wave.

**Time varying current** is current that changes as an arbitrary function of time. AC and DC currents are all time varying currents.

### Voltage

Electrical charge has potential energy, similar to gravitational potential energy. This is always relative to some sort of reference level of energy.

A **voltage** is the difference of potential energy between two points in space.

The electrons always try to go from higher potential to lower potential.

In a battery, the positive terminal has a higher potential (which is why the postive terminal in a battery symbol has a longer line), and the negative terminal has a lower one (which is why its line is shorter). The positive terminal of the battery is drawn with the longer line.

The current has nowhere to go except through the wires, so it passes through the circuit.

Since energy must be conserved, and batteries are converting chemical energy into electrical potential energy, and electrical potential energy remains constant in the circuit, loads convert this electrical potential energy into other forms.

All circuits have **sources** and **loads**. Sources are the circuit elements that produce energy, and loads consume energy.

Sources have current enter the negative terminal, like how current goes from the negative terminal to the positive terminal in a battery.

Loads have current enter the positive terminal, like how current goes from positive to negative in an LED.

This is how we tell the difference between sources and loads. In circuits, we always connect the positive terminals of loads to the positive terminals of sources, and the negative terminals to the negative terminals.

The formal definition of voltage is the energy needed or transferred by a unit charge, when it travels through a circuit element. it can be mathematically defined as $V = \frac{\dee w}{\dee q}$, where $w$ is the energy (Joules) and $q$ is the charge (Coulombs). The unit of voltage is the Volt (V), which is 1 Joule per Coulomb. Voltage is also known as **electromotive force**.

Since $V = \frac{\dee w}{\dee q}$, $w = \int V \dee q$.

Energy is transferred by current, and the amount of energy transferred is determined by the voltage.

A 1.5 V battery is one such that a charge of 1 C can transfer 1.5 J of energy to the circuit. The energy was applied to the charge when it passed through the battery.

$-ve$ represents the negative terminal. $+ve$ represents the positive terminal. ;wip: of what? a battery? any circuit element?

Before we know whether a circuit element is a source or a load, we must assume the direction of the current first. According to this direction, we will be assuming whether it is a source or a load.

We represent the reference direction for voltage on a circuit element by labelling the terminals $+$ and $-$, or saying $V_{ab}$ ($a$ is the higher potential, $b$ is the lower potential), or by drawing an arrow from $-$ to $+$.

The reference direction is not important for the circuit elements in this course. In other words, $V_{ab} = -V_{ba}$.

So if we solve the voltage on the circuit element and the voltage is negative, that means the reference we assumed is backwards and that the positive terminal is actually the negative terminal, and vice versa.

There is both a reference current direction and a reference voltage direction. We often assume the current goes into the positive terminal since most circuits elements are loads. The reference voltage direction is often arbitrary.

# 8/5/14

If the current goes from lower potential to higher potential, then the element supplied energy. If the current goes from higher to lower, then the element absorbs energy.

We can measure the voltage across a device using a voltmenter. A voltmeter has two terminals, which can be placed on two different places on the circuit to measure their potential difference.

We can measure current flowing through a device using an ammeter. An ammeter has two terminals, which are placed inline with the circuit element (in serial) to measure the current flowing through that part of the circuit.

A 2 C charge at 20 V moves from negative to positive in a circuit element. What is the energy supplied/absorbed?

> Clearly, $\dee q = 2 C$ and $w = \int 20 V 2 C = 40 J$.  
> The energy is being supplied because the charge is moving from negative to positive, which means that the charge is gaininng energy.  

### Power

Power is energy per unit time, measured in Watts (W) - the rate of transfer of energy.

Power is defined as $P = \frac{\dee w}{\dee t}$. Therefore, 1 Watt is defined as $1 W = 1 J/s$ - the power needed to transfer 1 Coulomb of charge per second.

Clearly, $P = \frac{\dee w}{\dee q} \frac{\dee q}{\dee t} = VI$. This is the most common formulation of power - voltage times current.

Most elements in a circuit are **passive** - they simply use energy. Therefore, we use the **passive sign convention**:

* We start with the assumption that most of the circuits are passive and are adsorbing energy.
* Current enters the positive terminal of passive circuit elements, so $P = VI$.
* If the current enters the negative terminal, then $P = -VI$ instead.
* The current can be positive or negative, we are simply considering which terminal it is entering at.
* If power is positive, the element absorbs energy.
* If the power is negative, the element supplies energy, and our original assumption was incorrect.

Consider the following circuit:

    ___  + 12 V
       |
       E
    ___| - <= -2 A current enters element here

What is the power? Is it a source or a load?

> Since the current enters the negative terminal, $P = -VI = -12 V \times -2 A = 24 Watts$.  
> Since the power is positive, the circuit element adsorbs energy and is a load.  

Since $P = \frac{\dee w}{\dee t}$, $\Delta w = \int_{t_1}^{t_2} P(t) \dee t$.

If $V(t) = 3e^{-t} V$ and $I = 3e^{-t} A$, then $P = V(t) I(t) = 6e^{-2t} W$, and $\Delta w = \int_0^\infty 6e^{-2t} \dee t = 3 J$.

Kirchoff's Current Law (KCL)
----------------------------

A **node** is a junction where two or more circuit elements are connected. It is the entire connection between these elements. These are usually connected pieces of wire.

Current cannot sit around in a node. That means that the current entering a node should be the same as the current leaving.

Two elements are in **series** if they share a node and they have the same current.

Kirchoff's Current Law says that the net current sum in any node in 0. When we do the net current sum, we represent the currents entering as positive, and the currents leaving as negative, so when we add them all together, they are 0.

In other words, the magnitude of the sum of currents entering the node is equal to the magnitude of the sum of currents leaving the node.

For example, consider the following circuit:

    Node 1
    v
     ___B_______  < Node 2
    |      |    |
    A      C    D
    |______|____| < Node 3

;wip: add some numbers and solve