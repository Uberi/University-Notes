GENE123
=======

Electrical engineering.

    Instructor: Samar Mohamed
    Office: EIT 3112
    Office Hours: drop-in

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
        * It is not possible to have a power source that is both constant current and constant voltage.
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

KCL can be used directly when there is only one unknown current in the path, and KVL can be used directly when there is only one unknown voltage in the loop. Otherwise, we need to write out and solve the system of equations.

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

For the KVL equations, sources should have their voltage added and loads should have their voltage subtracted.

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
3. Otherwise, use nodal analysis to get the open circuit voltage and short circuit current, and use this to calculate the Thevenin resistance.

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

<svg xmlns="http://www.w3.org/2000/svg" width="111" height="80"><rect x="0" y="0" fill="white" width="111px" height="80px"/><line x1="10" y1="20" x2="10" y2="60" stroke="black" stroke-width="2"/><line x1="10" y1="60" x2="40" y2="60" stroke="black" stroke-width="2"/><line x1="80" y1="60" x2="100" y2="60" stroke="black" stroke-width="2"/><line x1="100" y1="20" x2="100" y2="60" stroke="black" stroke-width="2"/><g stroke="black" stroke-width="2px" transform="matrix(1,0,0,1,40,50)"><metadata class="part"><wtx:part xmlns:wtx="http://code.google.com/p/webtronics"><wtx:pins><wtx:analog><wtx:node index="1" x="0" y="10"/><wtx:node index="2" x="40" y="10"/></wtx:analog></wtx:pins><wtx:id>r</wtx:id><wtx:type>r</wtx:type><wtx:name>testresistor</wtx:name><wtx:category>resistors</wtx:category><wtx:value/><wtx:label/><wtx:spice/><wtx:flip/><wtx:model/></wtx:part></metadata><path d="M 5.1400289,10.973441 7.5009997,5.0436578 10.530362,14.908323 14.248435,4.3282724 18.324457,14.77488 21.761826,4.4617163 25.849828,14.589134 29.504786,4.5222528 33.128938,14.818135 35.33864,10.115602" id="path3444" fill="none"/><path d="m 0,10 5.424147,0" id="path2159"/><path d="m 40,10 -5.459106,0" id="path2161"/><rect width="40" height="20" x="0" y="0" id="rect2162" visibility="hidden"/></g><g stroke="black" stroke-width="2px" id="v" class="battery" transform="matrix(-1,1.2246468525851679e-16,-1.2246468525851679e-16,-1,60,30)"><metadata class="part"><wtx:part xmlns:wtx="http://code.google.com/p/webtronics"><wtx:pins><wtx:analog><wtx:node index="1" x="0" y="10"/><wtx:node index="2" x="50" y="10"/></wtx:analog></wtx:pins><wtx:id>v</wtx:id><wtx:type>v</wtx:type><wtx:name>battery</wtx:name><wtx:category>power</wtx:category><wtx:value/><wtx:label/><wtx:spice/><wtx:flip/><wtx:model/></wtx:part></metadata><path d="M 0,10 L 17,10" id="path5009"/><path d="M 32,10 L 50,10" id="path5019"/><path d="M 17.836609,0.68314333 L 17.718673,19.199113" id="path5011"/><path d="M 22.436119,3.7494823 L 22.436119,15.071349" id="path5013"/><path d="M 27.507371,0.68314333 L 27.507371,19.552922" id="path5015"/><path d="M 31.753072,3.8674183 L 31.635136,15.425157" id="path5017"/><text x="8.2167969" y="8.5261526" id="text5025" font-size="12px" stroke-width="0px">+</text><text x="34.111794" y="0.5234375" id="text5029" font-size="12px" stroke-width="0px">_</text></g><g stroke="black" stroke-width="2px" transform="matrix(1,0,0,1,60,10)"><metadata class="part"><wtx:part xmlns:wtx="http://code.google.com/p/webtronics"><wtx:pins><wtx:analog><wtx:node index="1" x="0" y="10"/><wtx:node index="2" x="40" y="10"/></wtx:analog></wtx:pins><wtx:id>r</wtx:id><wtx:type>r</wtx:type><wtx:name>testresistor</wtx:name><wtx:category>resistors</wtx:category><wtx:value/><wtx:label/><wtx:spice/><wtx:flip/><wtx:model/></wtx:part></metadata><path d="M 5.1400289,10.973441 7.5009997,5.0436578 10.530362,14.908323 14.248435,4.3282724 18.324457,14.77488 21.761826,4.4617163 25.849828,14.589134 29.504786,4.5222528 33.128938,14.818135 35.33864,10.115602" id="path3444" fill="none"/><path d="m 0,10 5.424147,0" id="path2159"/><path d="m 40,10 -5.459106,0" id="path2161"/><rect width="40" height="20" x="0" y="0" id="rect2162" visibility="hidden"/></g></svg>

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

