PHYS121
=======

Mechanics

    Instructor: Guenter Scholz
    Email: scholz@uwaterloo.ca

$$
\newcommand{\set}[1]{\left\{ #1 \right\}}
\newcommand{\abs}[1]{\left\lvert #1 \right\rvert}
\newcommand{\floor}[1]{\left\lfloor #1 \right\rfloor}
\newcommand{\mb}[1]{\mathbb{#1}}
\newcommand{\rem}{\operatorname{rem}}
\newcommand{\sign}{\operatorname{sign}}
\newcommand{\imag}{\boldsymbol{i}}
\newcommand{\dee}{\mathop{}\!\mathrm{d}}
\newcommand{\evalat}[1]{\left.\left(#1\right)\right|}
\newcommand{\sech}{\operatorname{sech}}
\newcommand{\spn}{\operatorname{Span}}
\newcommand{\proj}{\operatorname{proj}}
\newcommand{\prp}{\operatorname{perp}}
\newcommand{\refl}{\operatorname{refl}}
\newcommand{\magn}[1]{\left\lVert #1 \right\rVert}
\newcommand{\rank}{\operatorname{rank}}
\newcommand{\sys}[2]{\left[ #1 \mid #2\hskip2pt \right]}
$$

# 14/1/14

Course Outline
--------------

* Doing Physics - quantities, dimensions, units
* Point kinematics - 1D, 2D, 3D motion
* Point dynamics - force, motion, Newton's laws
* Conservation of energy - work and energy, conservative systems
* Conservation of linear momentum - momentum and systems of particles
* Rotating rigid bodies - kinematics, dynamics, conservation, angular momentum, static equilibrium, torque

Doing Physics
-------------

Problem solving strategy:

1. Read the question and understand what it gives you and what you are being asked to do.
2. Draw a diagram to clarify things if needed (for example, a free-body diagram).
3. Define a coordinate system or reference points.
4. Write out the relevant physical laws that might help with the problem.
5. Figure out a conceptual way to solve the problem.
6. Derive a concrete way to solve the problem using the conceptual way.
7. Solve the problem. (yes, I know)

### Classical Physics

Classical mechanics is physics before the 1900s. It describes the motion of macroscopic objects - objects that work on the human scale.

We consider objects like point masses (particles), where the location of the particle is at the center of mass of the object.

We derive the kinematic laws of conversation from this.

When we need to consider rotation, we assume the object is rigid - the particles that an object is made out of stay at a constant distance from each other and the object retains its shape.

When we do problems, we need to recognize the laws, write out our problem in terms of these laws, and then solve it using mathematical tools.

All of the laws we will be using have already been recognized by people such as Galileo and Newton. Although they are only empirically based, we will assume them to be true, and ignore effects such as relativity.

These laws were recognized through doing experiments, and using the observations obtained to figure out mathematical relationships between quantities.

Some examples of physical quantities are distance, time, velocity, density, temperature, and force.

Some examples of laws are $\vec{F} = m\vec{a}$ and $\vec{a}_{av} = \frac{\Delta \vec{v}}{\Delta t}$.

Classical mechanics is predictive - knowing everything about a system is enough to predict its future states for all time. This contrasts with newer paradigms of mechanics like quantum mechanics.

There are no such things as absolute laws. Our laws are based on observation, and the possibility of a counterexample always exists.

For example, Newton's laws fell apart under relativistic conditions, where relativistic physics prevailed.

### Units

We measure physical quantities using units - reference values for these quantities that we can compare all other measurements of the same type of quantity to.

In this course we will be using the SI (system international) system, with meters, kilograms, and seconds for length (L), mass (M), and time (T), respectively.

A **dimension** is a quantity with an associated unit. The unit denotes the physical nature of the quantity.

In mechanics, everything can be expressed in terms of mass, length, and time:

| Quantity     | Symbol | Unit     |
|:-------------|:-------|:---------|
| Distance     | $d$    | m        |
| Time         | $t$    | s        |
| Mass         | $m$    | kg       |
| Speed        | $v$    | m/s      |
| Acceleration | $a$    | m/s^2    |
| Force        | $F$    | kg m/s^2 |
| Area         | $A$    | m^2      |

SI also uses things like Kelvin, amperes, moles, and candela.

With this is mind, we can do **dimensional analysis** - analyzing equations in terms of their dimensions.

For example, we can detect some invalid equations by seeing if the units match up - we can only add lengths to lengths, or times to times, and both sides of an equation should have matching units. This will catch dimensional errors, but not numerical errors in the equation.

Dimensional analysis can help us derive new insights into the nature of things, simply by seeing how the units relate to each other.

Consider the example of drag force on an object moving through a fluid:

> Clearly, drag force is correlated with the object area ($A = L^2$), velocity ($v = L/T$), and fluid density ($\rho = M/L^3$).  
> So $F \prop A^w v^x \rho^y$, where $w, x, y$ are unknown.  
> We can figure out the powers using dimensional analysis.  
> Clearly, $F = ma = ML/T^2$, and $A^w v^x \rho^y = L^{2w} (L^x/T^x) M^y/L^{3y} = L^{2w + x} M^y / (L^{3y} T^x) = L^{2w + x - 3y} M^y / T^x$.  
> So $1 = y, 1 = 2w + x - 3y, 2 = x$.  
> Solving for the variables, we get $w = 1, x = 2, y = 1$ as the only solution.  
> So $F \prop A v^2 \rho$.
> We have now found a law for drag force on an object moving through a fluid, all other factors held constant.  
> Note that this is just a proportionality, not an equation. We can call the constant of proportionality the "drag coefficient".  
> We could determine the drag coefficient experimentally for particular objects (or through the hydrodynamic equations), but not through dimensional analysis.  
> This shows that we can derive basic physical relationships using just dimensional analysis.  

Remember that litres is not an SI unit. There are 1000 litres to the cubic meter (which is an SI unit).

### Accuracy

Whenever we do measurements, we can never measure quantities to their exact values. Therefore, there is always some error in our measurements.

If we measure a value, there is always a range to that value in which we measure things. For example, a pencil might be $5.4 \pm 0.1 \text{cm}$, which means that it could be anywhere from $5.3$ to $5.5$ cm. 

We can use significant digits as a short and concise way of representing the amount of precision our measurements have. Significant digits are represented in the format of the number. The more significant digits a number has, the more precision there is. We count significant digits using these rule:

* Non-zero digits are always significant (e.g., 111 has 3 significant digits).
* Zeros that appear between non-zeros are always significant (e.g., 101 has 3 significant digits).
* Zeros that appear before any non-zeros are never significant (e.g., 00.001 has 1 significant digit).
* Zeros that appear at the end of a number with a decimal point are always significant (e.g., 100.0 has 4 significant digits).
* Zeros that appear at the end of a number without a decimal point are sometimes significant - this is ambiguous (e.g., 100 can have 1, 2, or 3 significant digits)

With these rules, $1.0$ is not the same thing as $1.000$ - the first has 2 significant digits, while the second has 4.

Note the ambiguous case for numbers like 10000. We can disambiguate the number of significant digits available by using scientific notation - 10000 can be represented as $1 \time 10^4$, $1.0 \time 10^4$, $1.00 \time 10^4$, $1.000 \time 10^4$, or $1.0000 \time 10^4$, with 1, 2, 3, 4, or 5 significant digits, respectively.

When we multiply or divide numbers, the resulting number has the same number of significant digits as the multiplicand, divisor, or dividend with the lowest number of significant digits.

When we add numbers, the location of the last significant digit is the rightmost digit column that is significant in both numbers.

If we have a number that has more digits than significant digits (which can occur when doing operations on measurements), and we don't want to round the numbers yet, we can simply write all the digits after the last significant digit in a subscript. For example, if 23.456 has only 3 significant digits, we can write it as $23.4_{56}$ to make the number of significant digits clear.

Alternatively, we can underline the last significant digit, though this is an informal convention.

### Estimation

Estimation is an extremely important skill in physics.

We can estimate roughly how much a number is by using the **order of magnitude** scale.

The exact order of magnitude of a number is simply the base 10 logarithm of the number rounded down to the nearest integer. This is equivalent to counting the number of digits and subtracting 1. For example, $3763567$ has an order of magnitude of 6.

When we estimate the order of magnitude of a number, or find the nearest order of magnitude we simply use the base 10 logarithm of a number rounded to the nearest integer (not just rounded down).

We can intuitively do this by representing the number in scientific notation, and looking at the non-exponent value. If this value is greater than or equal to $\sqrt{10} \approx 3.1623$, then the logarithm has a decimal part greater than or equal to 0.5, and we round up - the order of magnitude is the exponent in the number plus 1. Otherwise, the order of magnitude is simply the exponent.

For example, $3.2 \times 10^3$ has an order of magnitude of 4, while $3.1 \times 10^3$ has an order of magnitude of 3.

This is because $\log \sqrt{10} = 0.5$, and 0.5 is the threshold for rounding up.

# 5/1/14

Kinematics
----------

Kinematics is the study of the motion of objects - positions, velocities, accelerations, etc. Dynamics is the study of a broader range of physical phenomena like motions, forces, and materials.

Motion occurs in 1, 2, and 3 dimensions. Actually, it all occurs in 3 dimensions, but sometimes it is constrained in such a way as to be able to pretend it is occurring in 1 or 2 dimensions.

One dimensional motion is motion along a straight line. In a lot of cases, we can generalize 1D kinematic concepts into 2 and 3 dimensions, by treating the components of vectors separately as 1D kinematic systems. When we do this, the individual systems are all tied together by a common variable, time.

In order to describe motion, we need:

* Coordinate systems.
    * This is the convention by which we define the location of a point.
    * All coordinate systems need to have an **origin**, a set of **axes** by which we measure the location of a point, and units for each axes.
    * Examples include polar and Cartesian.
* Position/displacement/distance.
    * Position is simply an offset from the origin in a coordinate system.
    * Positions ($\vec{x}$) are therefore always relative to the origin.
    * Displacements ($\Delta \vec{x}$) are a change in position - from $x_i$ to $x_f$ (initial $x$ to final $f$). $\Delta \vec{x} - \vec{x}_f - \vec{x}_i$.
    * Distance $d$ is **not always the magnitude of displacement**.
    * Distance is the **total distance travelled**. If we travel to a point and then back to where we started, the displacement is 0, but the distance is twice the distance from the starting point to the destination.
* Velocity/speed - average and instantaneous.
    * Velocity is the rate of change in displacement with respect to time.
    * The average velocity is $\vec{v}_{av} = \frac{\Delta \vec{x}}{\Delta t} = \frac{\vec{v}_i + \vec{v}_f}{2}$. Often, the initial time will be 0, so $\Delta t = t$ and we just write $t$.
    * Speed is the rate of change in distance with respect to time. It is **not always the magnitude of velocity**.
    * When we say velocity/speed, we usually mean instantaneous velocity/speed.
    * Instantaneous velocity is the velocity at a moment in time: $\vec{v} = \lim_{\Delta t \to 0} \frac{\Delta \vec{x}}{\Delta t} = \lim_{t_f \to t_i} \frac{\Delta \vec{x}(t_f) - \vec{x}(t_i)}{t_f - t_i} = \frac{\dee \vec{x}}{\dee t}$.
    * Instantaneous speed is simply the magnitude of the instantaneous velocity. This is because the instantaneous rate of change in distance is always the same as the magnitude of the instantaneous rate of change in displacement.
* Acceleration - average and instantaneous.
    * Acceleration is the rate of change in velocity with respect to time.
    * The average acceleration is $\vec{a}_{av} = \frac{\Delta \vec{v}}{\Delta t}$.
    * When we say acceleration, we usually mean instantaneous acceleration $\vec{a} = \frac{\dee \vec{v}}{\dee t} = \frac{\dee^2 \vec{v}}{\dee t^2}$.

The motion of an object is **completely defined** if and only if the position $\vec{x}(t)$ is known. We can use this to calculate the velocity and acceleration functions.

In 1D kinematics, we can do a position-time graph. Here, one dimension is our displacement, and time is the other. The time is represented on the x-axis.

Sometimes, we write $\bar{a}$ to represent average acceleration. The bar means "average". This works for velocity too.

In this course, we will only be using constant accelerations. That means that instantaneous acceleration is always the same as average acceleration.

Therefore, $\vec{a}(t) = \frac{\vec{v}_f - \vec{v}_i}{\Delta t}$. So $\vec{v}_f = \vec{v}_i + \vec{a}\Delta t$.

### Kinematic Equations

There are five easily derived **kinematic equations** in 1D kinematics that relate commonly used quantities to each other. These are equations where we assume $a$ is constant, and each have four of the five quantities $a, v_i, v_f, \Delta t, \Delta x$.

Using these equations, we can solve for any one of these quantities given the values of three of these quantities.

All five are listed below:

* $\vec{v}_f = \vec{v}_i + \vec{a} \Delta t$ (contains $\vec{a}, \vec{v}_f, \vec{v}_i, \Delta t$).
* $\Delta \vec{x} = \vec{v}_{av} \Delta t = \frac{1}{2}(\vec{v}_i + \vec{v}_f) \Delta t$ (contains $\vec{x}, \vec{v}_f, \vec{v}_i, \Delta t$).
* $\Delta \vec{x} = \frac{1}{2}(\vec{v}_i + \vec{v}_f) \Delta t = \frac{1}{2} \vec{v}_i \Delta t + \frac{1}{2} \vec{v}_f \Delta t = \frac{1}{2} \vec{v}_i \Delta t + \frac{1}{2} (\vec{v}_i + \vec{a} \Delta t) \Delta t = \frac{1}{2} \vec{v}_i \Delta t + \frac{1}{2} \vec{v}_i \Delta t + \frac{1}{2} \vec{a} \Delta t \Delta t = \vec{v}_i \Delta t + \frac{1}{2} \vec{a} (\Delta t)^2$ (contains $\vec{a}, \vec{v}_i, \Delta t, \Delta \vec{x}$).
* A variation on the above is $\Delta \vec{x} = (\vec{v}_f - \vec{a} \Delta t) \Delta t + \frac{1}{2} \vec{a} (\Delta t)^2 = \vec{v}_f \Delta t - \frac{1}{2} \vec{a} (\Delta t)^2$ (contains $\vec{a}, \vec{v}_f, \Delta t, \Delta \vec{x}$).
* $\vec{v_f}^2 = \vec{v_i}^2 + 2\vec{a} \Delta \vec{x}$ (contains $\vec{a}, \vec{v}_f, \vec{v}_i, \Delta \vec{x}$).

The last one needs some more proof:

$$
\begin{align}
v_{av} \Delta t &= \Delta x \\
v_{av} \frac{\Delta v}{\Delta t} \Delta t &= \frac{\Delta v}{\Delta t} \Delta x \\
v_{av} \Delta v &= a \Delta x \\
\frac{v_f + v_i}{2}(v_f - v_i) &= a \Delta x \\
(v_f + v_i)(v_f - v_i) &= 2a \Delta x \\
v_f^2 - v_i^2 &= 2a \Delta x \\
v_f^2 &= v_i^2 + 2a \Delta x \\
\end{align}
$$

# 8/2/14

### Integral Definitions

We can also write our definitions using integrals.

For example, $\vec{a} = \frac{\dee \vec{v}}{\dee t}$, assuming $\vec{a}$ is constant:

> $$
\begin{align}
\vec{a} \dee t &= \dee \vec{v} \\
\int_{t_i}^{t_f} \vec{a} \dee t &= \int_{\vec{v}_i}^{\vec{v}_f} \dee \vec{v} \\
\vec{a}\Delta t &= \vec{v}_f - \vec{v}_i \\
\vec{v}_i + \vec{a}\Delta t &= \vec{v}_f \\
\end{align}
$$

We can also do this for velocity, where $\vec{v} = \frac{\dee \vec{x}}{\dee t}$:

> $$
\begin{align}
\vec{v} \dee t &= \dee \vec{x} \\
\int_{t_i}^{t_f} \vec{v} \dee t &= \int_{\vec{x}_i}^{\vec{x}_f}\dee \vec{x} \\
\int_{t_i}^{t_f} \vec{v}_i + \vec{a}\Delta t \dee t &= \int_{\vec{x}_i}^{\vec{x}_f}\dee \vec{x} \\
\vec{v}_i\Delta t + \frac{1}{2}\vec{a}(\Delta t)^2 &= \Delta \vec{x} \\
\end{align}
$$

### Free Fall

Free fall is a type of motion when an object is affected only by the influence of gravity. Near the Earth's surface, $\vec{F}_g = m\vec{g}$, where $\vec{g}$ is around $9.8 m/s^2$ with the direction pointing toward the center of the Earth.

Using our standard frame of reference and $t_i = 0$, $a = -g, v = v_0 - gt, x = x_0 + v_0t - \frac{1}{2}gt^2$.

Is the speed at which an object hits the ground the same as the speed we threw it up at, if they are both on the same level?

> The time when the object is thrown and when it hits the ground is $t$ when $x = x_0$, or $v_0t - \frac{1}{2}gt^2 = 0 = t(v_0 - \frac{1}{2}gt)$.  
> So $t = 0$ when thrown and $t = \frac{2v_0}{g}$ when it hits the ground.  
> The velocity when thrown is $v = v_0 - gt$, so $v = v_0$, and the velocity when hitting the ground is $v = v_0 - 2v_0 = -v_0$.  
> So both speeds are the same, though in opposite directions.

2D Kinematics
-------------

In 2D, we simply apply the concepts we used in 1D kinematics, and extend them to use vectors.

In 2D, rather than using $\vec{x}$ for displacement, we now use $\vec{r}$.

When we have a 2 dimensional problem, we almost always simply break it down into two 1 dimensional problems - one for each dimension - solve the two problems, and then combine the solutions into the solution for the 2 dimensional problem.

In 2D and 3D, we use vectors to represent quantities that have a magnitude and a direction. Vectors are written as $\vec{x}$ or $\boldsymbol{x}$. When a vector is simply written as $x$, we assume this means the magnitude of the vector.

We will mostly be using vectors in Cartesian coordinates ($\vec{a} = (a_x, a_y)$), but for rotating systems, we will sometimes use polar coordinates ($\vec{a} = (r, \theta)$).

We can convert from polar to Cartesian using $a_x = r \cos \theta; a_y = r \sin \theta$, and from Cartesian to polar using $r = \magn{a}; \theta = \arctan \frac{a_y}{a_x}$.

In 3D, rather than polar coordinates, we have spherical or cylindrical coordinates.

A unit vector is a vector of length 1.

In a Cartesian coordinate system, we represent vectors in terms of coefficients of the basis vectors, $\hat{i}, \hat{j}, \hat{k}$, extending along the x, y, and z axes, respectively. They are dimensionless and have a length of 1. For example, $\vec{a} = a_x \hat{i} + a_y \hat{j}$.

### Dot Product

The basis vectors are all perpendicular. Thus, $\hat{i} \cdot \hat{j} = \hat{j} \cdot \hat{k} = \hat{k} \cdot \hat{i} = 0$.

So $A \cdot B = (A_x \hat{i} + A_y \hat{j}) \cdot (B_x \hat{i} + B_y \hat{j}) = A_x B_x \hat{i} \cdot \hat{i} + A_x B_y \hat{i} \hat{j} + A_y B_x \hat{j} \hat{i} + A_y B_y \hat{j} \hat{j} = A_x B_x + A_y B_y$.

When we square a vector, we are simply taking a dot product of it with itself: $\vec{v}^2 = \vec{v} \cdot \vec{v}$.

### Projectile Motion

An object exhibiting projectile motion has **constant horizontal velocity** and **constant vertical acceleration**.

The initial speed $v_0$ at angle $\theta$ from the vertical has be broken up into $v_x = v_0 \cos \theta$ and $v_y = v_0 \sin \theta$.

Note that we can find the maximum point of a projectile's motion by setting velocity in the y-axis to 0.

The position of $\vec{v}_a$ relative to $\vec{v}_b$ is $\vec{v}_b - \vec{v}_a$. We write this as $\vec{v}_{a, b}$

Sine law: $\frac{a}{\sin A} = \frac{b}{\sin B} = \frac{c}{\sin C}$.

Cosine law: $a^2 - b^2 + c^2 - 2bc \cos A$

### Uniform Circular Motion

An object exhibiting uniform circular motion is moving in a **circular path of constant radius** at a **constant speed** The **tangential velocity** is the velocity at the tangent of the circle.

Since the tangential velocity is always perpendicular to the radius, any rotation has two similar triangles formed from the rotated radius, and the rotated velocity.

Therefore, $\frac{\magn{\Delta \vec{r}}}{\magn{r}} = \frac{\magn{\Delta \vec{v}}}{\magn{\vec{v}}}$.

Since the average acceleration magnitude is $\frac{\Delta v}{\Delta t}$, and $\frac{\magn{\Delta \vec{r}}}{\magn{r}} v = \magn{\Delta \vec{v}}$, $\magn{\vec{a}} = \frac{v \magn{\Delta \vec{r}}}{r \Delta t}$.

As $\Delta t \to 0$, the magnitude of the displacement approaches the distance (distance is along the arc line, while the displacement is along a straight line). If $\delta s$ is the change in the distance (along the arc), then $\frac{\magn{\Delta \vec{r}}}{\Delta t} \to \frac{\magn{\Delta \vec{s}}}{\Delta t}$ as $\Delta t \to 0$.

Since $\frac{\magn{\Delta \vec{s}}}{\Delta t} = v$, as $\Delta t \to 0$, $\magn{\vec{a}} = \frac{v \magn{\Delta \vec{r}}}{r \Delta t} = \frac{v^2}}{r}$.

The direction of the acceleration is the same as the direction of the change in velocity: $\hat{a} = \hat{\Delta \vec{v}}$.

So as $\Delta t \to 0$, $\Delta \vec{v}$ and $\vec{a}$ becomes perpendicular to the direction of motion, and lies along $\vec{r}$. Because it is toward the center, we call it centripetal ("center-seeking") acceleration.

Basically, the centripetal acceleration is $\magn{\vec{a}} = \frac{v^2}{r}$.

The **period** is the amount of time taken for the object to complete one revolution around the circle. The period is $\frac{d}{v} = \frac{2\pi r}{v}$.

The **frequency** is the number of trips the object makes around the path in a given amount of time. The frequency is the reciprocal of the period.

If the speed is not constant (non-uniform circular motion), the centripetal force is still $\magn{\vec{a}} = \frac{v^2}{r}$, but there is also an element of acceleration along the direction of motion. This tangential acceleration is $\magn{\vec{a}} = \frac{\dee v}{\dee t}$.

Dynamics
--------

In kinematics we learned how to describe the motion of an object. In dynamics we will now learn about what causes the motion.

Isaac Newton (and independently Leibniz) discovered three laws governing the relationship between forces applied to an object and the resulting motion of the object. These laws form the basis of classical mechanics and allow us to explain the motion of objects.

### Frames of Reference

A **reference frame** is a combination of a measure of space, and a measure of time - it is the combination of a coordinate system and a time measurement system.

All motion (position, velocity, acceleration, etc.) is always described in terms of a reference frame.

Reference frames can be **attached** to objects, which simply means that the coordinate system has its origin at the location of the object.

An **inertial reference frame** is one where a point object at a fixed position in the reference frame would not have any net forces applied to it. In other words, if we were to hold an accelerometer in place, it would not detect any acceleration.

As a result, the reference frame attached to an isolated (not interacting with other objects - no acting net force) point object (we use point objects to be able to ignore rotational effects) is always inertial.

Any reference frame moving at a constant velocity with respect to an inertial reference frame is also an inertial reference frame.

For example, Earth is a non-inertial reference frame because it is orbiting around the sun, and so there is centripetal acceleration - a very sensitive accelerometer would be able to detect it. However, these accelerations are so small, compared to acceleration from Earth's gravity, that they are considered negligible. We say a reference frame based on the Earth is approximately inertial.

Generally, we simply treat the Earth as an inertial reference frame, ignoring the effects of gravity.

For example, an accelerating car or elevator is a non-inertial reference frame - an accelerometer fixed to the car would read an acceleration.

### Net Force

Net force is the vector sum of all the forces acting on an object.

First Law of Motion
-------------------

Force causes a **change** in motion. If there is no net force on an object, there is no change in the motion.

Note that this applies to the change in the motion, not the motion itself - the object could have a constant velocity without having any net force acting on it.

Imagine an isolated point object. In these conditions, the object can only be at rest (no velocity) or have a constant velocity.

**Uniform motion** is when the velocity is 0, or constant. Uniform motion is the natural state of an object - when no forces are being applied to it.

The first law is then stated thusly:

> In an inertial reference frame, a body in uniform motion remains in uniform motion if and only if there are no net forces acting on it.  

In other words, if and only if the velocity is constant, the net force is 0.

### Inertia

The first law is also called the **law of inertia**. In order to change the motion of an object, we need to apply a force.

The resistance an object has to its motion changing is called **inertia**. The more inertia, the slower the motion of an object changes when we apply a force to it - **inertia is quantified by mass**.

### Mathematical Model

When we push two objects of different mass, we observe that the objects have different accelerations. We observe that acceleration is proportional to force, for a fixed mass. We also observe that mass, is inversely proportional to acceleration, for a fixed force.

Therefore, we write $\vec{a} = \frac{\vec{F}}{m}$, or $\vec{F} = m\vec{a}$.

If we choose one object as the "mass standard" and assign it a unit of exactly $1 kg$, we can then quantify mass (resistance to acceleration). We can then measure the mass of all other objects against this standard. Mass is a scalar quantity - the resistance to acceleration is always the same regardless of direction.

Likewise, the unit force can be chosen arbitrarily to be the amount such that this mass standard accelerates at $1 m/s^2$ when the force is applied to it.

So if we have two objects of differing mass in space, pushed apart by a spring, they both have the same force applied to them, yet the acceleration of each is different. In fact, $m_1 a_1 = m_2 a_2$, and so $a_1 = \frac{m_2}{m_1} a_2$.

In the imperial system, mass is measured using slugs, where 1 slug is $\frac{1 lb}{1 ft/s^2}$. $lb$ (pounds) is a measure of weight. A $1 kg$ mass weighs about $2.2 lb$ near the Earth's surface.

### Weight

When we informally say something weighs $x$, we actually mean that its mass is $x$. Mass is a property of the object, and weight is simply the force exerted by gravity on the object. Weight is denoted $F_g$.

In general, the force exerted by gravity is given by the equation $F_g = G\frac{m_1 m_2}{d^2}$, where $G \approx 6.67 \times 10^{-11} m^3 / (kg s)$ (universal gravitational constant), $m_1, m_2$ are the masses of the objects, and $d$ is the distance between the center of masses of the objects.

Near the Earth's surface, $G\frac{m_1}{d^2} \approx g$ since $d$ is the radius of the Earth and $m_1$ is the mass of the Earth. So this simplifies to $F_g = mg$.

To convert between weight and mass, we simply use the formula $F_g = mg$.