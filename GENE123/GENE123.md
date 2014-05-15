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

-ve is short for "negative". +ve is short for "positive".

Before we know whether a circuit element is a source or a load, we must assume the direction of the current first. According to this direction, we will be assuming whether it is a source or a load.

We represent the reference direction for voltage on a circuit element by labelling the terminals $+$ and $-$, or saying $V_{ab}$ ($a$ is the higher potential, $b$ is the lower potential; $a$ is +, $b$ is -), or by drawing an arrow from $-$ to $+$.

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

The passive sign convention is simply the idea that the current enters the positive terminal of a passive circuit element.

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

Kirchoff's Voltage Law
----------------------

;wip: assume direction of travel to be clockwise

;wip: hitting positive element means voltage added, hitting negative means subtracted

;wip

The closed loop does not have to be an actual subcircuit - the points making up the loop do not need to be connected in any way.

The passive sign convention means that voltage drops are positive and voltage gains are negative.

# 12/5/14

The variables we have so far are $P$ (Voltage), $I$ (Amperage), $P$ (Wattage), $W$ (Joules), and $q$ (Coulombs).

Circuit Elements
----------------

We can label points on a circuit by writing its label beside that point, and optionally drawing an arrow pointing it out if unclear. Labels are often letter like "a" or "b".

* Circuit elements are either active or passive.
    * Active elements **supply energy**. They are either voltage or current sources.
        * **Voltage sources** provide a constant voltage.
            * An **independent** voltage source provides the same voltage regardless of the current.
                * The circuit symbol for this is a circle with + and - inside it labelling the positive and negative terminals.
                * The voltage is constant and does not depend on anything.
            * A **dependent/controlled** voltage source provides voltage depending on something else in the circuit.
                * Can be **voltage controlled** or **current controlled**.
                * A voltage controlled voltage source provides voltage as a function of the voltage between two specified nodes - $V = kV_{ab}$.
                * A current controlled voltage source provides voltage as a function of the current passing through a specified point - $V = kI_a$.
                * The circuit symbol for this is a diamond (rhombus) with + and - inside it labelling the positive and negative terminals. The wires come out of the points of the diamond.
        * **Current sources** provide a constant current.
            * An **independent** current source provides the same current regardless of the current.
                * The circuit symbol for this is a circle with an arrow inside it pointing along the direction of the current.
                * The current is constant and does not depend on anything.
            * A **dependent/controlled** current source provides current depending on something else in the circuit.
                * The circuit symbol for this is a diamond (rhombus) with an arrow inside it poiting along the direction of the current. The wires come out of the points of the diamond.
                * Can be **current controlled** or **voltage controlled**.
                * A current controlled voltage source provides current as a function of the current passing through a specified point - $I = kI_a$.
                * A voltage controlled current source provides current as a function of the voltage between two specified nodes - $I = kV_{ab}$.
        * It is not possible to have both.
        * Independent sources are drawn as circles, dependent sources are drawn as diamonds (rhombuses).
        * Voltage sources have + and - labels, current sources have an arrow.
    * Passive elements **use energy** (including those that simpy store energy like capacitors).

Current sources do not add current - they make sure the actual current flowing through it is exactly its value. For example, a 12 A current source does not add 12 A to the current - it makes sure the current flowing through it is 12 A.

We can put two voltage sources in series, and the resulting voltage is the sum of their values - $V = V_1 + \ldots + V_n$, even if some of the voltages are negative. This can be derived using KVL.

We can put two current sources in series, but **only if they have the same value**. Why is this?

Suppose we have a current source connected to another current source with a different value in series. Then the current on both must be the same (due to the series connection), but the current sources are trying to obtain different currents.

Therefore, there are no solutions to the circuit and the behaviour is undefined. In practice, they will overheat and burn. However, if the currents are exactly the same then they will agree on a value and there is a solution.

We can put voltage sources in parallel, but **only if they have the same value**. This is because of a similar reason, that parallel connections have the same voltage, so the sources must also have the same voltage.

We can put current sources in parallel, and the resulting current is the sum of their values - $I = I_1 + \ldots + I_n$, even if some of the currents are negative. This can be derived using KCL.

It is important not to directly connect the two terminals of a voltage source. Since the votlage drop across a wire is negligible, the current and therefore the power goes to infinity and extreme heat is generated, which will quickly destroy any real-world circuits. This is known as a **short circuit**. It cannot occur with current sources because the current is held constant.

If we have two separate circuits connected by a single wire, the actual potential energies are unlikely to be exactly the same. Therefore, we need at least two wires to connect two circuits together - the electrons need to have a way back to the lower potential.

# 13/5/14

;wip: add the circuit example we did in class from notebook

;wip: copy stats example from notebook

Resistance
----------

Resistance is the difficulty current has in passing through a circuit element. The electrons themselves encounter difficulty passing through the conductor and some of their energy is dissipated as heat or other forms of energy.

Resistance is measured in Ohms ($\Omega$). One Ohm is one volt per amp.

A **resistor** is a circuit element with resistance. It is represented using a squiggly line ;wip