<svg xmlns="http://www.w3.org/2000/svg" width="140" height="126"><rect x="0" y="0" fill="white" width="140px" height="126px"/><text x="56" y="113" font-size="12" fill="black" stroke-width="0px">V_{cc}-</text><text x="52" y="17" font-size="12" fill="black" stroke-width="0px">V_{cc}+</text><text x="10" y="80" font-size="12" fill="black" stroke-width="0px">V_p</text><text x="10" y="44" font-size="12" fill="black" stroke-width="0px">V_n</text><text x="107" y="65" font-size="12" fill="black" stroke-width="0px">V_O</text><g id="u" stroke="#000" stroke-width="2px" class="op-amp" transform="matrix(1,1.2246468525851679e-16,1.2246468525851679e-16,-1,40,90)"><metadata class="part"><wtx:part xmlns:wtx="http://code.google.com/p/webtronics"><wtx:pins><wtx:analog><!-- all opamp models must be in this order * CONNECTIONS: NON-INVERTING INPUT * | INVERTING INPUT * | | POSITIVE POWER SUPPLY * | | | NEGATIVE POWER SUPPLY * | | | | OPEN COLLECTOR OUTPUT * | | | | | .SUBCKT LM339 1 2 3 4 5 --><wtx:node index="1" x="0" y="10"/><wtx:node index="2" x="0" y="50"/><wtx:node index="3" x="30" y="0"/><wtx:node index="4" x="30" y="60"/><wtx:node index="5" x="60" y="30"/></wtx:analog></wtx:pins><wtx:id>u</wtx:id><wtx:type>u</wtx:type><wtx:name>op-amp</wtx:name><wtx:category>amplifier</wtx:category><wtx:value/><wtx:spice/><wtx:label/><wtx:flip>true</wtx:flip><wtx:model/></wtx:part></metadata><path id="path1887" fill="none" d="M50,30,10,60,10,0,50,30z"/><path id="path1889" d="M0,10,10,10"/><path id="path1893" d="M0,50,10,50"/><text id="text1895" y="20" x="15" font-size="12px" stroke-width="0px">+</text><path id="path2167" d="M50,30,60,30"/><text id="text1915" y="45" x="15" font-size="12px" stroke-width="0px">_</text><path id="path2" d="M30,0,30,15"/><path id="path2" d="M30,45,30,60"/></g></svg>

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

