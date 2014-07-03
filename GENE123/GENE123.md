GENE123
=======

Electrical engineering.

    Instructor: Samar Mohamed
    Office: EIT 3112
    Office Hours: drop-in

$$
\newcommand{\set}[1]{\left\{ #1 \right\}}
\newcommand{\tup}[1]{\left\langle #1 \right\rangle}
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
\newcommand{\formlp}{\operatorname{Form}(\mathcal{L}_P)}
$$

# 6/5/13

Electricity
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

**Alternating current** (AC) is current that oscillates about 0 Amperes. It might look like a sine wave, a square wave, or any kind of oscillating function.

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

So if $V_a > V_b$, $V_{ab} > 0$, and if $V_a < V_b$, $V_{ab} < 0$.

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

A **node** is a junction where two or more circuit elements are connected. It is the entire connection between these elements, not any particular point in the circuit. These are usually pieces of wire connecting circuit elements.

Current cannot sit around in a node. That means that the current entering a node should be the same as the current leaving.

Two elements are in **series** if they share a node and they have the same current.

Kirchoff's Current Law says that the sum of all the currents entering any node is 0. When we do the net current sum, we represent the currents entering as positive, and the currents leaving as negative, so when we add them all together, they are 0.

In other words, the magnitude of the sum of currents entering the node is equal to the magnitude of the sum of currents leaving the node.

This law also works for individual points, not just entire nodes. The sum of the currents entering a point in a circuit is always 0.

KCL works best for nodes where there is only one unknown current entering or leaving. We should always check for these nodes first.

Kirchoff's Voltage Law (KVL)
----------------------------

Kirchoff's Voltage Law states that the sum of the voltages (with signs) in any closed loop in a circuit is always zero - that the potential gains in a circuit must be the same in magnitude to the potential drops. This follows from the conservation of energy.

The closed loop is any loop within a circuit, and the edges of the loop do not necessarily have to be circuit elements or wires. For example, a closed loop might be from the negative terminal of a battery to the positive terminal, and back, even though there are nothing connecting these terminals together. It is only important that the loop be closed - that it ends where it started.

When we analyze circuits and we don't know which direction the current is flowing, we can assume that it is clockwise. If we later solve and get a negative value for the current, we can tell that it is actually going in the opposite direction.

If a power source $V_x$ has current flowing into it from the negative terminal at voltage $V_a$, then the voltage of the current flowing out of the positive terminal is $V_b = V_a + V_x$.

If the current is flowing into the power source from the positive terminal $V_b$, then the voltage of the current flowing out of the negative terminal is $V_a = V_b - V_x$.

The closed loop does not have to be an actual subcircuit - the points making up the loop do not need to be connected in any way.

KVL works best when we can find a loop with only one unknown voltage. We should always check for these loops first.

The passive sign convention means that voltage drops are positive and voltage gains are negative. We assume that all circuit elements are loads initially because the majority of circuit elements are often loads, and therefore we would encounter fewer negative numbers.

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

Resistance
----------

Resistance is the difficulty current has in passing through a circuit element. The electrons themselves encounter difficulty passing through the conductor and some of their energy is dissipated as heat or other forms of energy.

Resistance is measured in Ohms ($\Omega$). One Ohm is one volt per amp.

A **resistor** is a circuit element with resistance. It is represented using a squiggly line ;wip

Resistance is the last part of the three parts of **Ohm's Law**, which can be stated as $V = IR$ - voltage is the product of current and resistance. Other forms are $I = \frac V R$ and $R = \frac V I$.

Ohm's law works for the passive sign convention - it assumes that positive current enters the positve terminal of the resistor.

While resistors don't have a different positive and negative terminal, we can assign positive and negative terminals to them for the purpose of measuring the voltage.

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

For parallel circuits, the voltage is constant across all the branches and the overall current is the sum of all the currents, so $I_{eq} = \frac{V_{eq}}{R_{eq}} = I_1 + \ldots + I_n = \frac{V_1}{R_1} + \ldots + \frac{V_n}{R_n}$, so $\frac 1 {R_{eq}} = \frac 1 {R_1} + \ldots + \frac 1 {R_n}$.

When we have multiple resistors $R_1, \ldots, R_n$ in parallel, the value of the equivalent resistor is $\frac 1 {\frac 1 {R_1} + \ldots + \frac 1 {R_n}}$.

**Conductance** ($G$) is the opposite of resistance, and is calculated as the reciprocal of the resistance - $G = \frac 1 R$. The unit is Siemens (S), the reciprocal of an Ohm.

# 15/5/14

Resistors in series increase their equivalent resistance. Resistors in parallel decrease their equivalent resistance.

When we have two resistors $R_1, R_2$ in parallel, the equivalent resistance is $R_{eq} = \frac{R_1 R_2}{R_1 + R_2}$ - "product over sum".

If there is a short circuit in a resistor circuit, the equivalent resistance is always 0. This is because the current goes through the short circuit rather than the resistors.

To simplify resistor networks, we repeatedly check if there are resistors in series, and replace them with an equivalent resistor if possible (no voltage-controlled dependent sources). Eventually, when we can no longer apply these rules, the network is in its simplest form.

Equivalent resistance is useful for simplifying resistor networks, but there are many situations where it cannot be used. For example, a 2 by 2 grid where all the edges are resistors cannot be simplified completely using only this technique.

Voltage/Current Division
------------------------

We can use Ohm's law to design circuits that can divide the voltage of the source by a given factor. Consider a voltage source at $V_x$ connected to two resistors in series, $R_1$ and $R_2$.

Clearly, $I$ is the same across all elements, so $I = \frac{V_x}{R_{eq}} = \frac{V_x}{R_1 + R_2} = \frac{V_1}{R_1} = \frac{V_2}{R_2}$.

Solving, we get that the voltage between the junction of $R_1$ and $R_2$ and the negative terminal is $V_1 = \frac{R_1}{R_1 + R_2} V_x$. This allows us to multiply the voltage by any factor $\frac{R_1}{R_1 + R_2}$ to get any lower voltage.

In the same way we can divide current using a parallel circuit. Consider a current source at $I_x$ connected to two resistors in parallel, $R_1$ and $R_2$.

Clearly, $V$ is constant across all elements, so $V = I_xR_{eq} = I_x\frac{R_1 R_2}{R_1 + R_2} = I_1R_1 = I_2 R_2$.

Solving, we get that the current flowing through $R_1$ is $I_1 = \frac{R_2}{R_1 + R_2}I_x$.

Voltage/current division uses two resistors in series or parallel, respectively. The factor for the value for $R_1$ is always $\frac{R_2}{R_1 + R_2}$.

To find the energy transferred over some time interval, we need to find the power and integrate it to find the energy.

If the current comes out of the positive terminal of a circuit element, it is supplying power. If it goes into the positive terminal, the circuit element is adsorbing power.

In summary, when two resistors $R_1, R_2$ are in series, the voltage over $R_1$ is $V_1 = \frac{R_1}{R_1 + R_2} V_x$ and when they are in parallel, the current is $I_1 = \frac{R_2}{R_1 + R_2}I_x$.

Voltage division uses the resistor we are measuring the voltage on in the numerator, while current division uses the other resistor.

# 20/5/14

When doing nodal analysis, it is often helpful to mentally collapse all the nodes into a point, so the circuit appears like a graph with nodes as vertices and circuit elements as edges. This helps us see relationships like parallel and series connections that might not otherwise be obvious.

The order of circuit elements in series does not affect the current or voltage at the circuit ends. For example, a voltage source followed by a resistor is equivalent to a resistor followed by a voltage source at the two free ends.

# 22/5/14

If we have $n$ resistors in series, the voltage across any resistor $R_i$ is $\frac{R_i}{R_1 + \ldots + R_n} V$. Voltage division works for any number of resistors, but current division only works for two resistors.

Nodal Analysis
--------------

Also known as node voltage analysis. We use KCL and KVL and Ohm's law to write down every relation we can find between different voltages, and then solve for the voltages.

Procedure:

1. Assign one node to be the ground/reference node - $V_{ref} = 0$.
    * This is the reference zero voltage, and can be any node, not necessarily the one with the lowest voltage.
    * We draw a ground symbol (;wip: symbol) connected to that node in order to denote this.
2. Write out the equations implied by voltage sources to calculate voltage relations between nodes.
    * For example, a 5V voltage source means that the voltage on one side is equal to the voltage on the other side plus 5: $V_{positive} = 5V + V_{negative}$.
3. For each node we assume all currents are **leaving the node**, and write down the equations implied by KCL - $I_1 + \dots I_n = 0$ at each node. Substitute the values implied by current sources.
4. Write each $I_1, \ldots, I_n$ in terms of voltage, generally using resistance and Ohm's law for resistors. Now we have a set of equations in terms of node voltages.
5. Solving the system, we get the voltages at each node. Using this, it is possible to calculate the current at each node as well.

The **essential nodes** of a circuit are those nodes that connect three or more circuit elements.

There's a faster way using matrix inversion, but we will be using the plain algebraic method for simplicity.

If we have a resistor $r$ and the voltages at the terminals are $V_1$ and $V_2$, and the current is travelling from $V_2$ to $V_1$, then the current is $I = \frac{V_2 - V_1} r$. The voltage on the side the current is flowing out of for a resistor is always lower than the side it is flowing into - current always flows toward lower voltage.

The unknowns in nodal analysis are the node voltages. Each branch current is represented in terms of node voltage.

KCL can be used directly when there is only one unknown current in the path, and KVL can be used directly when there is only one unknownn voltage in the loop. Otherwise, we need to write out and solve the system of equations.

# 26/5/14

Supernodes
----------

A **supernode** is an area of a circuit possibly consisting of nodes or circuit elements, where KCL holds. In other words, it is an area of the circuit where the current leaving is the same as the current entering.

In fact, all areas of a circuit obey KCL. So we can actually apply KCL over bigger areas of the circuit.

The most common use of supernodes is to collapse multiple nodes that are connected together into a single node. This simplifies calculations significantly.

# 27/5/14

This is the reason we consider essential nodes only when doing nodal analysis - nodes that only connect two circuit elements can have both circuit elements be collapsed into one supernode.

When we have a voltage source, we often consider it and both its terminals as a supernode, and then write an extra voltage equation.

Voltage sources are the most common use of supernodes.

Mesh Analysis
-------------

Nodal analysis focuses on the voltage at each node. Mesh analysis focuses on the current in each loop.

A **loop** in this context is a closed path that starts at a node and passes through adjoining elements until it reaches the starting node again. Unlike with KVL, they must all be connected by wire.

A **branch** is zero or more elements connected in series. A branch is basically an area where the current is the same - the current equivalent of a node, where the voltage is the same.

A **mesh** is a loop that does not contain any other loops within it. It is basically the smallest possible unit of loop possible in a circuit.

Every mesh has a mesh current - virtual current that flows along the mesh. We pretend that the current flows only along the mesh, so we only have to consider the mesh and not connecting elements. We usually assume the mesh current is going clockwise for consistency purposes.

We can write branch current in terms of mesh currents. All we have to do for each branch is to add up all the mesh currents that the branch is part of. For example, if a branch forms an edge in one mesh has a mesh current of 1A and another mesh with -2A, then the branch current is -1A. Basically, we superimpose the mesh currents over each other to get the branch currents.

The basic procedure is as follows:

1. Identify and label the meshes and branches.
2. Write out the branch currents in terms of the mesh currents.
3. Write out KVL equations for each mesh in terms of the branch currents, and substitute the mesh currents in.
4. Solve system of equations to obtain the mesh currents.
5. Use mesh currents to determine branch currents.

# 28/5/14

;wip: mesh analysis continued, supermeshes

Supermeshes are commonly used to deal with current sources.

# 29/5/14

So far we learned equivalent resistance, voltage/current division, nodal analysis, and mesh analysis. Using these techniques, we can solve any circuit.

Superposition
-------------

If we have multiple independent sources, we can actually consider the sources one at a time and then include their effects on voltage and current independently.

We can do this with voltage and current because they are linear. Since power is not linear, we cannot use superposition with it directly.

For each source, we consider the circuit when we remove the effects of all the other independent sources.

For voltage sources, we remove their effect by replacing it with a wire - a short circuit.

For current sources, we remove their effect by removing it entirely, leaving a blank space - an open circuit.

Afterwards, we simply add up the currents or voltages to get the currents or voltages in the original circuit.

This only works with independent sources. If there are dependent sources, we simply keep them instead of removing their effects. If there are dependent sources that are nonlinear, then we cannot use superposition at all - only dependent sources that multiply a current/voltage with a constant will work.

# 3/6/14

;wip: catch up: superposition examples

Note that if there is no current across in a branch of a circuit, then the voltage drop across any components in that branch is 0. That means the voltage is constant across the branch if there is no current.

Thevenin Equivalent Circuits
----------------------------

Any section of a circuit that consists entirely of linear elements (such as resistors and voltage/current sources) can be represented by a voltage source in series with a resistor.

This voltage source in series with a resistor is called a **Thevenin equivalent circuit**.

The resulting circuit functions identically to the original circuit in every way.

The value of the voltage source is the open circuit voltage of the element, represented by $V_{th}$. We usually use nodal analysis to find this.

The value of the resistor is the Thevenin resistance $R_{th}$. There are multiple methods of finding this.

# 4/6/14

### Calculating Thevenin Resistance

If there are only independent sources, calculating the Thevenin resistance is very easy.

First, we remove the effects of all the sources - replacing voltage sources with wires, and current sources with open circuits - so that every source has been removed.

Then $R_{th} = R_{eq}$ - the Thevenin resistance is just the equivalent resistance of the circuit.

Afterwards, we can just use nodal analysis to find the open circuit voltage, and we have the Thevenin equivalent.

# 5/6/14

When we have a mix of independent and dependent sources, we can no longer use the above method. When we have a dependent source, we can no longer simply remove the effects of all the sources.

$V_{OC}$ is the voltage at the open circuit.

We also have another method for finding the Thevenin equivalent.

Since there is no current when the circuit is open, $V_{OC} = V_{th}$ - the voltage at the open circuit is the same as the voltage of the voltage source.

Note that the Thevenin circuit is equivalent to the original circuit in every way. So if we short circuit the open circuit, the current flowing through the short circuit $i_{SC}$ must also be the same as the original circuit.

    
       -----/\/\/\------o A <= V_{AB} = V_{th} - without the short circuit
       |                ?
      ---               ? <= I_{SC} - short circuit current
    -------             ?
       |                ?
       -----------------o B

From the diagram it is clear that $I_{SC} = \frac{V_{OC}}{i_{SC}}$. So $R_{th} = \frac{V_{OC}}{I_{SC}}$. This is the general formula for any linear circuit and works even if there are dependent sources.

$R_{th} = \frac{V_{OC}}{I_{SC}}$ because $I_{SC}$ is the current flowing through the rest of the circuit and the 

We should start by assuming one of the open terminals as positive and the other negative and assuming a direction for the current. Then we solve for short circuit current and open circuit voltage to calculate the Thevenin equivalent resistance.

Also, if we have only dependent sources, or no sources at all, then there will be no current at all in the open circuit by itself. So the resulting Thevenin equivalent circuit will have no voltage source, only a resistor.

Since we still need to find the Thevenin resistance, we introduce a test source across the specified terminals, often of 1 V or left as an unknown, in order to find $I_{SC}$, the current going through the voltage source. We could also introduce a current source, often of 1 A or left as an unknown, in order to find $V_{OC}$, the voltage across the current source.

;wip: diagram

When we use the test source, $R_{th}$ is the voltage of the test source over the current through the test source. The open circuit voltage can still be found using nodal analysis, but is simply 0V.

# 9/6/14

So the three methods are:

1. If all sources are independent, remove the effects of the sources and calculate the Thevenin resistance. Then use nodal analysis to get the open circuit voltage.
2. If there are dependent sources but no independent sources, add a test source to help with finding the Thevenin resistance. Then the Thevenin voltage is 0V.
3. Otherwise, use nodal analysis to get the open circuit voltage and short circuit voltage, and use this to calculate the Thevenin resistance.

The Thevenin equivalent is relative to two terminals (often called A and B) in section of a circuit. We are trying to find a circuit we can replace that entire section of circuit between A and B with that acts exactly the same.

The open circuit voltage is just the voltage across A and B if we removed everything that is not in that section of the circuit and measured the voltage across the terminal. We basically ripped the section out of the circuit so we don't consider any other wires or components, and then put a voltmeter on the terminals.

The short circuit current is the current that we get if we then connect a wire across A and B in that circuit and measure the current across that wire. We basically put an ammeter on the terminals in the section of the circuit.

Note that we have two different circuits when we are calculating the equivalent circuits - one wherre the terminals are short circuited, and one where they are not. We must perform nodal analysis on the one without the short circuit if we are finding the open circuit voltage, and the one with the short circuit if we are finding the short circuit current.

Note that if there is a short circuit, the voltage across the terminals is always 0.

The direction of the voltage source is the same as the direction we used to measure the open circuit voltage.

### Norton Equivalent

The Norton equivalent is very similar to the Thevenin equivalent, but with a current source in parallel with the resistor instead of a voltage source in series.

As with Thevenin equivalents, any resistive active circuit can be represented by a current source in parallel with a resistor.

In this case, $R_N = R_{th}$ - the Norton resistance is calculated the same way as the Thevenin resistance. As a result, we usually just write $R_{th}$ rather than $R_N$.

Also, $I_N = I_{SC}$ - the value of the current source is the same as the short circuit current between the terminals.

So if we find the open circuit voltage and short circuit current, and then we can use this to calculate $R_{th}$ and find either Norton/Thevenin equivalents.

The direction of the current source is the same as the direction we used to measure the short circuit current.

# 10/6/14

### Maximum Power Transfer

We want to find a load with resistance $R_L$ such that when we connect it to a circuit, it maximizes the amount of power adsorbed by the load.

First, we find the Thevenin equivalent of the circuit - $V_{th}$ and $R_{th}$. So now the circuit and load look like this:

![Thevenin equivalent circuit connected to load](data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0nMS4wJyA/Pgo8IS0tQ3JlYXRlZCBieSB3ZWJ0cm9uaWNzIDAuMS0tPgo8c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgd2lkdGg9IjExMSIgaGVpZ2h0PSI4MCI+PHJlY3QgeD0iMCIgeT0iMCIgZmlsbD0id2hpdGUiIHdpZHRoPSIxMTFweCIgaGVpZ2h0PSI4MHB4Ii8+PGxpbmUgeDE9IjEwIiB5MT0iMjAiIHgyPSIxMCIgeTI9IjYwIiBzdHJva2U9ImJsYWNrIiBzdHJva2Utd2lkdGg9IjIiLz48bGluZSB4MT0iMTAiIHkxPSI2MCIgeDI9IjQwIiB5Mj0iNjAiIHN0cm9rZT0iYmxhY2siIHN0cm9rZS13aWR0aD0iMiIvPjxsaW5lIHgxPSI4MCIgeTE9IjYwIiB4Mj0iMTAwIiB5Mj0iNjAiIHN0cm9rZT0iYmxhY2siIHN0cm9rZS13aWR0aD0iMiIvPjxsaW5lIHgxPSIxMDAiIHkxPSIyMCIgeDI9IjEwMCIgeTI9IjYwIiBzdHJva2U9ImJsYWNrIiBzdHJva2Utd2lkdGg9IjIiLz48ZyBzdHJva2U9ImJsYWNrIiBzdHJva2Utd2lkdGg9IjJweCIgdHJhbnNmb3JtPSJtYXRyaXgoMSwwLDAsMSw0MCw1MCkiPgo8bWV0YWRhdGEgY2xhc3M9InBhcnQiPgo8d3R4OnBhcnQgeG1sbnM6d3R4PSJodHRwOi8vY29kZS5nb29nbGUuY29tL3Avd2VidHJvbmljcyI+CiAgICA8d3R4OnBpbnM+CgkJPHd0eDphbmFsb2c+CgkJCTx3dHg6bm9kZSBpbmRleD0iMSIgeD0iMCIgeT0iMTAiLz4KCQkJPHd0eDpub2RlIGluZGV4PSIyIiB4PSI0MCIgeT0iMTAiLz4KCQk8L3d0eDphbmFsb2c+CiAgICA8L3d0eDpwaW5zPgogICAgPHd0eDppZD5yPC93dHg6aWQ+CiAgICA8d3R4OnR5cGU+cjwvd3R4OnR5cGU+CiAgICA8d3R4Om5hbWU+dGVzdHJlc2lzdG9yPC93dHg6bmFtZT4KICAgIDx3dHg6Y2F0ZWdvcnk+cmVzaXN0b3JzPC93dHg6Y2F0ZWdvcnk+CiAgICA8d3R4OnZhbHVlLz4KICAgIDx3dHg6bGFiZWwvPgogICAgPHd0eDpzcGljZS8+CiAgICA8d3R4OmZsaXAvPgogICAgPHd0eDptb2RlbC8+Cjwvd3R4OnBhcnQ+CjwvbWV0YWRhdGE+CgogICAgPHBhdGggZD0iTSA1LjE0MDAyODksMTAuOTczNDQxIDcuNTAwOTk5Nyw1LjA0MzY1NzggMTAuNTMwMzYyLDE0LjkwODMyMyAxNC4yNDg0MzUsNC4zMjgyNzI0IDE4LjMyNDQ1NywxNC43NzQ4OCAyMS43NjE4MjYsNC40NjE3MTYzIDI1Ljg0OTgyOCwxNC41ODkxMzQgMjkuNTA0Nzg2LDQuNTIyMjUyOCAzMy4xMjg5MzgsMTQuODE4MTM1IDM1LjMzODY0LDEwLjExNTYwMiIgaWQ9InBhdGgzNDQ0IiBmaWxsPSJub25lIi8+CiAgICA8cGF0aCBkPSJtIDAsMTAgNS40MjQxNDcsMCIgaWQ9InBhdGgyMTU5Ii8+CiAgICA8cGF0aCBkPSJtIDQwLDEwIC01LjQ1OTEwNiwwIiBpZD0icGF0aDIxNjEiLz4KICAgIDxyZWN0IHdpZHRoPSI0MCIgaGVpZ2h0PSIyMCIgeD0iMCIgeT0iMCIgaWQ9InJlY3QyMTYyIiB2aXNpYmlsaXR5PSJoaWRkZW4iLz4KCiAgPC9nPjxnIHN0cm9rZT0iYmxhY2siIHN0cm9rZS13aWR0aD0iMnB4IiBpZD0idiIgY2xhc3M9ImJhdHRlcnkiIHRyYW5zZm9ybT0ibWF0cml4KC0xLDEuMjI0NjQ2ODUyNTg1MTY3OWUtMTYsLTEuMjI0NjQ2ODUyNTg1MTY3OWUtMTYsLTEsNjAsMzApIj4KPG1ldGFkYXRhIGNsYXNzPSJwYXJ0Ij4KPHd0eDpwYXJ0IHhtbG5zOnd0eD0iaHR0cDovL2NvZGUuZ29vZ2xlLmNvbS9wL3dlYnRyb25pY3MiPgogICAgPHd0eDpwaW5zPgogICAgPHd0eDphbmFsb2c+CiAgICAgICAgPHd0eDpub2RlIGluZGV4PSIxIiB4PSIwIiB5PSIxMCIvPgogICAgICAgIDx3dHg6bm9kZSBpbmRleD0iMiIgeD0iNTAiIHk9IjEwIi8+CiAgICA8L3d0eDphbmFsb2c+CiAgICA8L3d0eDpwaW5zPgogICAgPHd0eDppZD52PC93dHg6aWQ+CiAgICA8d3R4OnR5cGU+djwvd3R4OnR5cGU+CiAgICA8d3R4Om5hbWU+YmF0dGVyeTwvd3R4Om5hbWU+CiAgICA8d3R4OmNhdGVnb3J5PnBvd2VyPC93dHg6Y2F0ZWdvcnk+CiAgICA8d3R4OnZhbHVlLz4KICAgIDx3dHg6bGFiZWwvPgogICAgPHd0eDpzcGljZS8+CiAgICA8d3R4OmZsaXAvPgogICAgPHd0eDptb2RlbC8+Cjwvd3R4OnBhcnQ+CjwvbWV0YWRhdGE+CiAgICAgIDxwYXRoIGQ9Ik0gMCwxMCBMIDE3LDEwIiBpZD0icGF0aDUwMDkiLz4KICAgICAgPHBhdGggZD0iTSAzMiwxMCBMIDUwLDEwIiBpZD0icGF0aDUwMTkiLz4KICAgICAgPHBhdGggZD0iTSAxNy44MzY2MDksMC42ODMxNDMzMyBMIDE3LjcxODY3MywxOS4xOTkxMTMiIGlkPSJwYXRoNTAxMSIvPgogICAgICA8cGF0aCBkPSJNIDIyLjQzNjExOSwzLjc0OTQ4MjMgTCAyMi40MzYxMTksMTUuMDcxMzQ5IiBpZD0icGF0aDUwMTMiLz4KICAgICAgPHBhdGggZD0iTSAyNy41MDczNzEsMC42ODMxNDMzMyBMIDI3LjUwNzM3MSwxOS41NTI5MjIiIGlkPSJwYXRoNTAxNSIvPgogICAgICA8cGF0aCBkPSJNIDMxLjc1MzA3MiwzLjg2NzQxODMgTCAzMS42MzUxMzYsMTUuNDI1MTU3IiBpZD0icGF0aDUwMTciLz4KICAgICAgPHRleHQgeD0iOC4yMTY3OTY5IiB5PSI4LjUyNjE1MjYiIGlkPSJ0ZXh0NTAyNSIgZm9udC1zaXplPSIxMnB4IiBzdHJva2Utd2lkdGg9IjBweCI+KzwvdGV4dD4KICAgICAgPHRleHQgeD0iMzQuMTExNzk0IiB5PSIwLjUyMzQzNzUiIGlkPSJ0ZXh0NTAyOSIgZm9udC1zaXplPSIxMnB4IiBzdHJva2Utd2lkdGg9IjBweCI+XzwvdGV4dD4KICA8L2c+PGcgc3Ryb2tlPSJibGFjayIgc3Ryb2tlLXdpZHRoPSIycHgiIHRyYW5zZm9ybT0ibWF0cml4KDEsMCwwLDEsNjAsMTApIj4KPG1ldGFkYXRhIGNsYXNzPSJwYXJ0Ij4KPHd0eDpwYXJ0IHhtbG5zOnd0eD0iaHR0cDovL2NvZGUuZ29vZ2xlLmNvbS9wL3dlYnRyb25pY3MiPgogICAgPHd0eDpwaW5zPgoJCTx3dHg6YW5hbG9nPgoJCQk8d3R4Om5vZGUgaW5kZXg9IjEiIHg9IjAiIHk9IjEwIi8+CgkJCTx3dHg6bm9kZSBpbmRleD0iMiIgeD0iNDAiIHk9IjEwIi8+CgkJPC93dHg6YW5hbG9nPgogICAgPC93dHg6cGlucz4KICAgIDx3dHg6aWQ+cjwvd3R4OmlkPgogICAgPHd0eDp0eXBlPnI8L3d0eDp0eXBlPgogICAgPHd0eDpuYW1lPnRlc3RyZXNpc3Rvcjwvd3R4Om5hbWU+CiAgICA8d3R4OmNhdGVnb3J5PnJlc2lzdG9yczwvd3R4OmNhdGVnb3J5PgogICAgPHd0eDp2YWx1ZS8+CiAgICA8d3R4OmxhYmVsLz4KICAgIDx3dHg6c3BpY2UvPgogICAgPHd0eDpmbGlwLz4KICAgIDx3dHg6bW9kZWwvPgo8L3d0eDpwYXJ0Pgo8L21ldGFkYXRhPgoKICAgIDxwYXRoIGQ9Ik0gNS4xNDAwMjg5LDEwLjk3MzQ0MSA3LjUwMDk5OTcsNS4wNDM2NTc4IDEwLjUzMDM2MiwxNC45MDgzMjMgMTQuMjQ4NDM1LDQuMzI4MjcyNCAxOC4zMjQ0NTcsMTQuNzc0ODggMjEuNzYxODI2LDQuNDYxNzE2MyAyNS44NDk4MjgsMTQuNTg5MTM0IDI5LjUwNDc4Niw0LjUyMjI1MjggMzMuMTI4OTM4LDE0LjgxODEzNSAzNS4zMzg2NCwxMC4xMTU2MDIiIGlkPSJwYXRoMzQ0NCIgZmlsbD0ibm9uZSIvPgogICAgPHBhdGggZD0ibSAwLDEwIDUuNDI0MTQ3LDAiIGlkPSJwYXRoMjE1OSIvPgogICAgPHBhdGggZD0ibSA0MCwxMCAtNS40NTkxMDYsMCIgaWQ9InBhdGgyMTYxIi8+CiAgICA8cmVjdCB3aWR0aD0iNDAiIGhlaWdodD0iMjAiIHg9IjAiIHk9IjAiIGlkPSJyZWN0MjE2MiIgdmlzaWJpbGl0eT0iaGlkZGVuIi8+CgogIDwvZz48L3N2Zz4=)

Since we have $P = VI = \frac{V^2}{R} = I^2R$, the voltage across the load is $V_L = V_{th}\frac{R_L}{R_L + R_{th}}$, and the power is $P_L = \frac{V_L^2}{R_L} = \frac{\left(V_{th}\frac{R_L}{R_L + R_{th}}\right)^2}{R_L} = \frac{V_{th}^2}{R_L}\left(\frac{R_L}{R_L + R_{th}}\right)^2$.

To maximise power, we find where $\frac{\dee P}{\dee R_L} = 0 = -\frac{V_{th}^2(R_L - R_{th})}{R_L + R_{th}^2}$. So $0 = -V_{th}^2(R_L - R_{th})$ and $R_L = R_{th}$.

In other words, the power transferred to a load by a circuit is maximised when its resistance is equal to the Thevenin resistance of the circuit - $R_L = R_{th}$. This is also called **Jacobi's Law**.

So when power is maximized, $P_L = \frac{V_{th}^2}{R_L}\left(\frac{R_L}{R_L + R_{th}}\right)^2 = \frac{V_{th}^2}{R_{th}}\left(\frac{R_{th}}{R_{th} + R_{th}}\right)^2 = \frac{V_{th}^2}{4R_{th}}$.

In practice, the circuit is often a power supply and the load is the thing we want to drive. In order to maximise the load power, we want to have the load resistance be the same as the internal resistance of the power supply.

This is because when the load resistance is higher than the internal resistance, the total resistance of the circuit is higher than it needs to be, so the power is not at a maximum; likewise, when the load resistance is lower than the internal resistance, more power is adsorbed by the internal resistance than it needs to be, so the power is not at a maximum.

This is the best load resistance given a source resistance, but the best possible source resistance is still always 0.

Operational Amplifiers
----------------------

The operational amplifier (op-amp) is an linear active component (needs its own power supply):

![Op-amp circuit symbol](data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0nMS4wJyA/Pgo8IS0tQ3JlYXRlZCBieSB3ZWJ0cm9uaWNzIDAuMS0tPgo8c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgd2lkdGg9IjE0MCIgaGVpZ2h0PSIxMjYiPjxyZWN0IHg9IjAiIHk9IjAiIGZpbGw9IndoaXRlIiB3aWR0aD0iMTQwcHgiIGhlaWdodD0iMTI2cHgiLz48dGV4dCB4PSI1NiIgeT0iMTEzIiBmb250LXNpemU9IjEyIiBmaWxsPSJibGFjayIgc3Ryb2tlLXdpZHRoPSIwcHgiPlZfe2NjfS08L3RleHQ+PHRleHQgeD0iNTIiIHk9IjE3IiBmb250LXNpemU9IjEyIiBmaWxsPSJibGFjayIgc3Ryb2tlLXdpZHRoPSIwcHgiPlZfe2NjfSs8L3RleHQ+PHRleHQgeD0iMTAiIHk9IjgwIiBmb250LXNpemU9IjEyIiBmaWxsPSJibGFjayIgc3Ryb2tlLXdpZHRoPSIwcHgiPlZfcDwvdGV4dD48dGV4dCB4PSIxMCIgeT0iNDQiIGZvbnQtc2l6ZT0iMTIiIGZpbGw9ImJsYWNrIiBzdHJva2Utd2lkdGg9IjBweCI+Vl9uPC90ZXh0Pjx0ZXh0IHg9IjEwNyIgeT0iNjUiIGZvbnQtc2l6ZT0iMTIiIGZpbGw9ImJsYWNrIiBzdHJva2Utd2lkdGg9IjBweCI+Vl9PPC90ZXh0PjxnIGlkPSJ1IiBzdHJva2U9IiMwMDAiIHN0cm9rZS13aWR0aD0iMnB4IiBjbGFzcz0ib3AtYW1wIiB0cmFuc2Zvcm09Im1hdHJpeCgxLDEuMjI0NjQ2ODUyNTg1MTY3OWUtMTYsMS4yMjQ2NDY4NTI1ODUxNjc5ZS0xNiwtMSw0MCw5MCkiPgo8bWV0YWRhdGEgY2xhc3M9InBhcnQiPgo8d3R4OnBhcnQgeG1sbnM6d3R4PSJodHRwOi8vY29kZS5nb29nbGUuY29tL3Avd2VidHJvbmljcyI+CiAgICA8d3R4OnBpbnM+CgkJPHd0eDphbmFsb2c+CjwhLS0KYWxsIG9wYW1wIG1vZGVscyBtdXN0IGJlIGluIHRoaXMgb3JkZXIKKiBDT05ORUNUSU9OUzogICBOT04tSU5WRVJUSU5HIElOUFVUCiogICAgICAgICAgICAgICAgfCBJTlZFUlRJTkcgSU5QVVQKKiAgICAgICAgICAgICAgICB8IHwgUE9TSVRJVkUgUE9XRVIgU1VQUExZCiogICAgICAgICAgICAgICAgfCB8IHwgTkVHQVRJVkUgUE9XRVIgU1VQUExZCiogICAgICAgICAgICAgICAgfCB8IHwgfCBPUEVOIENPTExFQ1RPUiBPVVRQVVQKKiAgICAgICAgICAgICAgICB8IHwgfCB8IHwKLlNVQkNLVCBMTTMzOSAgICAxIDIgMyA0IDUKLS0+CgkJCTx3dHg6bm9kZSBpbmRleD0iMSIgeD0iMCIgeT0iMTAiLz4KCQkJPHd0eDpub2RlIGluZGV4PSIyIiB4PSIwIiB5PSI1MCIvPgoJCQk8d3R4Om5vZGUgaW5kZXg9IjMiIHg9IjMwIiB5PSIwIi8+CgkJCTx3dHg6bm9kZSBpbmRleD0iNCIgeD0iMzAiIHk9IjYwIi8+CgkJCTx3dHg6bm9kZSBpbmRleD0iNSIgeD0iNjAiIHk9IjMwIi8+CgkJPC93dHg6YW5hbG9nPgogICAgPC93dHg6cGlucz4KICAgIDx3dHg6aWQ+dTwvd3R4OmlkPgogICAgPHd0eDp0eXBlPnU8L3d0eDp0eXBlPgogICAgPHd0eDpuYW1lPm9wLWFtcDwvd3R4Om5hbWU+CiAgICA8d3R4OmNhdGVnb3J5PmFtcGxpZmllcjwvd3R4OmNhdGVnb3J5PgogICAgPHd0eDp2YWx1ZS8+CiAgICA8d3R4OnNwaWNlLz4KICAgIDx3dHg6bGFiZWwvPgogICAgPHd0eDpmbGlwPnRydWU8L3d0eDpmbGlwPgogICAgPHd0eDptb2RlbC8+Cjwvd3R4OnBhcnQ+CjwvbWV0YWRhdGE+CiAgPHBhdGggaWQ9InBhdGgxODg3IiBmaWxsPSJub25lIiBkPSJNNTAsMzAsMTAsNjAsMTAsMCw1MCwzMHoiLz4KICA8cGF0aCBpZD0icGF0aDE4ODkiIGQ9Ik0wLDEwLDEwLDEwIi8+CiAgPHBhdGggaWQ9InBhdGgxODkzIiBkPSJNMCw1MCwxMCw1MCIvPgogIDx0ZXh0IGlkPSJ0ZXh0MTg5NSIgeT0iMjAiIHg9IjE1IiBmb250LXNpemU9IjEycHgiIHN0cm9rZS13aWR0aD0iMHB4Ij4rPC90ZXh0PgogIDxwYXRoIGlkPSJwYXRoMjE2NyIgZD0iTTUwLDMwLDYwLDMwIi8+CiAgPHRleHQgaWQ9InRleHQxOTE1IiB5PSI0NSIgeD0iMTUiIGZvbnQtc2l6ZT0iMTJweCIgc3Ryb2tlLXdpZHRoPSIwcHgiPl88L3RleHQ+CiAgPHBhdGggaWQ9InBhdGgyIiBkPSJNMzAsMCwzMCwxNSIvPgogIDxwYXRoIGlkPSJwYXRoMiIgZD0iTTMwLDQ1LDMwLDYwIi8+CiA8L2c+PC9zdmc+)

The op-amp appears as a rightward-facing triangle and has five terminals:

* On the top, the $V_{cc}+$ accepts the positive supply voltage.
    * This is usually about 10 V to 15 V.
* On the bottom, the $V_{cc}-$ accepts the negative supply voltage.
    * This is usually about -10 V to 15 V, or 0 V.
* On the upper left, the $V_n$ (negative terminal) accepts the inverting input.
    * This is often used as the reference voltage when amplifying.
* On the lower left, the $V_p$ (positive terminal) accepts the non-inverting input.
    * This is often used as the reference voltage when inverting.
* On the right, the $V_O$ (output terminal) sets the output voltage.
    * We cannot directly use nodal analysis at the output terminal because there is some unknown current coming out of it.

All voltages are relative to the ground.

Sometimes, the $V_p$ and $V_n$ terminals are swapped. We should always look for the $+$ and $-$ labels to tell which is which.

This is called an operational amplifier because it performs a mathematical operation on the voltages. In this course we will only deal with linear op-amps.

A linear op-amp has the equation $V_O = A(V_p - V_n)$, and usually has a very large $A$ (in the order of $10^5$) and very small $V_p - V_n$ (in the order of microvolts).

Also, $V_O$ is clamped such that $V_{cc}- \le V_O \le V_{cc}+$. The value of $A$ is called the **gain** or **amplification factor** of the op-amp.

In an amplifier circuit (inverting or non-inverting), the gain is instead the ratio of the output voltage to the input voltage - $A = \frac{V_O}{V_S}$.

An ideal op-amp has a $V_O$ to $V_p - V_n$ graph as a perfect line, suddenly reaching a plateau on the left and right at $V_{cc}-$ and $V_{cc}+$, respectively.

The ideal op-amp also draws no current, because it should take all of its current from the power supply - there is no current going into $V_p$ or $V_n$.

### Solving

When performing nodal analysis on circuits with op-amps, we can solve them as follows:

1. Set $V_p = V_n$. This is possible because the feedback resistor will provide negative feedback to the input until $V_p = V_n$.
2. Set $i_p = i_n = 0$, because the ideal op-amp draws no current.
3. Write the KCL or KVL equations for the $V_p, V_n$ terminals (it is not possible to write them for the output or supply terminals yet).
4. Continue with nodal analysis with these equations.

We should always add a feedback resistance ($R_2$ in the examples) connected between $V_n$ and $V_O$. This allows us to write the $V_p = V_n$ equation that lets us solve these circuits.

### Usage

The op-amp can be used as an inverter, an amplifier, or a summing device.

An inverter circuit appears something like the following:

![Op-amp inverter circuit](data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0nMS4wJyA/Pgo8IS0tQ3JlYXRlZCBieSB3ZWJ0cm9uaWNzIDAuMS0tPgo8c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgd2lkdGg9IjIzNiIgaGVpZ2h0PSIxNjcuNSI+PHJlY3QgeD0iMCIgeT0iMCIgZmlsbD0id2hpdGUiIHdpZHRoPSIyMzZweCIgaGVpZ2h0PSIxNjcuNXB4Ii8+PHRleHQgeD0iODciIHk9IjEwMSIgZm9udC1zaXplPSIxMiIgZmlsbD0iYmxhY2siIHN0cm9rZS13aWR0aD0iMHB4Ij5ub2RlIEE8L3RleHQ+PGxpbmUgeDE9IjEyMCIgeTE9IjkwIiB4Mj0iOTAiIHkyPSI5MCIgc3Ryb2tlPSJibGFjayIgc3Ryb2tlLXdpZHRoPSIyIi8+PGxpbmUgeDE9IjE1MCIgeTE9IjQwIiB4Mj0iMTgwIiB5Mj0iNDAiIHN0cm9rZT0iYmxhY2siIHN0cm9rZS13aWR0aD0iMiIvPjxsaW5lIHgxPSIxMjAiIHkxPSIxMzAiIHgyPSIxMjAiIHkyPSIxNDAiIHN0cm9rZT0iYmxhY2siIHN0cm9rZS13aWR0aD0iMiIvPjxnIGNvbm5lY3RzPSIxMCwwIiBzdHJva2U9ImJsYWNrIiBzdHJva2Utd2lkdGg9IjJweCIgaWQ9IkduZCIgY2xhc3M9Imdyb3VuZCIgdHJhbnNmb3JtPSJtYXRyaXgoMSwwLDAsMSwxMTAsMTQwKSI+CjxtZXRhZGF0YT4KPHd0eDpwYXJ0IHhtbG5zOnd0eD0iaHR0cDovL2NvZGUuZ29vZ2xlLmNvbS9wL3dlYnRyb25pY3MiPgogICAgPHd0eDpwaW5zPgogICAgICAgIDx3dHg6YW5hbG9nPgogICAgICAgICAgICA8d3R4Om5vZGUgaW5kZXg9IjEiIHg9IjEwIiB5PSIwIi8+CiAgICAgICAgPC93dHg6YW5hbG9nPgogICAgPC93dHg6cGlucz4KICAgIDx3dHg6aWQ+Z25kPC93dHg6aWQ+CiAgICA8d3R4OnR5cGU+Z25kPC93dHg6dHlwZT4KICAgIDx3dHg6bmFtZT5ncm91bmQ8L3d0eDpuYW1lPgogICAgPHd0eDpjYXRlZ29yeT5wb3dlcjwvd3R4OmNhdGVnb3J5PgogICAgPHd0eDpmbGlwLz4KICAgIDx3dHg6dmFsdWUvPgogICAgPHd0eDpsYWJlbC8+CiAgICA8d3R4OnNwaWNlLz4KICAgIDx3dHg6bW9kZWwvPgo8L3d0eDpwYXJ0Pgo8L21ldGFkYXRhPgoKICAgIDxwYXRoIGQ9Ik0gMTAsMCBMIDEwLDExIi8+CiAgICA8cGF0aCBkPSJNIDAuNTAwMDAwMDYsMTEuODM0MTUzIEwgMTkuNjcxMjc1LDExLjgzNDE1MyIvPgogICAgPHBhdGggZD0iTSAyLjY0ODA4MjMsMTQuNSBMIDE3LjczMjg4MSwxNC41Ii8+CiAgICA8cGF0aCBkPSJNIDUuODAyODczLDE3LjUgTCAxNC42NDgwODIsMTcuNSIvPgogIDwvZz48ZyBjb25uZWN0cz0iMTAsMCIgc3Ryb2tlPSJibGFjayIgc3Ryb2tlLXdpZHRoPSIycHgiIGlkPSJHbmQiIGNsYXNzPSJncm91bmQiIHRyYW5zZm9ybT0ibWF0cml4KDEsMCwwLDEsMTQwLDE0MCkiPgo8bWV0YWRhdGE+Cjx3dHg6cGFydCB4bWxuczp3dHg9Imh0dHA6Ly9jb2RlLmdvb2dsZS5jb20vcC93ZWJ0cm9uaWNzIj4KICAgIDx3dHg6cGlucz4KICAgICAgICA8d3R4OmFuYWxvZz4KICAgICAgICAgICAgPHd0eDpub2RlIGluZGV4PSIxIiB4PSIxMCIgeT0iMCIvPgogICAgICAgIDwvd3R4OmFuYWxvZz4KICAgIDwvd3R4OnBpbnM+CiAgICA8d3R4OmlkPmduZDwvd3R4OmlkPgogICAgPHd0eDp0eXBlPmduZDwvd3R4OnR5cGU+CiAgICA8d3R4Om5hbWU+Z3JvdW5kPC93dHg6bmFtZT4KICAgIDx3dHg6Y2F0ZWdvcnk+cG93ZXI8L3d0eDpjYXRlZ29yeT4KICAgIDx3dHg6ZmxpcC8+CiAgICA8d3R4OnZhbHVlLz4KICAgIDx3dHg6bGFiZWwvPgogICAgPHd0eDpzcGljZS8+CiAgICA8d3R4Om1vZGVsLz4KPC93dHg6cGFydD4KPC9tZXRhZGF0YT4KCiAgICA8cGF0aCBkPSJNIDEwLDAgTCAxMCwxMSIvPgogICAgPHBhdGggZD0iTSAwLjUwMDAwMDA2LDExLjgzNDE1MyBMIDE5LjY3MTI3NSwxMS44MzQxNTMiLz4KICAgIDxwYXRoIGQ9Ik0gMi42NDgwODIzLDE0LjUgTCAxNy43MzI4ODEsMTQuNSIvPgogICAgPHBhdGggZD0iTSA1LjgwMjg3MywxNy41IEwgMTQuNjQ4MDgyLDE3LjUiLz4KICA8L2c+PGcgY29ubmVjdHM9IjEwLDIwIiBzdHJva2U9ImJsYWNrIiBzdHJva2Utd2lkdGg9IjJweCIgaWQ9IndpcmUiIGNsYXNzPSJuYW1ld2lyZSIgdHJhbnNmb3JtPSJtYXRyaXgoMSwwLDAsMSwxNDAsNjApIj4KPG1ldGFkYXRhIGNsYXNzPSJwYXJ0Ij4KPHd0eDpwYXJ0IHhtbG5zOnd0eD0iaHR0cDovL2NvZGUuZ29vZ2xlLmNvbS9wL3dlYnRyb25pY3MiPgogICAgPHd0eDpwaW5zPgogICAgICAgIDx3dHg6YW5hbG9nPgogICAgICAgICAgICA8d3R4Om5vZGUgaW5kZXg9IjEiIHg9IjEwIiB5PSIyMCIvPgogICAgICAgIDwvd3R4OmFuYWxvZz4KICAgIDwvd3R4OnBpbnM+CiAgICA8d3R4OmlkPndpcmU8L3d0eDppZD4KICAgIDx3dHg6dHlwZT53aXJlPC93dHg6dHlwZT4KICAgIDx3dHg6bmFtZT5uYW1ld2lyZTwvd3R4Om5hbWU+CiAgICA8d3R4OmNhdGVnb3J5PnBvd2VyPC93dHg6Y2F0ZWdvcnk+CiAgICA8d3R4OnZhbHVlLz4KICAgIDx3dHg6bGFiZWwvPgogICAgPHd0eDpzcGljZS8+CiAgICA8d3R4OmZsaXAvPgogICAgPHd0eDptb2RlbC8+Cjwvd3R4OnBhcnQ+CjwvbWV0YWRhdGE+CiAgICA8cmVjdCB3aWR0aD0iMjAiIGhlaWdodD0iMjAiIHg9IjAiIHk9IjAiIHZpc2liaWxpdHk9ImhpZGRlbiIvPgogICAgPHBhdGggZD0iTSA5Ljg0NTM1NTcsMC43NTE1NTEzMiBMIDkuNzg4OTg2MSwyMC4wMjYwOSIvPgogICAgPHBhdGggZD0iTSA2Ljg5ODQwOTUsNi4wNDAwNTY3IEwgOS43NzY2NzksMC42NTgzNjc0MyBMIDEzLjExNjE1NSw1LjkyMTQ2NzUiLz4KCiAgPC9nPjxnIGlkPSJ1IiBzdHJva2U9IiMwMDAiIHN0cm9rZS13aWR0aD0iMnB4IiBjbGFzcz0ib3AtYW1wIiB0cmFuc2Zvcm09Im1hdHJpeCgxLDAsMCwxLDEyMCw4MCkiPgo8bWV0YWRhdGEgY2xhc3M9InBhcnQiPgo8d3R4OnBhcnQgeG1sbnM6d3R4PSJodHRwOi8vY29kZS5nb29nbGUuY29tL3Avd2VidHJvbmljcyI+CiAgICA8d3R4OnBpbnM+CgkJPHd0eDphbmFsb2c+CjwhLS0KYWxsIG9wYW1wIG1vZGVscyBtdXN0IGJlIGluIHRoaXMgb3JkZXIKKiBDT05ORUNUSU9OUzogICBOT04tSU5WRVJUSU5HIElOUFVUCiogICAgICAgICAgICAgICAgfCBJTlZFUlRJTkcgSU5QVVQKKiAgICAgICAgICAgICAgICB8IHwgUE9TSVRJVkUgUE9XRVIgU1VQUExZCiogICAgICAgICAgICAgICAgfCB8IHwgTkVHQVRJVkUgUE9XRVIgU1VQUExZCiogICAgICAgICAgICAgICAgfCB8IHwgfCBPUEVOIENPTExFQ1RPUiBPVVRQVVQKKiAgICAgICAgICAgICAgICB8IHwgfCB8IHwKLlNVQkNLVCBMTTMzOSAgICAxIDIgMyA0IDUKLS0+CgkJCTx3dHg6bm9kZSBpbmRleD0iMSIgeD0iMCIgeT0iMTAiLz4KCQkJPHd0eDpub2RlIGluZGV4PSIyIiB4PSIwIiB5PSI1MCIvPgoJCQk8d3R4Om5vZGUgaW5kZXg9IjMiIHg9IjMwIiB5PSIwIi8+CgkJCTx3dHg6bm9kZSBpbmRleD0iNCIgeD0iMzAiIHk9IjYwIi8+CgkJCTx3dHg6bm9kZSBpbmRleD0iNSIgeD0iNjAiIHk9IjMwIi8+CgkJPC93dHg6YW5hbG9nPgogICAgPC93dHg6cGlucz4KICAgIDx3dHg6aWQ+dTwvd3R4OmlkPgogICAgPHd0eDp0eXBlPnU8L3d0eDp0eXBlPgogICAgPHd0eDpuYW1lPm9wLWFtcDwvd3R4Om5hbWU+CiAgICA8d3R4OmNhdGVnb3J5PmFtcGxpZmllcjwvd3R4OmNhdGVnb3J5PgogICAgPHd0eDp2YWx1ZS8+CiAgICA8d3R4OnNwaWNlLz4KICAgIDx3dHg6bGFiZWwvPgogICAgPHd0eDpmbGlwPnRydWU8L3d0eDpmbGlwPgogICAgPHd0eDptb2RlbC8+Cjwvd3R4OnBhcnQ+CjwvbWV0YWRhdGE+CiAgPHBhdGggZmlsbD0ibm9uZSIgZD0iTTUwLDMwLDEwLDYwLDEwLDAsNTAsMzB6Ii8+CiAgPHBhdGggZD0iTTAsMTAsMTAsMTAiLz4KICA8cGF0aCBkPSJNMCw1MCwxMCw1MCIvPgogIDx0ZXh0IHk9IjIwIiB4PSIxNSIgZm9udC1zaXplPSIxMnB4IiBzdHJva2Utd2lkdGg9IjBweCI+KzwvdGV4dD4KICA8cGF0aCBkPSJNNTAsMzAsNjAsMzAiLz4KICA8dGV4dCB5PSI0NSIgeD0iMTUiIGZvbnQtc2l6ZT0iMTJweCIgc3Ryb2tlLXdpZHRoPSIwcHgiPl88L3RleHQ+CiAgPHBhdGggZD0iTTMwLDAsMzAsMTUiLz4KICA8cGF0aCBkPSJNMzAsNDUsMzAsNjAiLz4KIDwvZz48bGluZSB4MT0iMTgwIiB5MT0iNDAiIHgyPSIxODAiIHkyPSIxMTAiIHN0cm9rZT0iYmxhY2siIHN0cm9rZS13aWR0aD0iMiIvPjxnIHN0cm9rZT0iYmxhY2siIHN0cm9rZS13aWR0aD0iMnB4IiB0cmFuc2Zvcm09Im1hdHJpeCgxLDAsMCwxLDUwLDgwKSI+CjxtZXRhZGF0YSBjbGFzcz0icGFydCI+Cjx3dHg6cGFydCB4bWxuczp3dHg9Imh0dHA6Ly9jb2RlLmdvb2dsZS5jb20vcC93ZWJ0cm9uaWNzIj4KICAgIDx3dHg6cGlucz4KCQk8d3R4OmFuYWxvZz4KCQkJPHd0eDpub2RlIGluZGV4PSIxIiB4PSIwIiB5PSIxMCIvPgoJCQk8d3R4Om5vZGUgaW5kZXg9IjIiIHg9IjQwIiB5PSIxMCIvPgoJCTwvd3R4OmFuYWxvZz4KICAgIDwvd3R4OnBpbnM+CiAgICA8d3R4OmlkPnI8L3d0eDppZD4KICAgIDx3dHg6dHlwZT5yPC93dHg6dHlwZT4KICAgIDx3dHg6bmFtZT50ZXN0cmVzaXN0b3I8L3d0eDpuYW1lPgogICAgPHd0eDpjYXRlZ29yeT5yZXNpc3RvcnM8L3d0eDpjYXRlZ29yeT4KICAgIDx3dHg6dmFsdWUvPgogICAgPHd0eDpsYWJlbC8+CiAgICA8d3R4OnNwaWNlLz4KICAgIDx3dHg6ZmxpcC8+CiAgICA8d3R4Om1vZGVsLz4KPC93dHg6cGFydD4KPC9tZXRhZGF0YT4KCiAgICA8cGF0aCBkPSJNIDUuMTQwMDI4OSwxMC45NzM0NDEgNy41MDA5OTk3LDUuMDQzNjU3OCAxMC41MzAzNjIsMTQuOTA4MzIzIDE0LjI0ODQzNSw0LjMyODI3MjQgMTguMzI0NDU3LDE0Ljc3NDg4IDIxLjc2MTgyNiw0LjQ2MTcxNjMgMjUuODQ5ODI4LDE0LjU4OTEzNCAyOS41MDQ3ODYsNC41MjIyNTI4IDMzLjEyODkzOCwxNC44MTgxMzUgMzUuMzM4NjQsMTAuMTE1NjAyIiBmaWxsPSJub25lIi8+CiAgICA8cGF0aCBkPSJtIDAsMTAgNS40MjQxNDcsMCIvPgogICAgPHBhdGggZD0ibSA0MCwxMCAtNS40NTkxMDYsMCIvPgogICAgPHJlY3Qgd2lkdGg9IjQwIiBoZWlnaHQ9IjIwIiB4PSIwIiB5PSIwIiB2aXNpYmlsaXR5PSJoaWRkZW4iLz4KCiAgPC9nPjxnIHN0cm9rZT0iYmxhY2siIHN0cm9rZS13aWR0aD0iMnB4IiB0cmFuc2Zvcm09Im1hdHJpeCgxLDAsMCwxLDEwMCwzMCkiPgo8bWV0YWRhdGEgY2xhc3M9InBhcnQiPgo8d3R4OnBhcnQgeG1sbnM6d3R4PSJodHRwOi8vY29kZS5nb29nbGUuY29tL3Avd2VidHJvbmljcyI+CiAgICA8d3R4OnBpbnM+CgkJPHd0eDphbmFsb2c+CgkJCTx3dHg6bm9kZSBpbmRleD0iMSIgeD0iMCIgeT0iMTAiLz4KCQkJPHd0eDpub2RlIGluZGV4PSIyIiB4PSI0MCIgeT0iMTAiLz4KCQk8L3d0eDphbmFsb2c+CiAgICA8L3d0eDpwaW5zPgogICAgPHd0eDppZD5yPC93dHg6aWQ+CiAgICA8d3R4OnR5cGU+cjwvd3R4OnR5cGU+CiAgICA8d3R4Om5hbWU+dGVzdHJlc2lzdG9yPC93dHg6bmFtZT4KICAgIDx3dHg6Y2F0ZWdvcnk+cmVzaXN0b3JzPC93dHg6Y2F0ZWdvcnk+CiAgICA8d3R4OnZhbHVlLz4KICAgIDx3dHg6bGFiZWwvPgogICAgPHd0eDpzcGljZS8+CiAgICA8d3R4OmZsaXAvPgogICAgPHd0eDptb2RlbC8+Cjwvd3R4OnBhcnQ+CjwvbWV0YWRhdGE+CgogICAgPHBhdGggZD0iTSA1LjE0MDAyODksMTAuOTczNDQxIDcuNTAwOTk5Nyw1LjA0MzY1NzggMTAuNTMwMzYyLDE0LjkwODMyMyAxNC4yNDg0MzUsNC4zMjgyNzI0IDE4LjMyNDQ1NywxNC43NzQ4OCAyMS43NjE4MjYsNC40NjE3MTYzIDI1Ljg0OTgyOCwxNC41ODkxMzQgMjkuNTA0Nzg2LDQuNTIyMjUyOCAzMy4xMjg5MzgsMTQuODE4MTM1IDM1LjMzODY0LDEwLjExNTYwMiIgZmlsbD0ibm9uZSIvPgogICAgPHBhdGggZD0ibSAwLDEwIDUuNDI0MTQ3LDAiLz4KICAgIDxwYXRoIGQ9Im0gNDAsMTAgLTUuNDU5MTA2LDAiLz4KICAgIDxyZWN0IHdpZHRoPSI0MCIgaGVpZ2h0PSIyMCIgeD0iMCIgeT0iMCIgdmlzaWJpbGl0eT0iaGlkZGVuIi8+CgogIDwvZz48bGluZSB4MT0iMTQwIiB5MT0iNDAiIHgyPSIxNTAiIHkyPSI0MCIgc3Ryb2tlPSJibGFjayIgc3Ryb2tlLXdpZHRoPSIyIi8+PGxpbmUgeDE9IjkwIiB5MT0iNDAiIHgyPSIxMDAiIHkyPSI0MCIgc3Ryb2tlPSJibGFjayIgc3Ryb2tlLXdpZHRoPSIyIi8+PGxpbmUgeDE9IjkwIiB5MT0iNDAiIHgyPSI5MCIgeTI9IjkwIiBzdHJva2U9ImJsYWNrIiBzdHJva2Utd2lkdGg9IjIiLz48bGluZSB4MT0iNDAiIHkxPSI5MCIgeDI9IjUwIiB5Mj0iOTAiIHN0cm9rZT0iYmxhY2siIHN0cm9rZS13aWR0aD0iMiIvPjx0ZXh0IHg9IjE1IiB5PSI5MiIgZm9udC1zaXplPSIxMiIgZmlsbD0iYmxhY2siIHN0cm9rZS13aWR0aD0iMHB4Ij5WX1M8L3RleHQ+PHRleHQgeD0iNjAiIHk9Ijc2IiBmb250LXNpemU9IjEyIiBmaWxsPSJibGFjayIgc3Ryb2tlLXdpZHRoPSIwcHgiPlJfMTwvdGV4dD48dGV4dCB4PSIxMTIiIHk9IjI4IiBmb250LXNpemU9IjEyIiBmaWxsPSJibGFjayIgc3Ryb2tlLXdpZHRoPSIwcHgiPlJfMjwvdGV4dD48bGluZSB4MT0iMTkwIiB5MT0iMTEwIiB4Mj0iMTgwIiB5Mj0iMTEwIiBzdHJva2U9ImJsYWNrIiBzdHJva2Utd2lkdGg9IjIiLz48dGV4dCB4PSIyMDMiIHk9IjExNCIgZm9udC1zaXplPSIxMiIgZmlsbD0iYmxhY2siIHN0cm9rZS13aWR0aD0iMHB4Ij5WX088L3RleHQ+PC9zdmc+)

Find the gain of the amplifier:

> Clearly, $V_p = V_n$ due to negative feedback, and $i_p = i_n = 0$.  
> So $\frac{V_A - V_S}{R_1} + \frac{V_A - V_O}{R_2} = 0$. Clearly, $V_A = V_n = V_p = 0$.  
> So $\frac{0 - V_S}{R_1} + \frac{0 - V_O}{R_2} = 0$ and $\frac{V_S}{R_1} = -\frac{V_O}{R_2}$.  
> So $V_O = -\frac{R_2}{R_1}V_S$.  
> So the gain is $A = -\frac{R_2}{R_1}$.  
> That means that the only factors affecting the output voltage multiplication factor is the values of the resistors - not the gain of the amplifier itself.
> If there is no feedback resistor, then the output voltage is $V_O = A(V_p - V_n)$. The feedback resistor creates a negative feedback loop and stabilizes the output to a value determined by the resistor values.  

For an inverting amplifier, $V_O = -\frac{R_2}{R_1}V_S$.

For a non-inverting amplifier, $V_O = \left(1 + \frac{R_2}{R_1}\right)V_S$.

# 11/6/14

An op-amp is sometimes drawn without the $V_{cc}+$ and $V_{cc}-$ terminals. In this case, we might pretend it has an unlimited voltage supply connected to the supply terminals.

Op-amps are often used in power supplies, because they can output an exact voltage regardless of the current. For this we can use a **voltage follower** circuit, which outputs a constant voltage without drawing any current from the input:

;wip: diagram

This is basically just a non-inverting amplifier that has a value of 0 for the feedback resistor.

A **buffer** is a circuit that isolates its input from its output. All op-amp circuits are buffers, since they isolate current drawn by the output from the inputs $V_p$ and $V_n$.

# 12/6/14

Note that for op-amp circuits, the power adsorbed is not the same as the power supplied, because the op-amps have hidden power supplies that supply additional power. When analyzing power, we must always consider the op-amp itself as well.

# 24/6/14

Capacitance/Inductance
----------------------

So far, the only passive elements in our circuits is the resistor.

A capacitor is another passive circuit element that stores energy in charged plates. A capacitor is a two-terminal device that is made of two conductive plates stacked close together, separated by a layer of insulating material, called the dialectric.

When charge enters one end of a capacitor, it stops at the dialectric. However, the charges have an electric field, which extends over to the other plate. This repels charges in the other plate, pushing charge out of the other end of the capacitor.

Putting charge into a capacitor is called **charging** a capacitor. After one end of a capacitor is fully charged, the capacitor is **charged**, and nothing happens if we try to put in more charge.

Capacitors have capacitance ($C$), which is the ability to store electric charge. Capacitance is measured in Farads (F), which is a huge unit, so we often use micro or nano or picoFarads.

A 1 F capacitor is one with capacitance such that when charged with 1 Coulomb, has 1 V across the terminals. Capacitance is determined by $C = \frac{\epsilon d}{A}$, where $\epsilon$ is the permeability of the dialectric (a physical constant), $d$ is the distance between the plates (meters) and $A$ is the surface area of both plates.

Capacitance is governed by $q(t) = C V(t)$. Taking the derivative, we get $I(t) = C \frac{\dee V(t)}{\dee t}$, where $I(t) is the current flowing through the capacitor and $V(t)$ is the voltage across the capacitor terminals. So if the voltage stops changing, there is no current and the capacitor acts like an open circuit.

Since $C = \frac{I(t)}{\frac{\dee V(t)}{\dee t}}$, the voltage can never change instantaneously. The capacitor will take a certain amount of time to charge up, even if the voltage source tries to change instantaneously.

This can also be written as $V(t) = \frac 1 C \int I_C(t) \dee t + V_C(0)$. The $V_C(0)$ term is the **initial condition** for the voltage - the voltage we started off with.

So if a voltage source is connected to a $20 \mu F$ capacitor and increasing at $3 V/ms$, there is $I = 20 \mu F \times 3 V/ms = 60 mA$.

The power in a capacitor is $p(t) = v(t) I(t) = C v(t)\frac{\dee v(t)}{\dee t}$. So the energy in a capacitor is $w(t) = \int_0^t C V(t)\frac{\dee V(t)}{\dee t} \dee t = C \int V(t) \dee V(t) = \frac 1 2 C V(t)^2$, until the capacitor is fully charged (when the voltage becomes constant at some $t$).

# 25/6/14

Given capacitors connected in series with capacitances $C_1, \ldots, C_n$, it is possible to replace all of them with an **equivalent series capacitance** $\frac 1 {C_{eq}} = \frac 1 {C_1} + \ldots + \frac 1 {C_n}$. This is similar to the formula for equivalent resistance for resistors in parallel.

Given capacitors connected in parallel with capacitances $C_1, \ldots, C_n$, it is possible to replace all of them with an **equivalent parallel capacitance** $C_{eq} = C_1 + \ldots + C_n$. This is similar to the formula for equivalent resistance for resistors in series.

The DC steady state of the capacitor is very important for analyzing circuits. The DC steady state is when $I(t) = 0 = \frac{\dee V(t)}{\dee t}$.

When analyzing circuits at DC steady state, we know that the capacitors are not affecting the voltage, and the currents flowing through them are 0 A, so we can actually treat them as an open circuit - they can simply be removed from the circuit. The steady state of a capacitor is an open circuit.

# 26/6/14

;wip: inductors: current in inductor can't change instantaneously, $V_L = L\frac{\dee i_L}{\dee t}$ where $L$ is the inductance

Inductors store energy in magnetic fields. An inductor is a two terminal device that is made up of a conductive coil, optionally with a core of ferromagnetic material.

When current flows into one end of an inductor, it flows out the other end, in the process creating a magnetic field in the coil.

The steady state of an inductor is a short circuit.

# 2/7/14

;wip: make up lecture this monday and next monday

;wip: see midterm at office hours

Transient Analysis
------------------

This is analysis of circuits with respect to time. A **transient** state is one that is dependent on time. Before this, we were analyzing circuits in **steady state** - a state that does not change over time.

;wip: transcribe from notebook

;wip: constant charging voltage is never quite reached because $e^{-\frac t \tau} > 0$.

An RC circuit is a capacitor in series with a resistor.

# 3/7/14

In this course we will only be working with circuits that can be reduced such that they only have one capacitor, which allows us to apply the charging/discharging formula $V_c(t) = V_f + (V_i - V_f)e^{-t/\tau}$ where $\tau = RC$, the time constant.

To solve DC steady state problems, we find the initial conditions at $t = 0$ and the final conditions at $t = \infty$. For capacitors, we then find the time constant and use the charging/discharging equation to determine the voltage.

We can find the time constant of a capacitor by using $\tau = RC$ where $R$ is the Thevenin resistance across the rest of the circuit and $C$ is the capacitance. Note that the steady state voltage is also the Thevenin voltage.

To solve capacitor problems, we replace everything except for the capacitor with its Thevenin equivalent. Then $\tau = V_{th}C$ and $V_f = V_{th}$.

Whenever a capacitor of a switch toggles, then we have to restart transient analysis with the state of the capacitor at the moment the switch toggles as the initial state for the restarted analysis. This is because the switch toggling means that we are now dealing with a different circuit.

An RL circuit is an inductor in series with a resistor.

For inductors, we use the same steps, but $\tau = \frac L R$.

For inductors, $I_L = I_f + (I_i - I_f)e^{-\frac t \tau}$.