Resistance is the last part of the three parts of **Ohm's Law**, which can be stated as $V = IR$ - voltage is the product of current and resistance. Other forms are $I = \frac V R$ and $R = \frac V I$.

Two special cases are a short circuit, when resistance is 0 and current becomes undefined, and an open circuit, when resistance is infinity and current becomes 0.

Clearly, $P = VI = (IR)I = I^2 R$. Likewise, $P = VI = V \frac V R = \frac {V^2} R$.

As an aside, the resistance of a wire is $R = \frac{\rho l}{A}$, where $\rho$ is a constant of resistivity (depending on temperature and such), $l$ is the legth of the wire, and $A$ is the corss sectional area.

When we find the power balance, we want to find the power adsorbed and the power supplied, and make sure they match.

# 14/5/14

When we are solving a circuit, we start with the elements that we have the most information about. Then we assume a direction of current (it is generally good to make an educated guess based on the power supplies), and solve the circuit using that assumption.

We can name the voltage loops by drawing a circle inside the loop and labelling it with something like L1 or L2.

Analyzing a circuit means calculating the current and voltage across all the circuit elements.

Equivalent Resistances
----------------------

An equivalent resistor is a resistor that behaves exactly the same as a given part of a circuit. If a part of a circuit has an equivalent resistor, we can simply replace it with the equivalent resistor to simplify it. It is represented by $R_{eq}$.

For series circuits, the current is constant for all the circuit elements, and the overall voltage is the sum of all the voltages, so $V_{eq} = I_{eq}R_{eq} = V_1 + \ldots + V_n = I_1R_1 + \ldots + I_nR_n = I_{eq}(R_1 + \ldots + R_n)$, so $R_{eq} = R_1 + \ldots + R_n$.

When we have multiple resistors $R_1, \ldots, R_n$ in series, all of these resistors together are equivalent to one big resistor with value $R_1 + \ldots + R_n$. In other words, when we put resistors in series, their resistances add up.

We often do this substitution whenever the actual voltages or currents between the resistors isn't important. For example, if there are dependent sources that depend on the voltage or current across one resistor, then we need to keep that resistor in the circuit.

For example, if we have resistors $R_1, R_2, R_3, R_4, R_5, R_6$ in series, with the voltage across $R_3$ controlling a dependent source, then we simply exclude $R_2$ from the equivalent resistance substitution, so we substitute the equivalent resistor for $R_3, R_4, R_5, R_6$ to get $R_1, R_2, R_{eq}$.

For parallel circuits, the voltage is constant across all the branches and the overall current is the sum of all the currents, so $I_{eq} = \frac V_{eq} {R_{eq}} = I_1 + \ldots + I_n = \frac{V_1}{R_1} + \ldots + \frac{V_n}{R_n}$, so $\frac 1 {R_{eq}} = \frac 1 {R_1} + \ldots + \frac 1 {R_n}$.

When we have multiple resistors $R_1, \ldots, R_n$ in parallel, the value of the equivalent resistor is $\frac 1 {\frac 1 {R_1} + \ldots + \frac 1 {R_n}}$.

**Conductance** ($G$) is the opposite of resistance, and is calculated as the reciprocal of the resistance - $G = \frac 1 R$. The unit is Siemens (S), the reciprocal of an Ohm.

# 15/5/14

Resistors in series increase their equivalent resistance. Resistors in parallel decrease their equivalent resistance.

When we have two resistors $R_1, R_2$ in parallel, the equivalent resistance is $R_{eq} = \frac{R_1 R_2}{R_1 + R_2}$ - "product over sum".

If there is a short circuit in a resistor circuit, the equivalent resistance is always 0. This is because the current goes through the short circuit rather than the resistors.

To simplify resistor networks, we repeatedly check if there are resistors in series, and replace them with an equivalent resistor if possible (no voltage-controlled dependent sources). Eventually, when we can no longer apply these rules, the network is in its simplest form.

Any network of resistors not controlling any dependent sources can be simplified into a single equivalent resistance.

Voltage/Current Division
------------------------

We can use Ohm's law to design circuits that can divide the voltage of the source by a given factor. Consider a voltage source at $V_x$ connected to two resistors in series, $R_1$ and $R_2$.

Clearly, $I$ is the same across all elements, so $I = \frac{V_x}{R_{eq}} = \frac{V_x}{R_1 + R_2} = \frac{V_1}{R_1} = \frac{V_2}{R_2}$.

Solving, we get that the voltage between the junction of $R_1$ and $R_2$ and the negative terminal is $V_1 = \frac{R_1}{R_1 + R_2} V_x$. This allows us to multiply the voltage by any factor $\frac{R_1}{R_1 + R_2}$ to get any lower voltage.

In the same way we can divide current using a parallel circuit. Consider a current source at $I_x$ connected to two resistors in parallel, $R_1$ and $R_2$.

Clearly, $V$ is constant across all elements, so $V = I_xR_{eq} = I_x\frac{R_1 R_2}{R_1 + R_2} = I_1R_1 = I_2 R_2$.

Solving, we get that the current flowing through $R_1$ is $I_1 = \frac{R_2}{R_1 + R_2}I_x$.