<svg xmlns="http://www.w3.org/2000/svg" width="236" height="167.5"><rect x="0" y="0" fill="white" width="236px" height="167.5px"/><text x="87" y="101" font-size="12" fill="black" stroke-width="0px">node A</text><line x1="120" y1="90" x2="90" y2="90" stroke="black" stroke-width="2"/><line x1="150" y1="40" x2="180" y2="40" stroke="black" stroke-width="2"/><line x1="120" y1="130" x2="120" y2="140" stroke="black" stroke-width="2"/><g connects="10,0" stroke="black" stroke-width="2px" id="Gnd" class="ground" transform="matrix(1,0,0,1,110,140)"><metadata><wtx:part xmlns:wtx="http://code.google.com/p/webtronics"><wtx:pins><wtx:analog><wtx:node index="1" x="10" y="0"/></wtx:analog></wtx:pins><wtx:id>gnd</wtx:id><wtx:type>gnd</wtx:type><wtx:name>ground</wtx:name><wtx:category>power</wtx:category><wtx:flip/><wtx:value/><wtx:label/><wtx:spice/><wtx:model/></wtx:part></metadata><path d="M 10,0 L 10,11"/><path d="M 0.50000006,11.834153 L 19.671275,11.834153"/><path d="M 2.6480823,14.5 L 17.732881,14.5"/><path d="M 5.802873,17.5 L 14.648082,17.5"/></g><g connects="10,0" stroke="black" stroke-width="2px" id="Gnd" class="ground" transform="matrix(1,0,0,1,140,140)"><metadata><wtx:part xmlns:wtx="http://code.google.com/p/webtronics"><wtx:pins><wtx:analog><wtx:node index="1" x="10" y="0"/></wtx:analog></wtx:pins><wtx:id>gnd</wtx:id><wtx:type>gnd</wtx:type><wtx:name>ground</wtx:name><wtx:category>power</wtx:category><wtx:flip/><wtx:value/><wtx:label/><wtx:spice/><wtx:model/></wtx:part></metadata><path d="M 10,0 L 10,11"/><path d="M 0.50000006,11.834153 L 19.671275,11.834153"/><path d="M 2.6480823,14.5 L 17.732881,14.5"/><path d="M 5.802873,17.5 L 14.648082,17.5"/></g><g connects="10,20" stroke="black" stroke-width="2px" id="wire" class="namewire" transform="matrix(1,0,0,1,140,60)"><metadata class="part"><wtx:part xmlns:wtx="http://code.google.com/p/webtronics"><wtx:pins><wtx:analog><wtx:node index="1" x="10" y="20"/></wtx:analog></wtx:pins><wtx:id>wire</wtx:id><wtx:type>wire</wtx:type><wtx:name>namewire</wtx:name><wtx:category>power</wtx:category><wtx:value/><wtx:label/><wtx:spice/><wtx:flip/><wtx:model/></wtx:part></metadata><rect width="20" height="20" x="0" y="0" visibility="hidden"/><path d="M 9.8453557,0.75155132 L 9.7889861,20.02609"/><path d="M 6.8984095,6.0400567 L 9.776679,0.65836743 L 13.116155,5.9214675"/></g><g id="u" stroke="#000" stroke-width="2px" class="op-amp" transform="matrix(1,0,0,1,120,80)"><metadata class="part"><wtx:part xmlns:wtx="http://code.google.com/p/webtronics"><wtx:pins><wtx:analog><!-- all opamp models must be in this order * CONNECTIONS: NON-INVERTING INPUT * | INVERTING INPUT * | | POSITIVE POWER SUPPLY * | | | NEGATIVE POWER SUPPLY * | | | | OPEN COLLECTOR OUTPUT * | | | | | .SUBCKT LM339 1 2 3 4 5 --><wtx:node index="1" x="0" y="10"/><wtx:node index="2" x="0" y="50"/><wtx:node index="3" x="30" y="0"/><wtx:node index="4" x="30" y="60"/><wtx:node index="5" x="60" y="30"/></wtx:analog></wtx:pins><wtx:id>u</wtx:id><wtx:type>u</wtx:type><wtx:name>op-amp</wtx:name><wtx:category>amplifier</wtx:category><wtx:value/><wtx:spice/><wtx:label/><wtx:flip>true</wtx:flip><wtx:model/></wtx:part></metadata><path fill="none" d="M50,30,10,60,10,0,50,30z"/><path d="M0,10,10,10"/><path d="M0,50,10,50"/><text y="20" x="15" font-size="12px" stroke-width="0px">+</text><path d="M50,30,60,30"/><text y="45" x="15" font-size="12px" stroke-width="0px">_</text><path d="M30,0,30,15"/><path d="M30,45,30,60"/></g><line x1="180" y1="40" x2="180" y2="110" stroke="black" stroke-width="2"/><g stroke="black" stroke-width="2px" transform="matrix(1,0,0,1,50,80)"><metadata class="part"><wtx:part xmlns:wtx="http://code.google.com/p/webtronics"><wtx:pins><wtx:analog><wtx:node index="1" x="0" y="10"/><wtx:node index="2" x="40" y="10"/></wtx:analog></wtx:pins><wtx:id>r</wtx:id><wtx:type>r</wtx:type><wtx:name>testresistor</wtx:name><wtx:category>resistors</wtx:category><wtx:value/><wtx:label/><wtx:spice/><wtx:flip/><wtx:model/></wtx:part></metadata><path d="M 5.1400289,10.973441 7.5009997,5.0436578 10.530362,14.908323 14.248435,4.3282724 18.324457,14.77488 21.761826,4.4617163 25.849828,14.589134 29.504786,4.5222528 33.128938,14.818135 35.33864,10.115602" fill="none"/><path d="m 0,10 5.424147,0"/><path d="m 40,10 -5.459106,0"/><rect width="40" height="20" x="0" y="0" visibility="hidden"/></g><g stroke="black" stroke-width="2px" transform="matrix(1,0,0,1,100,30)"><metadata class="part"><wtx:part xmlns:wtx="http://code.google.com/p/webtronics"><wtx:pins><wtx:analog><wtx:node index="1" x="0" y="10"/><wtx:node index="2" x="40" y="10"/></wtx:analog></wtx:pins><wtx:id>r</wtx:id><wtx:type>r</wtx:type><wtx:name>testresistor</wtx:name><wtx:category>resistors</wtx:category><wtx:value/><wtx:label/><wtx:spice/><wtx:flip/><wtx:model/></wtx:part></metadata><path d="M 5.1400289,10.973441 7.5009997,5.0436578 10.530362,14.908323 14.248435,4.3282724 18.324457,14.77488 21.761826,4.4617163 25.849828,14.589134 29.504786,4.5222528 33.128938,14.818135 35.33864,10.115602" fill="none"/><path d="m 0,10 5.424147,0"/><path d="m 40,10 -5.459106,0"/><rect width="40" height="20" x="0" y="0" visibility="hidden"/></g><line x1="140" y1="40" x2="150" y2="40" stroke="black" stroke-width="2"/><line x1="90" y1="40" x2="100" y2="40" stroke="black" stroke-width="2"/><line x1="90" y1="40" x2="90" y2="90" stroke="black" stroke-width="2"/><line x1="40" y1="90" x2="50" y2="90" stroke="black" stroke-width="2"/><text x="15" y="92" font-size="12" fill="black" stroke-width="0px">V_S</text><text x="60" y="76" font-size="12" fill="black" stroke-width="0px">R_1</text><text x="112" y="28" font-size="12" fill="black" stroke-width="0px">R_2</text><line x1="190" y1="110" x2="180" y2="110" stroke="black" stroke-width="2"/><text x="203" y="114" font-size="12" fill="black" stroke-width="0px">V_O</text></svg>

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

Capacitors have capacitance ($C$), which measures the ability to store electric charge and the ability to resist changes in voltage. Capacitance is measured in Farads (F), which is a huge unit, so we often use micro or nano or picoFarads.

A 1 F capacitor is one with capacitance such that when charged with 1 Coulomb, has 1 V across the terminals. Capacitance is determined by $C = \frac{\epsilon d}{A}$, where $\epsilon$ is the permeability of the dialectric (a physical constant), $d$ is the distance between the plates (meters) and $A$ is the surface area of both plates.

Capacitance is governed by $q(t) = C V(t)$. Taking the derivative, we get $I(t) = C \frac{\dee V(t)}{\dee t}$, where $I(t)$ is the current flowing through the capacitor and $V(t)$ is the voltage across the capacitor terminals. So if the voltage stops changing, there is no current and the capacitor acts like an open circuit.

So if $I(t)$ is constant, $\frac{\dee V(t)}{\dee t}$ is constant and $I = C \frac{V_f - V_i}{t_f - t_i}$.

Since $C = \frac{I(t)}{\frac{\dee V(t)}{\dee t}}$, the voltage can never change instantaneously. The capacitor will take a certain amount of time to charge up, even if the voltage source tries to change instantaneously.

If the voltage over a capacitor changes, the capacitor will supply current in order to oppose the change in voltage.

This can also be written as $V(t) = \frac 1 C \int I_C(t) \dee t + V_C(0)$. The $V_C(0)$ term is the **initial condition** for the voltage - the voltage we started off with.

So if a voltage source is connected to a $20 \mu F$ capacitor and increasing at $3 V/ms$, there is $I = 20 \mu F \times 3 V/ms = 60 mA$.

The power in a capacitor is $P(t) = V(t) I(t) = C v(t)\frac{\dee v(t)}{\dee t}$. So the energy in a capacitor is $W(t) = \int_0^t C V(t)\frac{\dee V(t)}{\dee t} \dee t = C \int V(t) \dee V(t) = \frac 1 2 C V(t)^2$.

# 25/6/14

The DC steady state of a capacitor is an open circuit. When we are analyzing a circuit at DC steady state, the capacitor can simply be removed. This is because when the voltage is not changing, the current across the capacitor is 0.

Given capacitors connected in series with capacitances $C_1, \ldots, C_n$, it is possible to replace all of them with an **equivalent series capacitance** $\frac 1 {C_{eq}} = \frac 1 {C_1} + \ldots + \frac 1 {C_n}$. This is similar to the formula for equivalent resistance for resistors in parallel. As a result, we can use the product-over-sum rule for two series capacitors $C_1$ and $C_2$, $\frac{C_1 C_2}{C_1 + C_2}$.

Given capacitors connected in parallel with capacitances $C_1, \ldots, C_n$, it is possible to replace all of them with an **equivalent parallel capacitance** $C_{eq} = C_1 + \ldots + C_n$. This is similar to the formula for equivalent resistance for resistors in series.

# 26/6/14

Inductors store energy in magnetic fields. An inductor is a two terminal device that is made up of a conductive coil, optionally with a core of ferromagnetic material.

When current flows into one end of an inductor, it flows out the other end, in the process creating a magnetic field in the coil. When the current flowing through it changes, then the ;wip

Inductors have inductance ($L$), which is measured in Henry ($H$), which is the ability to resist changes in current.

A 1 H inductor is one such that when the current changes by 1 A per second, the voltage across the inductor is 1 V.

Inductance is governed by $V(t) = L\frac{\dee I(t)}{\dee t}$, where $V(t)$ is the voltage across the inductor, $I$ is the current flowing through the inductor, and $L$ is the inductance.

So if $V(t)$ is constant, $\frac{\dee I(t)}{\dee t}$ is constant and $V = L\frac{I_f - I_i}{t_f - t_i}$.

Since $L = \frac{V(t)}{\frac{\dee I(t)}{\dee t}}$, the current can never change instantaneously. The inductor will slowly let the current change over time, even if there is a current source trying to change it instantaneously.

If the current is increasing, the voltage is positive between the end the current is going into and the end it is coming out of. If the current is decreasing, the voltage is negative. This is because the inductor always outputs voltage trying to prevent the current from changing.

The power in an inductor is $P(t) = V(t) I(t) = L\frac{\dee I(t)}{\dee t} I(t)$. So the energy in a capacitor is $W(t) = \int_0^t L I(t)\frac{\dee I(t)}{\dee t} \dee t = L \int I(t) \dee I(t) = \frac 1 2 L I(t)^2$.

The DC steady state of an inductor is a short circuit. When we are analyzing a circuit at DC steady state, the inductor can simply be replaced by a wire. This is because when the current is not changing, the voltage across the inductor is 0.

Given inductors connected in series with inductances $L_1, \ldots, L_n$, it is possible to replace all of them with an **equivalent series inductance** $L_{eq} = L_1 + \ldots + L_n$. This is similar to the formula for equivalent resistance for resistors in series.

Given inductors connected in parallel with inductances $L_1, \ldots, L_n$, it is possible to replace all of them with an **equivalent parallel inductance** $\frac 1 {L_{eq}} = \frac 1 {L_1} + \ldots + \frac 1 {L_n}$. This is similar to the formula for equivalent resistance for resistors in parallel. As a result, we can use the product-over-sum rule for two parallel inductors $L_1$ and $L_2$, $\frac{L_1 L_2}{L_1 + L_2}$.

# 2/7/14

Transient Analysis
------------------

This is analysis of circuits with respect to time. A **transient** state is one that is dependent on time. Before this, we were analyzing circuits in **steady state** - a state that does not change over time.

;wip: transcribe from notebook

An RC circuit is a capacitor in series with a resistor.

Also, when $R = 0$ (there is no resistor in the circuit) and there is only a capacitor and independent voltage source in series, we can simply analyze the circuit using $V = C\frac{I_f - I_i}{t_f - t_i}$.

# 3/7/14

In this course we will only be working with circuits that can be reduced such that they only have one capacitor, which allows us to apply the charging/discharging formula $V_c(t) = V_f + (V_i - V_f)e^{-t/\tau}$ where $\tau = RC$, the time constant.

To solve DC steady state problems, we find the initial conditions at $t = 0$ and the final conditions at $t = \infty$. For capacitors, we then find the time constant and use the charging/discharging equation to determine the voltage.

We can find the time constant of a capacitor by using $\tau = RC$ where $R$ is the Thevenin resistance across the rest of the circuit and $C$ is the capacitance. Note that the steady state voltage is also the Thevenin voltage.

To solve capacitor problems, we replace everything except for the capacitor with its Thevenin equivalent. Then $\tau = V_{th}C$ and $V_f = V_{th}$.

Whenever a capacitor of a switch toggles, then we have to restart transient analysis with the state of the capacitor at the moment the switch toggles as the initial state for the restarted analysis. This is because the switch toggling means that we are now dealing with a different circuit.

An RL circuit is an inductor in series with a resistor.

For inductors, we use the same steps, but $\tau = \frac L R$.

For inductors, $I_L = I_f + (I_i - I_f)e^{-\frac t \tau}$.

Also, when $R = 0$ (there is no resistor in the circuit) and there is only an inductor and independent voltage source in series, we can simply analyze the circuit using $I = L\frac{V_f - V_i}{t_f - t_i}$.

# 7/7/14

;wip: transient analysis of inductors

# 8/7/14

Alternating current (AC) is much easier to generate and transmit compared to DC. In order to get DC we usually have to use either batteries or rectify AC. In this course we will only be studying AC circuits in steady state.

DC has a voltage that does not change sign over time. AC has voltage that changes from positive to negative and back repeatedly.

AC voltage often appears as a sine/cosine wave. For a sine/cosine wave, the period ($T$) of the wave is the minimal amount of time after which the voltage function starts repeating. The frequency is $f = \frac 1 T$, the number of cycles per second, and the angular frequency $\omega = 2 \pi f = \frac{2 \pi}{T}$ (rad/s) is the number of radians passed per second.

The amplitude ($A$) is the largest value of $V(t)$. The time is measured in radians for a sine wave, so now we will mostly be using $\omega t$ for time, so each unit of $t$ moves $\omega t$ by $\frac t T$ of a full period as required.

A sine wave has a phase shift where they start at different times. If wave X **lags behind** wave Y (Y is **leading** X) by angle $\theta$, then $V_X(t) = A_X \sin(\omega t)$ and $V_Y(t) = A_Y \sin(\omega t - \theta)$. For example, the cosine wave leads the sine wave by 90 degrees - $\sin \theta = \cos \left(\theta - \frac \pi 2\right)$.

We usually represent AC using $\cos$ rather than $\sin$ since it is easier to work with - in particular, it is symmetrical about the y-axis.

We could have either a voltage source or a current source based on these waveforms. For example, an AC voltage source can have $V(t) = 4 \sin(2t + 1.5)$ and an AC current source can have $I(t) = 2.5 \sin(2t + 1.5)$.

# 9/7/14

If we have multiple AC sources at a node, we add or subtract their values when applying KCL. 

The **phasor representation** of an AC waveform $10\cos(2t + 5)$ is $10 \angle (2t + 5) = 10(\cos(2t + 5) + \imag \sin(2t + 5))$, or in shorthand, $10 \angle 5$ with $\omega = 2$. A phasor is basically the polar form of $(t, V(t))$ or the imaginary number representation of that vector, and represents a cosine function of time.

The Cartesian form of a vector is also known as rectangular form. It is more useful for adding or subtracting waveforms. The phasor representation is more useful for multiplication or division since $a_1 \angle \theta_1 \times a_2 \angle \theta_2 = a_1 a_2 \angle (\theta_1 + \theta_2)$ and $\frac{a_1 \angle \theta_1}{a_2 \angle \theta_2} = \frac{a_1}{a_2} \angle (\theta_1 - \theta_2)$.

If we have multiple phasors and $\omega$ is the same for all of them (so we can substitute $\omega t$), they can only differ in amplitude and phase.

# 10/7/14

A capacitor stores energy in an electric field, while an inductor stores energy in a magnetic field.

Simplify $V(t) = 2 \cos\left(100t - \frac \pi 4\right) - 3 \cos\left(100t + \frac \pi 3\right)$:

> Clearly, $V = 2 \angle (-\frac \pi 4) - 3 \angle \frac \pi 3$.  
> So $V = \left(2\cos\left(-\frac \pi 4\right) + 2\imag \sin\left(-\frac \pi 4\right)\right) - \left(3\cos \frac \pi 3 + 3\imag \sin \frac \pi 3\right) = \left(2\cos\left(-\frac \pi 4\right) - 3\cos \frac \pi 3\right) + \imag\left(2\sin\left(-\frac \pi 4\right)\right) - 3\sin\left(\frac \pi 3\right)$.  
;wip

The **root mean squared** (RMS) is represented $V_{RMS}$ and is the DC voltage that gives the same average power as the AC. This is a value between 0 and the amplitude of the circuit.

The average power of an AC waveform $V_{AC}(t)$ is $P = \frac{V_{RMS}^2}{R}$. It can also be derived to be $\frac 1 T \int_0^T \frac{V_{AC}^2}{R} \dee t$. So $V_{RMS} = \sqrt{\frac 1 T \int_0^T V^2 \dee t}$.

For a sine wave, $V_{RMS} = \frac{\max(V_{AC})}{\sqrt{2}}$ - it is $\frac 1 {\sqrt{2}}$ times the amplitude of a sine wave. In the same way, $I_{RMS} = \frac{\max(I_{AC})}{\sqrt{2}}$ for current sources.

In AC circuits, **impedance** ($Z$) is the voltage divided by the current - $Z = \frac{V}{I} = \frac{\magn{V}}{\magn{I}}\angle(\theta_V - \theta_I)$. However, both the voltage and current are angles. In circuit diagrams, an element with impedance is represented with the a rectangle with a $Z$ inside.

Impedance is a generalization of resistance in DC circuits. It is, in general, the amount of opposition a circuit gives to the current given an applied voltage.

Impedance is still measured in Ohms, but describes capacitors and inductors in addition to resistors. When we have impedance in rectangular form, $Z = R + \imag X$, $R$ is the resistance and $X$ is the **reactance**. The reactance of a circuit element is the opposition of change in voltage or current in a circuit. It basically determines how far the current will lag or lead the voltage.

For resistors, $V \angle \theta = I \angle \theta R$, so $Z = \frac{V \angle \theta}{I \angle \theta} = \frac V I = R$. So for resistors, the impedance is just the resistance. This is because the voltage and current are both in phase for resistors due to Ohm's law for resistances, so they cancel out the angles.

For inductors, $V(t) = L \frac{\dee I}{\dee t} = L \max(I)\frac{\dee}{\dee t} \cos(\omega t + \theta) = \omega L \max(I) \cos\left(\omega t + \theta + \frac \pi 2\right)$ and $I(t) = \max(I) \cos(\omega t + \theta)$. So $V = \omega L\max(I) \angle\left(\theta + \frac \pi 2\right)$ and $\max(I) \angle \theta$ and $Z = \omega L \angle \frac \pi 2$, so for an inductor it affects only the imaginary component.

For capacitors, $I(t) = \max(I) \cos(\omega t + \theta)$ and $V(t) = \frac 1 C \int_0^T \max(I) \cos(\omega t + \theta) = \frac{\max(I)}{\omega C} \cos\left(\omega t + \theta - \frac \pi 2\right)$. So $Z = \frac{1}{\omega C} \angle\left(-\frac \pi 2\right)$, so for an inductor it affects only the imaginary component

So when we have an inductor, the current will be lagging the voltage by 90 degrees, and when we have a capacitor, the voltage will be lagging the current by 90 degrees. Capacitors and inductors are purely reactive, while resistors are purely resistive.

# 14/7/14

Impedance is a complex value measured in Ohms, where the real part is the resistance and the imaginary part is the reactance.

For inductors, $V = L\frac{\dee I}{\dee t}$ and $I(t) = \max(I) \sin(\omega t)$, so $V(t) = L\frac{\dee}{\dee t}\max(I) \sin(\omega t) = L\omega \max(I) \cos(\omega t)$.

So $Z = \frac{V(t)}{I(t)} = \frac{L\omega \max(I) \cos(\omega t)}{\max(I) \sin(\omega t)} = \frac{L\omega \sin\left(\omega t + \frac \pi 2\right)}{\sin(\omega t)} = L\omega \angle \frac \pi 2 = \imag \omega L$. The impedance of an inductor is always a non-negative imaginary number.

Basically, the voltage-time graph leads the current-time graph by 90 degrees.

For capacitors, $I = C\frac{\dee V}{\dee t}$ and $V(t) = \max(V) \sin(\omega t)$, so $I(t) = C\frac{\dee}{\dee t}\max(V) \sin(\omega t) = C\omega \max(V) \cos(\omega t)$.

So $Z = \frac{V(t)}{I(t)} = \frac{\max(V) \sin(\omega t)}{C\omega \max(V) \cos(\omega t)} = \frac{\sin(\omega t)}{C\omega \sin\left(\omega t + \frac \pi 2\right)} = \frac 1 {C\omega} \angle \left(-\frac \pi 2\right) = -\imag \frac 1 {\omega C} \cdot \frac{\imag}{\imag} = \frac{1}{\imag \omega C}$. We usually use the $\frac{-\imag}{\omega C}$ representation. The impedance of a capacitor is always a non-positive imaginary number.

Basically, the voltage-time graph lags the current-time graph by 90 degrees.

If the reactance is positive, the component is an inductive load. If the reactance is negative, the component is a capacitive load. If it is 0, the component is neither.

Ohm's law also works for impedance, so $V = IZ$ where $V$ is the voltage across an element, $I$ is the current flowing through the element, and $Z$ is the impedance. However, since all three variables are now complex values, they are a bit more difficult to calculate.

Note that $\max(V) = \max(I)\abs{Z}$ - the magnitude of the impedance is the factor of proportionality between the voltage and current.

Note that $\abs{V} = \abs{I}\abs{Z}, \theta_V = \theta_I + \theta_Z$ - the magnitude of the impedance scales the voltage to the current and the angle offsets the angle of the voltage from the current.

# 15/7/14

If we have a resistor, a capacitor, and an inductor all in series, then the impedenace is $Z = R + \imag \omega L - \imag \frac{1}{\omega C}$.

In series circuits, $Z_{eq} = Z_1 + \ldots Z_n$. In parallel circuits, $\frac 1 {Z_{eq}} = \frac 1 {Z_1} + \ldots + \frac 1 {Z_n}$. This is similar to how resistances work. As a result, we can use the product over sum rule $Z_{eq} = \frac{Z_1 Z_2}{Z_1 + Z_2}$.

We can therefore replace a network of impedances with a single equivalent impedance. This allows us to significantly simplify certain impedance networks.

To solve circuits using equivalent impedances:

1. Represent $V(t)$ in phasor form.
2. Find the impedance $Z$ for every component in rectangular form.
3. If two components are in series, replace them with another impedance equal to their sum.
4. If two components are in parallel, replace them with another impedance equal to $\frac{Z_1 Z_2}{Z_1 + Z_2}$.
5. When there is only one impedance left, this value is the equivalent impedance.
6. Find $I = \frac{V(t)}{Z}$.
7. Find the voltage across each element using $V = IZ$ - Ohm's law.

When converting rectangular into polar form, it is important to consider the angle on the Cartesian plane and have it in the correct quadrant, since $\arctan$ can be ambiguous in certain quadrants.

AC steady state does not have constant current or voltage, but the current and voltage on everything is periodic. In DC steady state, the voltage and current on everything is constant.

# 16/7/14

In engineering we often use $j$ instead of $\imag$, since the variable $i$ is already used to represent current.

Voltage and current division formulas also work with impedance. Given two impedances $Z_1, Z_2$ in parallel, the current through $Z_1$ is $Z_{eq} = I_{total}\frac{Z_2}{Z_1 + Z_2}$. Given two impedances $Z_1, Z_2$ in series, the voltage across $Z_1$ is $V_{total}\frac{Z_1}{Z_1 + Z_2}$.

;wip: transcribe the big equivalent impedance example in notebook

# 17/7/14

We can also perform nodal and mesh analysis on circuits in AC steady state. When we do this, we simply treat the phasors as values, and treat them as the voltages and current values.

;wip: transcribe from notebook

# 22/7/14

The impedance of a resistor is $R = R \angle 0$. The impedance of an inductor is $\imag \omega L = \omega L \angle \frac \pi 2$. THe impedance of a capacitor is $\imag \frac{-1}{\omega C} = \frac{1}{\omega C} \angle \left(-\frac \pi 2\right)$.

Also, $\cos a \cos b = \frac 1 2 \cos(a - b) + \frac 1 2 \cos(a + b)$ and $\cos a \cos b - \sin a \sin b$.

Clearly, $V(t) = \max(V) \cos(\omega t + \theta_V)$ and $I(t) = \max(I) \cos(\omega t + \theta_I)$.

If we transform both graphs such that the angle offset of $I(t)$ is 0, we get $V(t) = \max(V) \cos(\omega t + \theta_V - \theta_I)$ and $I(t) = \max(I) \cos(\omega t)$. Clearly, the power from these waveforms is the same as the power from the original waveforms.

Then the instantaneous power is $P(t) = \max(I) \cos(\omega t) \max(V) \cos(\omega t + \theta_V - \theta_I) = \max(I)\max(V) \frac 1 2 \left(\cos(\theta_V - \theta_I) + \cos(2\omega t + \theta_V - \theta_I)\right) = \frac{\max(I)\max(V)}{2} \left(\cos(\theta_V - \theta_I) + \cos(2\omega t) \cos(\theta_V - \theta_I) - \sin(2\omega t) \sin(\theta_V - \theta_I)\right) = \frac{\max(I)\max(V)}{2} \cos(\theta_V - \theta_I) \left(1 + \cos(2\omega t)\right) - \frac{\max(I)\max(V)}{2} \sin(\theta_V - \theta_I) \sin(2\omega t)$.

Clearly, the average value of $\left(1 + \cos(2\omega t)\right)$ is 1 and the average value of $\frac{\max(I)\max(V)}{2} \sin(\theta_V - \theta_I)$ is 0.

So the **real power** average for AC is $P = \frac{\max(I)\max(V)}{2} \cos(\theta_V - \theta_I)$.

There is also the **reactive power** for AC, which is $Q = \frac{\max(I)\max(V)}{2} \sin(\theta_V - \theta_I)$ on average. Reactive power is measured in $\mathrm{Vars}$, the imaginary part of power. Power itself is still measured in Watts.

This is the power taken and given back repeatedly in the circuit, but do not actually do anything in terms of energy. Capacitors and inductors can store and release energy over the course of a waveform, but on average they have 0 power. However, we must still take this into account when designing circuits - if the reactive power is 20 W and the real power is 100 W, the power supply must be able to give out 120 W to deliver 100 W to the circuit at all times.

Note that since $V_{RMS} = \frac{\max(V)}{\sqrt{2}}, I_{RMS} = \frac{\max(I)}{\sqrt{2}}$, $\frac{\max(I)\max(V)}{2} = V_{RMS}I_{RMS}$. Also, $V_{RMS} = I_{RMS}Z$ by Ohm's law. So $P = I_{RMS} V_{RMS} \cos(\theta_V - \theta_I)$ and $Q = I_{RMS} V_{RMS} \sin(\theta_V - \theta_I)$.

For a resistor, $\theta_V - \theta_I = 0$, so the active power is $\frac{\max{V}\max{I}}{2} = V_{RMS}I_{RMS} = I_{RMS}^2 R$ and reactive power is 0.

For an inductor, current lags voltage and $\theta_V - \theta_I = \frac \pi 2$, so active power is 0 and reactive power is $\frac{\max(I)\max(V)}{2} = V_{RMS}I_{RMS} = I_{RMS} \omega L$.

For a capacitor, voltage lags current and $\theta_V - \theta_I = -\frac \pi 2$, so the active power is 0 and reactive power is $-\frac{\max(I)\max(V)}{2} = -V_{RMS}I_{RMS} = -I_{RMS}^2 \frac 1 {\omega C}$.

# 23/7/14

The $\cos(\theta_V - \theta_I)$ term is known as a **power factor**, and is the ratio of the actual power to the maximum possible power for the given voltage and current RMS values. Ideally, we would like this value to be as close to 1 as possible, so the power is used most efficiently. The power factor is directly correlated to efficiency.

A positive reactive power value in the load means the load is inductive. A negative reactive power value in the load means the load is capacitive.

**Apparent power** is the power that a circuit actually will require, though it might not use up the energy. This is measured in Volt-Amperes, which is distinct from Watts for AC, and $S = V_{RMS} I_{RMS}^* = \abs{V_{RMS}} \abs{I_{RMS}^*} \angle(\theta_V - \theta_I) = \abs{V_{RMS}} \abs{I_{RMS}} \cos(\theta_V - \theta_I) + \imag \abs{V_{RMS}} \abs{I_{RMS}} \sin(\theta_V - \theta_I) = P + \imag Q$, where $I_{RMS}^*$ is the complex conjugate of $I_{RMS}$. In other words, it is an imaginary number that has both the real power and reactive power as components.

The **power triangle** is a drawing of the apparent power vector $P + \imag Q$ on a Cartesian plane with real and imaginary axes.

So $S = P + \imag Q = I_{RMS} V_{RMS} \angle(\theta_V - \theta_I)$. Also, $\theta_V - \theta_I = \arctan \frac Q P$.

# 24/7/14

$S = VI = P + \imag Q = I^2 R + \imag I^2 X$ is the **complex power**, while $\abs{S}$ is the **apparent power**. When we have multiple elements in a circuit, the total power is the sum of the power on all the components.

**Power factor correction** is a technique where we add circuit elements that increase the power factor and therefore the efficiency. For example, if we have a highly inductive load, we might add a capacitor to decrease the reactive power and increase the real load so that the efficiency is increased. This is because the apparent power is decreased, so we can use a smaller power supply.

For example, with an inductive load we would add a capacitor in parallel since in the original circuit, $S = P + \imag Q_L$ for a positive $Q_L$. The parallel capacitor would then make the power $S = P + \imag Q_L + \imag Q_C$ for a negative $Q_C$, which helps us lower the imaginary component of and improve efficiency.

Leading means that the current leads the voltage, $Q$ is negative, and the load is capacitive. Lagging means the current lags the voltage, $Q$ is positive, and the load is inductive.

Also, $S = I_{RMS} V_{RMS}$, so $S = \frac{P}{\cos(\theta_V - \theta_I)} = \frac{Q}{\sin(\theta_V - \theta_I)}$.

Power loss is the real power that is consumed by a component. We usually find this using $I^2 R$ or $\frac{V^2}{R}$.