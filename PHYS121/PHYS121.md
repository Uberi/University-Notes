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

It is also often helpful to add in what will intuitively happen, perhaps to the diagram or in the text.

### Classical Physics

Classical mechanics is physics before the 1900s. It describes the motion of macroscopic objects - objects that work on the human scale.

We consider objects like point masses (particles), where the location of the particle is at the center of mass of the object.

We derive the kinematic laws of conservation from this.

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
> So $F \propto A^w v^x \rho^y$, where $w, x, y$ are unknown.  
> We can figure out the powers using dimensional analysis.  
> Clearly, $F = ma = ML/T^2$, and $A^w v^x \rho^y = L^{2w} (L^x/T^x) M^y/L^{3y} = L^{2w + x} M^y / (L^{3y} T^x) = L^{2w + x - 3y} M^y / T^x$.  
> So $1 = y, 1 = 2w + x - 3y, 2 = x$.  
> Solving for the variables, we get $w = 1, x = 2, y = 1$ as the only solution.  
> So $F \propto A v^2 \rho$.
> We have now found a law for drag force on an object moving through a fluid, all other factors held constant.  
> Note that this is just a proportionality, not an equation. We can call the constant of proportionality the "drag coefficient".  
> We could determine the drag coefficient experimentally for particular objects (or through the hydrodynamic equations), but not through dimensional analysis.  
> This shows that we can derive basic physical relationships using just dimensional analysis.  

Remember that litres is not an SI unit. There are 1000 litres to the cubic meter (which is an SI unit).

Also, trigonometric functions accept only radians or ratios of lengths for the inverse functions (both unitless).

Exponential functions accept only unitless values as well.

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

Note the ambiguous case for numbers like 10000. We can disambiguate the number of significant digits available by using scientific notation - 10000 can be represented as $1 \times 10^4$, $1.0 \times 10^4$, $1.00 \times 10^4$, $1.000 \times 10^4$, or $1.0000 \times 10^4$, with 1, 2, 3, 4, or 5 significant digits, respectively.

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
* $\Delta \vec{x} = \vec{v}_{av} \Delta t
= \frac{1}{2}(\vec{v}_i + \vec{v}_f) \Delta t$ (contains $\vec{x}, \vec{v}_f, \vec{v}_i, \Delta t$).
* $\Delta \vec{x} = \frac{1}{2}(\vec{v}_i + \vec{v}_f) \Delta t = \frac{1}{2} \vec{v}_i \Delta t + \frac{1}{2} \vec{v}_f \Delta t = \frac{1}{2} \vec{v}_i \Delta t + \frac{1}{2} (\vec{v}_i + \vec{a} \Delta t) \Delta t = \frac{1}{2} \vec{v}_i \Delta t + \frac{1}{2} \vec{v}_i \Delta t + \frac{1}{2} \vec{a} \Delta t \Delta t
= \vec{v}_i \Delta t + \frac{1}{2} \vec{a} (\Delta t)^2$ (contains $\vec{a}, \vec{v}_i, \Delta t, \Delta \vec{x}$).
* A variation on the above is $\Delta \vec{x} = (\vec{v}_f - \vec{a} \Delta t) \Delta t + \frac{1}{2} \vec{a} (\Delta t)^2
= \vec{v}_f \Delta t - \frac{1}{2} \vec{a} (\Delta t)^2$ (contains $\vec{a}, \vec{v}_f, \Delta t, \Delta \vec{x}$).
* $v_f^2 = v_i^2 + 2\vec{a} \cdot \Delta \vec{x}$ (contains $\vec{a}, \vec{v}_f, \vec{v}_i, \Delta \vec{x}$).

The last one needs some more proof:

$$
\begin{align}
\vec{v}_{av} \Delta t &= \Delta \vec{x} \\
\vec{v}_{av} \cdot \frac{\Delta \vec{v}}{\Delta t} \Delta t &= \frac{\Delta \vec{v}}{\Delta t} \cdot \Delta \vec{x} \\
\vec{v}_{av} \Delta \vec{v} &= \vec{a} \cdot \Delta \vec{x} \\
\frac{\vec{v}_f + \vec{v}_i}{2} \cdot (\vec{v}_f - \vec{v}_i) &= \vec{a} \cdot \Delta \vec{x} \\
(\vec{v}_f + \vec{v}_i) \cdot (\vec{v}_f - \vec{v}_i) &= 2\vec{a} \cdot \Delta \vec{x} \\
\magn{\vec{v}_f}^2 - \magn{\vec{v}_i}^2 &= 2\vec{a} \cdot \Delta \vec{x} \\
v_f^2 &= v_i^2 + 2\vec{a} \cdot \Delta \vec{x} \\
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

Since $\frac{\magn{\Delta \vec{s}}}{\Delta t} = v$, as $\Delta t \to 0$, $\magn{\vec{a}} = \frac{v \magn{\Delta \vec{r}}}{r \Delta t} = \frac{v^2}{r}$.

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

We write it as $\\vec{F}_{net} = \sum \vec{F}$.

First Law of Motion
-------------------

Force causes a **change** in motion. If there is no net force on an object, there is no change in the motion.

Note that this applies to the change in the motion, not the motion itself - the object could have a constant velocity without having any net force acting on it.

Imagine an isolated point object. In these conditions, the object can only be at rest (no velocity) or have a constant velocity.

**Uniform motion** is when the velocity is 0, or constant. Uniform motion is the natural state of an object - when no forces are being applied to it.

The first law is then stated thusly:

> In an inertial reference frame, a body in uniform motion remains in uniform motion if and only if there are no net forces acting on it.  
> In other words, $\vec{F}_{net} = \vec{0} \implies \vec{a} = \vec{0}$.  

In other words, if and only if the velocity is constant, the net force is 0.

Also, the net force on an object is the sum of all the forces acting on the object. In other words, $\vec{F}_{net} = \sum \vec{F} = \vec{F}_1 + \ldots + \vec{F}_n$

### Inertia

The first law is also called the **law of inertia**. In order to change the motion of an object, we need to apply a force.

The resistance an object has to its motion changing is called **inertia**. The more inertia, the slower the motion of an object changes when we apply a force to it - **inertia is quantified by mass**.

### Weight

When we informally say something weighs $x$, we actually mean that its mass is $x$. Mass is a property of the object, and weight is simply the force exerted by gravity on the object. Weight is denoted $F_g$.

In general, the force exerted by gravity is given by the equation $F_g = G\frac{m_1 m_2}{d^2}$, where $G \approx 6.67 \times 10^{-11} m^3 / (kg s)$ (universal gravitational constant), $m_1, m_2$ are the masses of the objects, and $d$ is the distance between the center of masses of the objects.

Near the Earth's surface, $G\frac{m_1}{d^2} \approx g$ since $d$ is the radius of the Earth and $m_1$ is the mass of the Earth. So this simplifies to $F_g = mg$.

To convert between weight and mass, we simply use the formula $F_g = mg$.

The variable $\vec{W}$ is also occasionally used to represent weight, or the force of gravity.

### Mathematical Model

If $\vec{F}_{net} = \vec{0}$, then $\vec{a} = \frac{\dee \vec{v}}{\dee t} = \vec{0}$.

# 18/2/14

Second Law of Motion
--------------------

**Momentum** is a property of matter, like inertia. It is defined as $\vec{p} = m\vec{v}$ - mass times velocity. However, this is not the only definition of momentum - photons are massless yet still have momentum.

The rate of change in an object's momentum is the net force acting on the body. In other words, $\frac{\dee p}{\dee t} = \vec{F}_{net}$.

An example of mass changing is a train car driving underneath a hopper that loads the car with cargo.

The second law of motion is then stated thusly:

> In an inertial reference frame, the rate of change in an object's momentum is the net force acting on the body.
> Formally, $\vec{F} = m\vec{a}$.  

### Mathematical Model

When we push two objects of different mass, we observe that the objects have different accelerations. We observe that acceleration is proportional to force, for a fixed mass. We also observe that mass, is inversely proportional to acceleration, for a fixed force.

Therefore, we write $\vec{a} = \frac{\vec{F}}{m}$, or $\vec{F} = m\vec{a}$.

If $m$ is constant, $\vec{F}_{net} = \frac{\dee \vec{p}}{\dee t} = m\frac{\dee \vec{v}}{\dee t} = m\vec{a}$.

If $\vec{v}$ is constant, $\vec{F}_{net} = \frac{\dee \vec{p}}{\dee t} = \vec{v} \frac{\dee m}{\dee t}$.

If we choose one object as the "mass standard" and assign it a unit of exactly $1 kg$, we can then quantify mass (resistance to acceleration). We can then measure the mass of all other objects against this standard. Mass is a scalar quantity - the resistance to acceleration is always the same regardless of direction.

Likewise, the unit force can be chosen arbitrarily to be the amount such that this mass standard accelerates at $1 m/s^2$ when the force is applied to it.

So if we have two objects of differing mass in space, pushed apart by a spring, they both have the same force applied to them, yet the acceleration of each is different. In fact, $m_1 a_1 = m_2 a_2$, and so $a_1 = \frac{m_2}{m_1} a_2$.

In the imperial system, mass is measured using slugs, where 1 slug is $\frac{1 lb}{1 ft/s^2}$. $lb$ (pounds) is a measure of weight. A $1 kg$ mass weighs about $2.2 lb$ near the Earth's surface.

Third Law of Motion
-------------------

All forces act on at least two objects. Therefore, if there is only one object there can be no forces.

When two objects interact, the force exerted by object 1 on object 2 is equal in magnitude but opposite in direction to the force exerted by object 2 on object 1.

These pairs of equal forces are called **action/reaction** forces. Each force acts on a different object, but they always balance out.

In other words, the force exerted on an object A by an object B is equal but opposite to the force exerted by B on A.

THe third law can then be stated thusly:

> In an inertial reference frame, every action force has an equal but opposite reaction force.  
> In other words, $\vec{F}_{12} = -\vec{F}_{21}$.  

### Mathematical Model

Ifobject 1 interacts with object 2, and $\vec{F}_{12}$ is the force exerted by object 1 on object 2, and $\vec{F}_{21}$ is the force exerted by object 2 on object 1, then $\vec{F}_{12} = -\vec{F}_{21}$.

In other words, $\vec{F}_{12} + \vec{F}_{21} = 0$.

$\vec{F}_{ij}$ represents the force exerted by object $i$ on object $j$.

For 3 objects interacting, $\vec{F}_{12} + \vec{f}_{13} + \vec{F}_{21} + \vec{F}_{23} + \vec{F}_{31} + \vec{F}_{32} = \vec{0}$

If objects $1, \ldots, n$ interact, then $\sum_{i = 1}^n \sum_{j = 1}^n \vec{F}_{ij} = \vec{0}$, where $\vec{F}_{kk} = 0$ for $1 \le k \le n$.

### Free Body Diagrams

Free body diagrams (FBDs) are diagrams that we use to keep track of all the forces acting on an object in 2D.

We basically follow these steps:

1. Draw a box and label it with the mass.
2. Draw arrows leading out of the box in the direction of the force, optionally with length proportional to the magnitude.
3. Label the arrows with the forces.

For example, a box on a table has the force of gravity pointing down and and normal force from the table pointing up. The table has an applied force pointing down from the weight of the box on it, the force of gravity pointing down, and the normal force from the ground pointing up.

The normal force on an object at rest is always 

We can use an FBD to determine the net force on an object. We simply need to calculate the values of each individual force and add them up.

Fundamental Forces
------------------

There are four known types of forces that occur in nature. Below, they are ordered from strongest ot weakest.

When we study dynamics, we study the influence objects have on each other. When a box collides with another, it is actually electromagnetic forces that keep them from intersecting one another. A rope exerts tensional forces because of electromagnetic forces holding the molecular bonds together.

In fact, most of the macroscopic phenomena we study is the result of electromagnetic forces, and sometimes gravitational forces.

### Strong Interaction

Force keeping the nucleus together in atoms, localized to within the nucleus. It keeps atoms stable and allows matter to exist.

The exact laws and constants governing this force are currently unknown.

About 38 orders of magnitude stronger than gravity.

### Weak Interation

Interaction pulling the nucleus apart in atoms, localized to within the nucleus. It is the cause of radioactive decay.

The exact laws and constants governing this force are currently unknown.

About 36 orders of magnitude stronger than gravity.

### Electromagnetism

Interaction affecting many types of particles, including at the macroscopic scale. Works at infinite ranges. It is responsible for everything from electromagnetic radiation to electricity.

The electromagnetic force is governed by Coulomb's law: $\magn{\vec{F}_{em}} = k_e \frac{q_1 q_2}{r^2}$, where $\magn{\vec{F}_{em}}$ is the magnitude of the electromagnetic force between two point charges, $k_e \approxeq 8.988 \times 10^9 Nm^2/C^2$ is Coulomb's constant, $q_1, q_2$ are the values of the charges in $C$ (Coulombs), and $r$ is the distance between the two charges. The direction of the force is toward each other if one is positive and the other negative, or away from each other if they have the same sign.

About 25 orders of magnitude stronger than gravity.

### Gravity

Interaction affecting all marticles with mass, including at the macroscopic scale. Works at infinite ranges. It is responsible for phenomena like planet and galaxy formation.

The gravitational force is governed by Newton's law of gravitation: $\magn{\vec{F}_g} = G\frac{m_1 m_2}{r^2}$, where $\magn{\vec{F}_g}$ is the magnitude of the gravitational force between the two point masses, $G \approxeq 6.67 \times 10^{-11} m^3 / (kg s)$ is the universal gravitational constant, $m_1, m_2$ are the masses in $kg$, and $r$ is the distance between the two point masses. The direction of the force is always toward each other.

Contact/Normal Forces
---------------------

**Contact forces** are the forces between two rigid objects that are in contact with one another.

**Normal forces** (denoted $\vec{F}_N$ or $\vec{N}$) are the components of the contact forces that are along the normal. It is basically a projection of the contact force along the normal to an object's surface.

For example, friction is a contact force, but since it is perpendicular to the normal, it is not included in normal force.

### Block Pushing

A 2kg block and a 5kg block are floating in space beside each other, and there is an applied force of $10N \text{ [rightward]}$. Find the normal forces in the system:

            ----------- -----------
    10N --> | A (2kg) | | B (5kg) |
            ----------- -----------

First, we draw FBDs for each object:

                                     -----------
    (REACTION FORCE $\vec{F}_r$) <-- | A (2kg) | --> 10N
                                     -----------

So $\sum \vec{F}_A = 10N + \vec{F}_r$.

    ------------
    | B (10kg) | --> (ACTION FORCE $\vec{F}_a$)
    ------------

So $\sum \vec{F}_B = \vec{F}_a$.

We know that $\sum \vec{F}_A = 10 \text{ [rightward]} + \vec{F}_r = m_A\vec{a}_A = 2\vec{a}_A$

We know that $\sum \vec{F}_B = \vec{F}_a = m_B\vec{a}_B = 5\vec{a}_B$.

From the third law, we know that $\vec{F}_r = -\vec{F}_a$.

We also observe that since the boxes are in contact, they both have the same acceleration. So $\vec{a}_A = \vec{a}_B$.

So $2\vec{a}_A = 10 + \vec{F}_r = 10 \text{ [rightward]} - \vec{F}_a = 10 \text{ [rightward]} - 5\vec{a}_B = 10 \text{ [rightward]} - 5\vec{a}_A$.

Solving, we get $\vec{a} = \frac{10}{7} \text{ [rightward]}$.

So $\vec{F}_a = 5\vec{a}_B = 5\vec{a}_A = \frac{50}{7} \text{ [rightward]}$ and $\vec{F}_r = \frac{50}{7} \text{ [leftward]}$.

The net force on A is $10 \text{ [rightward]} + \vec{F}_r = \frac{20}{7} \text{ [rightward]}$, and the net force on $B$ is $\frac{50}{7} \text{ [rightward]}$.

### Ramp Block

A 1kg block slides down a frictionless a ramp at angle $\theta$. What is the normal force acting on the block?

    |\  /\
    | \/  \
    |  \  /
    |   \/
    |    \
    ------

First, we draw an FBD:

          $\vec{N}$
             ^
          | /
          |/<-- $\theta$
    -------
    | 1kg |
    -------
       |
       v
    $\vec{F}_g$

(we ignore the effects of friction for now)

So $\sum \vec{F} = \vec{F}_g + \vec{N} = mg \text{ [downward]} + \vec{N}$.

We observe that the net force along the normal of the ramp must be 0, since the block is sliding down the ramp.

So we use a coordinate system rotated at angle $\theta$ in order to simplify calculations. With the normal $\vec{n}$, we observe that $\vec{N} + \proj_{\vec{n}} \vec{F}_g = \vec{0}$.

Since $\vec{F}_g$ has a downward direction, $\proj_{\vec{n}} \vec{F}_g = \vec{F}_g \cos \theta = mg \cos \theta \text{ [along the normal]}$.

So $N - mg \cos \theta = 0$ and $N = mg \cos \theta$.

Tension
-------

Tension forces are those exerted by a rope, string, chain, or similar. We assume tension forces can only pull, and never push. We usually also assume that there is no stretching and that the rope has no mass.

Tensional forces also obey the third law of motion - every tug on a rope also has an equal but opposite reaction tug from the object on the other end.

Tensional forces can also be applied by rods, which are also capable of pushing as well as pulling.

### Pulleys

We often assume that a pulley is massless, and it can rotate with no friction at all. As a result, in systems of ropes passed through pulleys, pulleys simply change the direction of tension forces, keeping the magnitude the same.

The system below is known as **Atwood's machine**:

       ---
      /(*)\ <-- pulley
      |   |
      |   | <-- rope
     1kg 2kg

The force on the axle of the pulley is the sum of the tensions on both sides of the rope. This is why pulleys provide a mechanical advantage.

If the pulley has infinite mass, then it cannot rotate. As a result, the tension on both sides is as if the rope is anchored to the pulley. On the left, there is a tensional force of $1kg \vec{g}$, and on the right, $2kg \vec{g}$.

If the pulley is massless (has a mass of 0), then the tension on both sides is distributed equally between the two sides. The tension is not the average of the tensions, since the masses will also be accelerating.

If the pulley has a mass in between these extremes, the tension will be distributed unequally between the two sides. This can be determined by applying rotational dynamics, covered later.

We will assume the pulley is massless and then solve for the tension forces.

First, we draw FBDs for each mass:

      $\vec{T}$
         ^
         |
    -----------
    | A (1kg) |
    -----------
         |
         v
      $\vec{F}_g$


So $\sum \vec{F}_A = \vec{T} + \vec{F}_g = \vec{T}_A + m_A\vec{g} = m_A\vec{a}_A$.

      $\vec{T}$
         ^
         |
    -----------
    | B (2kg) |
    -----------
         |
         v
      $\vec{F}_g$

So $\sum \vec{F}_B = \vec{T} + \vec{F}_g = \vec{T}_B + m_B\vec{g} = m_B\vec{a}_B$.

Since the pulley is massless, $\vec{T}_A = \vec{T}_B$.

Since the masses are connected by a rope, $\vec{a}_A = -\vec{a}_B$.

So now we know $m_A, m_B, \vec{g}$, and we want to find $\vec{a}_A, \vec{T}_A$.

Subtracting the two equations, we get $\vec{T}_A + m_A\vec{g} - \vec{T}_B - m_B\vec{g} = m_A\vec{a}_A - m_B\vec{a}_B$, which is $\vec{T}_A - \vec{T}_B - (m_B - m_A)\vec{g} = (m_A + m_B)\vec{a}_A$, or $(m_A - m_B)\vec{g} = (m_A + m_B)\vec{a}_A$.

So $\frac{m_A - m_B}{m_A + m_B}\vec{g} = \vec{a}_A = -\frac{1}{3}\vec{g}$.

So $\vec{T}_A = m_A\vec{a}_A - m_A\vec{g} = -\frac{1}{3}\vec{g} - \vec{g} = -\frac{4}{3}\vec{g} \approxeq 13.067 \text{ [upward]}$.

Cetripetal/Centrifugal Forces
-----------------------------

**Centrifugal force** are **fictitious forces** (not real forces) that occur only in non-inertial reference frames. We will not be dealing with non-inertial reference frames in this course, so we will also not be dealing with centrifugal forces. When an object travels along a curve, the inertia of an object causes it to resist curving its path, the centrifugal force points outwards.

**Centripetal force** (center-seeking force) is the real force that counteracts centrifugal force and keeps the object travelling in a curve.

For example, on a swing set, the centripetal force is the tension force from the chain connecting the seat and the frame.

For example, for a planet orbiting a star, the centripetal force is the gravitational force exerted by the star.

When we use the reference frame of an object travelling in a curve, Newton's laws of motion do not apply because the reference frame is non-inertial.

In uniform circular motion, recall that the centripetal force is $\vec{F}_c = m\frac{v^2}{r} \text{ [outwards]}$.

If the tangential velocity at the edge of a spinning wheel of radius $r$ is $\vec{v}$, $v = s2\pi r$, where $s$ is the rate of rotation.

Gravitational Forces
--------------------

Gravitatonal force is exerted by all objects with mass. Usually, at an everyday scale, the masses are so small as for the gravitational force to be negligible, so we don't consider them.

At a planetary scale and above, though, gravity becomes significant. For example, everything on Earth is affected by the Earth's gravity, which can be approximated by $\vec{g}$ near the surface.

When an object is in the Earth's gravitational field, it has a downward force exerted on it by the Earth. At the same time, there is an upward force applied to the Earth, but the Earth is so massive that this force is negligible.

The constant $\vec{g}$ was determined in this way. $\vec{F}_g = mg = mG\frac{M}{r^2}$. If we set $r = r_E$ (average radius of the Earth - sea level) and $M = M_E$ (mass of the Earth), we get $\vec{F}_g = mg = mG\frac{M_E}{r_E^2}$. So $g = G\frac{M_E}{r_E^2} \approxeq m 6.67 \times 10^{-11} Nm^2/kg^2 \frac{5.9721986 \times 10^{24} kg}{6371000 m^2} \approxeq m9.81397314206351 N/kg$. So $\vec{g} \approxeq 9.81397314206351 N/kg \text{ [downward]}$.

In practice, we use $9.8 N/kg = 9.8 m/s^2$, which is more suited for North America.

On Mars, the acceleration due to gravity would be $G\frac{M_M}{r_M^2} = 3.7 m/s^2$.

The **apparent weight** of an object is the weight an object actually experiences. For example, the apparent weight of an object in free fall in a vacuum is $\vec{0} N$, since the reference frame is accelerating at $\vec{g}$, so the net force in this reference frame is $\vec{0} N$. This applies to forces only in the vertical axis - if the object is accelerating sideways, this does not affect the apparent weight.

Acceleration of the reference frame is added to all $\vec{a}$ in $\vec{F} = m\vec{a}$. In other words, $\vec{F} = m(\vec{a}_{frame} + \vec{a}_{object})$.

Hooke's Law
-----------

> A spring exerts a force opposite in direction to its dispacement proportional to the magnitude of its displacement.  
> In other words, $F_s = -k\Delta x$, where $\vec{F}_s$ is the spring force, $k$ is the spring constant (in $N/m$), and $x$ is the distance from the rest position.  

The displacement of a spring is the distance it has been stretched or compressed from its rest position.

This law describes the behavior of **ideal springs** - springs that have no friction or mass, or any other undesired properties. I reject your reality, and subsitutute my own.

The direction of the force is always toward the rest position of the spring.

Springs also obey Newton's third law. If we compress a spring with force $\vec{F}_a$, it pushes back with force $\vec{F}_s = -\vec{F}_a$

Frictional Forces
-----------------

Frictional forces are a type of contact force. It is always perpendicular to the normal force.

Frictional force is the force that resists sliding of two surfaces across each other when they are in contact. Therefore, the direction of frictional force exerted on one of a pair of objects is always the opposite of the motion or attempted motion of the object relative to the other object.

We divide friction into two types, static and kinetic, because most materials result in higher amounts of static friction than kinetic friction.

Frictional forces are usually denoted with $\vec{F}_f$.

### Static Friction

Static friction is the frictional force between two objects that are **not moving relative to each other**. It is often denoted $\vec{F}_s$ or $f_s$.

This force balances out all the other forces attempting to move the objects relative to each other.

An example is a heavy cardboard box on a wooden surface. If we push on it lightly, it stays in place. This is because of static friction exactly balancing out the pushing force, meaning there is no net force and the box does not move.

The **coefficient of static friction** is denoted $\mu_s$. It is the ratio of static friction to the normal force, and is dimensionless and dependent on the material properties of both surfaces. This is often determined through experiment.

Static frictional force is governed by the equation $\magn{\vec{F}_s} \le \mu_s \magn{\vec{N}}$, where $\vec{N}$ is the normal force exerted on the object by the other object. The direction is the opposite of the applied force acting on the object relative to the other object. In other words, it is opposite to the direction the object would move in if not for this force.

We also write $\magn{\vec{F}_{s, \mathrm{max}}} = \mu_s \magn{\vec{N}}$. This is the largest possible force that can be applied to the object before static friction is overcome and the object will start moving.

The magnitude of static frictional force is exactly equal to the applied force up until the point $\magn{\vec{F}_{s, \mathrm{max}}}$, after which the object starts moving and static friction is no longer applicable.

This force is usually greater in magnitude than kinetic friction.

### Kinetic Friction

Kinetic friction is the frictional force between two objects that are **moving relative to each other**. It is often denoted $\vec{F}_k$ or $f_k$.

This force reduces the other forces attempting to move objects relative to each other.

An example is pushing a heavy cardboard box on a wooden surface. Initially it resists pushing, but after we first overcome the friction it moves relatively easily. In fact, we can apply less force than we used to start it moving, and it will still continue to move.

The **coefficient of kinetic friction** is denoted $\mu_k$. It is the ratio of kinetic friction to the normal force, and is dimensionless and dependent on the material properties of both surfaces. This is often determined through experiment.

Kinetic frictional force is governed the the equation $\magn{\vec{F}_k} = \mu_k \magn{\vec{N}}$, where $\vec{N}$ is the normal force exerted on the object by the other object. The direction of the force is the opposite of the velocity of the object relative to the other object. In other words, $\hat{\vec{F}_k} = -\hat{\vec{v}_{\text{object}} - \vec{v}_{\text{other object}}}$.

This force is often less than static frictional force. As a result, there is a significant difference in the amount of force needed to move an object in contact with a surface when it is not moving relative to the surface, and when it is moving, even if very slowly.

This force starts applying as soon as the object starts moving, and stops applying the moment the object stops.

If we graphed frictional force for a heavy cardboard box at rest on a wooden surface as we pushed it, we would see that the force would increase as applied force increased. At a certain point, the frictional force would drop suddenly to a lower value as the object started to move. This force would stay constant until the object is again at rest.

A 1.2kg box is at rest on the ground. We know that $\mu_s = 0.61, \mu_k = 0.32$. What is the acceleration of the box just after it starts to move?

> The magnitude of the normal force is $N = F_g = mg = 1.2kg \cdot g$.  
> The applied force at which it will start to move is $F_a = F_{s, \mathrm{max}} = \mu_s N = 0.61 \cdot 1.2kg \cdot g$.  
> The kinetic friction is $\vec{F}_k = \mu_k N = 0.32 \cdot 1.2kg \cdot g$.  
> So the net force at the moment the book starts moving is $F_a - F_k = 0.61 \cdot 1.2kg \cdot g - 0.32 \cdot 1.2kg \cdot g = 0.29 \cdot 1.2kg \cdot g$.  
> So the acceleration at that moment is $a = 0.29 \cdot g$.  

### General Problem

A car of mass $m$ is travelling on a circular track with radius $r = 50m$ at speed $v$, where $\mu_s$ betwen the car and road is $\mu_s = 0.56$. How fast can the car drive just before sliding off the road?

If the car is travelling at $\frac{50}{3}m/s$ and the road is frictionless, what angle does the road need to be banked at to avoid sliding off the road?

Clearly, the centripetal force is $F_c = m\frac{v^2}{r}$. Clearly, the normal force with the road is $\vec{N} = -m\vec{g}$.

So the maximum frictional force is $F_{s, \mathrm{max}} = \mu_s mg$.

At the point where the car starts to slide off the road, $F_c = F_{s, \mathrm{max}}$. So $\frac{v^2}{r} = \mu_s g$ and $\frac{v^2}{50m} = 0.56g$.

Solving, we get $v = \sqrt{28g} \approxeq 16.5650233926789 m/s$.

Now we assume there is no friction and that the road is banked inward at angle $\theta$.

The outward fictional force is $\vec{F}_c = m\frac{v^2}{r} \text{ [outward]}$. The gravitational force is $\vec{F}_g = mg \text{ [downward]}$.

Since the car is not sliding, the normal force balances out the gravitational and outward fictional force. So $m\frac{v^2}{r} \text{ [outward]} + mg \text{ [downward]} + \vec{N} = \sum \vec{F} = \vec{0}$.

Since $\sum F_y = 0$, $N_y = mg$ and $N = \frac{mg}{\cos \theta}$. So $N_x = N \sin \theta = mg \tan \theta$.

Since $\sum F_x = 0$, $N_x = m\frac{v^2}{r} = mg \tan \theta$. So $\arctan \frac{v^2}{rg} = \theta = \arctan \frac{\frac{50}{3}^2}{50g} \approxeq 29.5486156312315^\circ$.

Conservation of Energy
----------------------

If the net force acting on an object is constant, then so is the acceleration. With constant acceleration, we can always solve for the motion of the object using the five kinematic equations.

However, if the net force varies, it is no longer possible to solve for the motion. We could use numerical methods, but if we do not need all the details, conservation principles work better.

The principle of the **conservation of energy** is a fundemental law of nature. It states that in an isolated system, **energy cannot be created or destroyed**, only changed from one form to another. In other words, the amount of energy in an isolated system must remain constant over time.

An isolated system is a system that does not interact with its surroundings. Nothing goes into or out of an isolated system. Only the universe itself is a true isolated system, but we can have systems that are nearly isolated that we can apply conservation principles to.

The most commonly encountered types of energy are:

* Kinetic energy (KE) - the energy inherent to moving objects.
* Potential energy (PE) - the energy inherent to an object's position in a field. This includes elastic, gravitational, chemical energy, and nuclear energy.
* Thermal energy - the energy inherent to the random vibration of molecules.

In this course we will mostly be considering **mechanical energy**, which is an umbrella term for kinetic and potential energy.

Most energy conversions convert at least some of the energy into thermal energy. However, in many cases the amount is negligible and we can ignore it.

Energy is the ability to do work. We denote it with $E$. If we have different types of energy, like kinetic and elastic, the total energy is simply the sum of all these different types.

The total energy in the universe must remain constant. If we consider the universe as a single system, and everything else (the environment), then $E_{universe} = E_{system} + E_{environment}$.

So $\Delta E_{universe} = \Delta E_{system} + \Delta E_{environment}$ and $\Delta E_{system} = -\Delta E_{environment}$. In other words, an increase in energy in a system must result in a decrease of energy in its surroundings, and vice versa.

Work
----

A change in energy is known as **work**. We denote this as $W = \Delta E$. So work has the same units as energy.

Work includes things like heat (thermal energy transfer across a boundary) and electromagnetic waves (transfer of electromagnetic energy). However, what we mean by work most of the time is **mechanical work**, which is a change in mechanical energy.

The definition of mechanical work is $W = \vec{F} \cdot \Delta \vec{x}$ - the dot product of the force applied to an object and the displacement of the object. This is also written as $F\delta x \cos \theta$, where $\theta$ is the angle between the directions of $\vec{F}$ and $\delta \vec{x}$. The **force must be constant** for this to make sense.

If $W$ is positive, it means emergu was put into the system. If it is negative, it means energy was taken out of the system.

Assume the force applied is constant. Then $v_f^2 = v_i^2 + 2\vec{a} \cdot \Delta \vec{x}$ (kinematic equation 5). Solving, we get $\vec{a} \cdot \Delta \vec{x} = \frac{1}{2}(v_f^2 - v_i^2)$.

So $W = \vec{F} \cdot \Delta \vec{x} = m\vec{a} \cdot \Delta x = m\frac{1}{2}(v_f^2 - v_i^2) = \frac{1}{2}mv_f^2 - \frac{1}{2}mv_i^2$.

We therefore define kinetic energy as $E_k = \frac{1}{2}mv^2$.

The unit of work and energy is the **Joule**, which we define using $mv^2$ to be $kg(m/s)^2 = Nm$ (Newton meters).

If the force is not constant (for example, a spring would have $F(\vec{x}) = -k\vec{x}$), the more general definition is $W = \int_{\vec{x}_i}^{\vec{x}_f} F(\vec{x}) \cdot \dee \vec{x}$. If it is only in one dimension, we can write it as $W = \int_{x_i}^{x_f} F(x) \dee x$.

This is called a **line integral** - an integral taken along a line in space. For example, a line integral in 2D geometrically represents the area under the 2D curve in 3D, just as the line integral in 1D geometrically represents the area under a 1D curve in 2D.

$\dee \vec{x}$ represents the infinisimal displacement, and $\dee \vec{x} = \frac{\dee \vec{x}}{\dee t} \dee t = \vec{v} \dee t$.

Note that $F(\vec{x}) \cdot \dee \vec{x} = (F(\vec{x}) \cdot \hat{\vec{v}}) \dee x$.

### In Practice

Consider the example of a spring. Here, $F(x) = -k\Delta x$, so the work done by stretching or compressing a spring is $W = \int_{x_i}^{x_f} -k x \dee x = -k\int_{x_i}^{x_f} x \dee x = \frac{1}{2}kx_i^2 - \frac{1}{2}kx_f^2$.

Note that $x_i$ and $x_f$ are the initial and final distances from the rest position of the spring, and increase as the spring stretches or compresses. The work done is negative when stretching or compressing the spring, and positive if the spring is returning to its rest position.

So the energy from stretching or compressing a spring (elastic energy) is $E_e = -\frac{1}{2}kx^2$, where $k$ is the spring constant and $x$ is the displacement from rest position.

Gravitational potential energy is similar. Since gravity only acts downwards, the work done by gravity is $W_g = \vec{F} \cdot \Delta \vec{x} = F \cdot \Delta x = -mg \Delta x$. So if the object falls downwards as gravity acts on it, then gravity has done positive work to it.

For example, a box sliding a distance $d$ down a ramp with angle $\theta$ has work done by gravitational potential energy given by $W_g = -mg \Delta y$. Since $\Delta y = -d \sin \theta$, $W_g = mgd \sin \theta$.

Normal force never does any work, since it only applies when an object is in contact with a surface, and it is perpendicular to the surface, which means it does no work on sliding, which is the only type of motion possible while maintining contact.

### Usage

Going back to the example of a box rolling down a frictionless bumpy ramp, we can now use work to analyze this system. Kinematically, it would not be possible to determine the exact motion unless we knew the exact shape of the bumps.

    ..
    ........ BUMP
    ..........
    ................ BUMP
    ...................

However, we can observe that the normal force is always perpendicular to the velocity of the box as slides down the ramp, so $\vec{N} \cdot \frac{\dee \vec{x}}{\dee t} = \vec{N} \cdot \dee \vec{x} = 0$. So $\int_{y_1}^{y_2} \vec{N} \cdot \dee \vec{x} = 0 = W_N$. In other words, the nromal force does no work on the object.

So the only work done is by gravitational potential energy in the component of the direction of motion. The work done by gravity is $W_g = \int_{y_1}^{y_2} m\vec{g} \cdot \dee \vec{y} = \int_{y_1}^{y_2} mg \cos \theta \dee y$.

### Frictional Forces

Friction is always opposite to the direction of displacement (the angle between the two is 180 degrees). Therefore, it always does negative work - it always reduces the energy.

So $W_f = \int_\vec{a}^\vec{b} \vec{F}_f \cdot \dee \vec{x} = \int_\vec{a}^\vec{b} F_f \cos 180^\circ \dee x = -\int_\vec{a}^\vec{b} F_f \dee x = -F_f x$.

Note that $x$ is the **path length** from $\vec{a}$ to $\vec{b}$, not the distance between $\vec{a}$ and $\vec{b}$. If the path is a curve, it is the length of the curve, not the line from $\vec{a}$ to $\vec{b}$.

Note that static frictional forces can do work too, if both objects the friction applies to are displaced in our reference frame.

Here, $\vec{a}$ represents the initial position, and $\vec{b}$ represents the final position. This is independent of time but the ordering matters.

### Work-Kinetic-Energy Theorem (WKE)

If an object is acted on by multiple forces, then $W_{net} = \sum W = \sum \int_\vec{a}^\vec{b} \vec{F} \cdot \dee \vec{x}$.

Since $\vec{x}$ is the same for all the different forces, $W_{net} = \int_\vec{a}^\vec{b} \left(\sum \vec{F}\right) \cdot \dee \vec{x}$.

So $W_{net} = \int_\vec{a}^\vec{b} \vec{F}_{net} \cdot \dee \vec{x}$.

$$
\begin{align}
m\int_\vec{a}^\vec{b} \vec{a} \cdot \dee \vec{x} &= m\int_\vec{a}^\vec{b} \frac{\dee \vec{v}}{\dee t} \cdot \dee \vec{x} \\
&= m\int_\vec{a}^\vec{b} \dee \vec{v} \cdot \frac{\dee \vec{x}}{\dee t} \\
&= m\int_\vec{a}^\vec{b} \vec{v} \cdot \dee \vec{v} \\
&= \frac{1}{2}m\evalat{\vec{v}^2}_{\vec{a}^\vec{b}} \\
&= \frac{1}{2}m\evalat{v^2}_{\vec{a}^\vec{b}} \\
&= \frac{1}{2}mb^2 - \frac{1}{2}ma^2 = \Delta W_K \\
\end{align}
$$

In short, the WKE theorem states that $W_{net} = W_K$ - that net work is equivalent to change in kinetic energy in a system.

So if the work done is positive, final speed is greater than initial speed, and vice versa.

A skier takes some path down a slope that is 500m high, starting at the top. What is the final speed of the skier?

> Clearly, $W_g = -mg \Delta x_y = W_K = \Delta \frac{1}{2}mv^2$.  
> So $-mg(-500 m) = \frac{1}{2}m(v_f^2 - v_i^2)$ and $-2g(-500 m) = v_f^2 - v_i^2$.  
> So $g(1000 m) + v_i^2 = v_f^2$. Clearly, $v_i = 0$ since the skier starts from rest.  
> So $v_f = \sqrt{g(1000 m)} \approxeq 98.9949493661167m/s$.  

### Power

Power is the **rate at which work is done**. It is defined as $P = \frac{\dee W}{\dee t}$, or $P = \frac{\dee (\vec{F} \cdot \vec{x})}{\dee t} = \vec{F} \cdot \frac{\dee \vec{x}}{\dee t} = \vec{F} \cdot \vec{v}$.

Average power is defined as $\frac{\Delta W}{\Delta t}$.

The unit of power is the Watt, where $1W = J/s$ (joules per second).

### Potential Energy

We often represent kinetic energy with $E_k = K$, and potential energy with $E_p = U$.

A force is **conservative** if and only if the amount of work done by the force is independent of the specific path travelled. Otherwise, it is **non-conservative**.

In other words, a conservative force is one that does the same amount of work regardless of whether an object travels from point A to B by a straight line, spiral, or semicircle. If an object travels in a circle, a conservative force will always do zero work on the object.

For example, friction is non-conservative, because if an object travels in a circle back to its original position, negative work is done. The amount of work done by friction depends on the distance travelled, not the displacement.

For example, gravitational force is conservative because as an object moves up, work is negative and stored as potential energy, and as it moves down, the potential energy is converted into kinetic energy. These two balance out and the amount of work done depends only on the displacement.

For example, force from an ideal spring is conservative because the work is negative when compressing/stretching and positive when returning to rest position, and these two balance out.

We can mathematically determine if a force is conservative by setting $\Delta \vec{x} = \vec{0}$ and $x > 0$ and checking if the work done is always 0.

To expand on a previous point, potential energy (specifically, elastic energy) is stored in a spring when we compress it. When the spring exapnds again, the potential energy is converted into kinetic energy and a negligible amount of other types of energy (like thermal energy).

The change in potential energy associated with a conservative force is the opposite of the work done by the force as it acts over any path from point A to point B. So $\Delta U_{AB} = -W_{AB}$.

So if work was done by a force and kinetic energy increases, then potential energy must decrease.

So the potential energy associated with a force is the opposite of the amount of work done by it. So the amount of potential energy stored by a spring is $U_S = \frac{1}{2}kx^2$.

### Spring-Block Systems

Consider a spring anchored at one end to a fixed point in the reference frame, and the other end anchored to a block:

    #        -------
    #/\/\/\/\| $m$ |
    #        -------

This is almost an isolated system, since is basically no interactions with its environment. So the energy in the system is constant and $\Delta E = 0$.

So $\Delta E = \Delta K + \Delta U = 0$ (total energy is kinetic plus potential energy) and $\Delta K = -\Delta U$.

In this system, all of the potential energy is that stored in the spring, and all the kinetic energy is provided by the block (since the spring is massless).

### Mechanical Energy Conservation

The basic idea is to be able to identify systems that are mechanically isolated (mechanical energy is constant), so we can convert between potential and kinetic energy.

If no external forces act on the system and all internal forces are conservative, then mechanical energy, $E = K + U$, is constant.

Since $\Delta E = \Delta K + \Delta U = 0$, then $\Delta K = -\Delta U$. Also, $W = K = -U$, where $W$ is the work done.

If there are non-conservative forces in the system, then mechanical energy is not necessarily constant. For example, friction turns kinetic energy into thermal energy.

For these systems, $W_{net} = \Delta K = W_{conserved} + W_{nonconserved}$ and $\Delta K + \Delta U = W_{nonconserved}$.

### Potential Plots

We can plot potential energy vs. time to perform qualitative analysis of physical systems. For example, the potential curve of a roller coaster looks roughly like the track itself.

We can also use a stacked area plot to show the kinetic and potential energy at the same time. For example, if we have a roller coaster and plot the kinetic and potential energy, we notice that the roller coaster car cannot move above the top line due to a lack of energy.

If the car is bounded on both sides by hills that rise above the total energy, then the car is trapped in this valley and cannot escape due to a lack of energy. Instead, it rocks back and forth between the two hills.

An **equilibrium** is a point where the potential is lowest.

The slope of the plot is the force on the object. In other words, $\frac{\dee U}{\dee t} = F$.

The x-axis doesn't necessarily have to be time. It could also be distance from a reference point, angle, or something else.

For example, a person on a swing set usually does not have enough mechanical energy to swing all the way around in a full circle. As a result, the person oscillates back and forth between maximum potential energy with zero kinetic energy at the top of each swing, and zero potential energy and maximum kinetic energy at the bottom of each swing.

However, if we were to start with enough kinetic energy, we would be able to overcome this "hill" at the top and go all the way around the swing.

# 15/3/15

Objects
-------

So far we have been working with point masses - masses that occupy only a single point in space. In the real world though, objects are made of many particles.

We model objects as a collection of particles with distinct locations and masses, and give them constraints such as having a fixed distance to other particles in order to make rigid objects.

### Linear Momentum

The linear momentum of an object is the product of its mass and its velocity. In other words, $\vec{p} = m\vec{v}$.

We can therefore write the second law of motion as $\vec{F} = m\vec{a} = \frac{\dee m\vec{v}}{\dee t} = \frac{\dee \vec{p}}{\dee t}$.

The **net momentum** is the total momentum in a system. It is denoted $\vec{P} = \sum_{i = 1}^N m_i \vec{v}_i$.

This can also represent the net momentum of an object - an object can be considered its own system.

So $\frac{\dee \vec{P}}{\dee t} = \vec{F}_{net}$ - the change in total momentum is the net force.

If an isolated system has $\vec{F}_{net} = 0$, then $\Delta \vec{P} = \vec{P}_f - \vec{P}_i = 0$ and $\vec{P}_f = \vec{P}_i$. In other words, if there is no net force, then **total linear momentum is conserved**.

Center of Mass
--------------

The center of mass (CM) of an object is the point on an object on which it balances. More importantly, if we consider the center of mass for an object, it behaves a lot like a point mass, which significantly simplifies many calculations.

Clearly, $F_{net} = \frac{\dee \vec{P}}{\dee t} = \frac{\dee}{\dee t} \sum_{i = 0}^N m_i \vec{v}_i = \frac{\dee^2}{\dee t^2} \sum_{i = 0}^N m_i \vec{x}_i$.

Let $M = \sum_{i = 0}^N m_i$. Then $F_{net} = M\vec{a}_{net} = M \frac{\dee^2}{\dee t^2} \frac{1}{M} \sum_{i = 0}^N m_i \vec{x}_i$.

Then $\vec{a}_{net} = \frac{\dee^2}{\dee t^2} \frac{1}{M} \sum_{i = 0}^N m_i \vec{x}_i$ and $\vec{x}_{CM} = \frac{1}{M} \sum_{i = 0}^N m_i \vec{x}_i$.

The location $\vec{x}_{CM}$ is the point on an object where $F_{net} = M\vec{a}$. In other words, the point where the second law of motion holds.

In the same way, we can define the velocity and acceleration of an object in terms of its center of mass. So $\vec{v}_{CM} = \frac{\dee \vec{x}_{CM}}{\dee t}$ and $\vec{a}_{CM} = \frac{\dee^2 \vec{x}_{CM}}{\dee t^2}$.

However, finding $\vec{x}_{CM}$ can be difficult, since in reality objects will have a huge number of particles, and it would be highly impractical to calculate the center of mass using the obvious way.

### Rigid Bodies

We must use some tricks to make this process easier. For example, spheres and boxes of uniform density have their center of mass at their geometric center.

In this course, we will focus on objects of uniform density that are perfectly rigid (no deformations).

When we have the center of mass for an object, we can break down its motion into translational motion of the center of mass, and the rotational motion of particles about the center of mass.

**Density** is the amount of mass given a volume. It is often represented using $\rho = \frac{m}{V}$, and has units of $kg/m^3$.

Assume that the density is constant.

Clearly, $\vec{x}_{CM} = \frac{\sum m_i \vec{x}_i}{\sum m_i} = \vec{x}_{CM} = \frac{\sum \rho_i V \vec{x}_i}{\sum \rho_i V}$ for an object made up of particles. It is useful to pretend that rigid bodies (objects that do not deform) are actually made of **infinitely many infinitely small particles**.

The center of mass in an object is the weighted average of all the positions, weighted by the mass of each position.

When we do this, we can generalize this using integrals, so $\vec{x}_{CM} = \frac{\int \vec{x}_i \dee m}{\int \dee m} = \frac{\int \rho(\vec{x}) \vec{x} \dee V}{\int \rho(\vec{x}) \dee V}$. The mass of each particle becomes $\dee m = \rho \dee V$.

Basically, we make it so that density and mass are functions of position, so $\rho(\vec{x}) = \frac{m(\vec{x})}{V}$

When we integrate with respect to volume $V$, it is known as a **volume integral**. Basically, $\int f \dee V = \iiint f(x, y, z) \dee x \dee y \dee z$.

Find the center of mass of a solid cone with height $h$ and base radius $r$:

               $h$ $x$
        /|\     <   <
       / | \    |   |
      /  |  \   |   <
     /   |   \  |
    /____|____\ <
         ^----^ $r$
         ^--^   $R$

> Since the cone is symmetric about its central axis, the center of mass must be located on this axis.  
> Let $R(x) = kx$ represent the radius at any extent $x$.  
> Since $R(h) = r$, $R(x) = \frac{r}{h}x$. Clearly, for each disk of the cone, $\dee m = \rho(x) \dee x = \rho_0 \pi R(x)^2 \dee x$.
> So $x_{CM} = \frac{\int_0^h x \dee m}{\int_0^h \dee m}
= \frac{\int_0^h x \rho_0 \pi R(x)^2 \dee x}{\int_0^h \rho_0 \pi R(x)^2 \dee x}
= \frac{\rho_0 \pi r^2}{h^2} \frac{h^2}{\rho_0 \pi r^2} \frac{\int_0^h x^3 \dee x}{\int_0^h x^2 \dee x}
= \frac{\frac{h^4}{4}}{\frac{h^3}{3}} = \frac{3}{4}h$.  

The formula for finding the center of mass for a symmetric object is $x_{CM} = \frac{\int_{x_1}^{x_2} x A(x) \dee x}{\int_{x_1}^{x_2} A(x) \dee x}$ where $x$ is the extent along the axis of symmetry and $A(x)$ is the area of the cross section at extent $x$.

# 7/4/14

Collisions
----------

Collisions are generally isolated systems. As a result, linear momentum and is conserved.

**Elastic collisions** are those where where kinetic energy is conserved. In nature, only things like electrons can do this. Bouncy balls are a close approximation of elastic collision.

**Inelastic collisions** are those where kinetic energy is not conserved - energy is converted into other forms like thermal energy or sound energy. Examples of this are car collisions and dropped eggs.

**Completely inelastic collisions** are those where the largest possible amount of kinetic energy is lost. In this case, the two objects simply stay together, rather than bounce apart, because the energy is lost.

Linear momentum being conserved means that $\sum \vec{p}_f = \sum \vec{p}_i$. Kinetic energy being conserved means that $\sum \frac{1}{2}mv_f^2 = \sum \frac{1}{2}mv_i^2$. However, the linear momentum and kinetic energy of individual objects in the system can still change.

Assume kinetic energy is conserved. Then $\frac{1}{2}m_1v_{1, f}^2 + \frac{1}{2}m_2v_{2, f}^2 = \frac{1}{2}m_1v_{1, i}^2 + \frac{1}{2}m_2v_{2, i}^2$.

So $m_1v_{1, f}^2 - m_1v_{1, i}^2 = m_2v_{2, i}^2 - m_2v_{2, f}^2$ and $m_1(v_{1, f} - v_{1, i})(v_{1, f} + v_{1, i}) = m_2(v_{2, f} - v_{2, i})(v_{2, f} + v_{2, i})$.

Since momentum is conserved, $m_1(v_{1, f} - v_{1, i}) = m_2(v_{2, f} - v_{2, i})$. So $m_1(v_{1, f} - v_{1, i})(v_{1, f} + v_{1, i}) = m_1(v_{1, f} - v_{1, i})(v_{2, f} + v_{2, i})$.

So $v_{1, f} + v_{1, i} = v_{2, f} + v_{2, i}$ if kinetic energy is conserved. Interestingly, if object 1 is moving and object 2 is stationary, then object 1 stops and object 2 starts moving with velocity proportional to the mass ratio.

A 0.05kg bullet travelling 85m/s horizintally hits a 2kg pendulum. How much energy is lost and how high does the pendulum swing?

> Clearly, the collision is perfectly inelastic since the bullet embeds itself in the pendulum. So the final speed of the two is constant.  
> Clearly, $0.05 kg \cdot 85 m/s \text{ [right]} + 2 kg \cdot 0 m/s = (0.05 kg + 2 kg) \cdot \vec{v}$, so $\frac{0.05 kg \cdot 85 m/s \text{ [right]}}{2.05 kg} = \vec{v} = 2.073170731707317 m/s \text{ [right]}$.  
> So the bullet and pendulum are moving 2.07 m/s rightward after collision.  
> Clearly, $E_g = E_k$, so $mgh = \frac{1}{2}mv^2$. So $h = \frac{\frac{1}{2}(2.073170731707317 m/s)^2}{9.8 m/s^2} = 0.219287596061625 m$.  
> So the max height of the pendulum is 0.22 m.  

### Impulses

**Impulses** are changes in momentum - force applied over time, usually on small time scales. They are represented with $\vec{J} = \Delta \vec{p} = \int \vec{F}(t) \dee t$.

For example, a tennis ball bouncing off a wall has the wall exert an impulse on it - it applies a normal force to the ball over the duration that they are colliding. Since the wall is stationary and the ball ends up travelling in the opposite direction, the impulse applies twice the momentum the ball had before impact (one times the momentum to stop the ball, one more time to make it bounce back).

Also, the third law of motion applies here, so any impulse an object applies has an equal and opposite impulse applied to it.

Impulse is measured with Newton-seconds $N s$, just like momentum. Force is the change in momentum, so $\vec{p} = \int \vec{F}(t) \dee t$ and $\frac{\dee} \vec{p}{\dee t} = F(t)$.

In collisions like bouncing a ball, the actual time the objects are colliding are very small, so the forces applied are very large. It is often simpler to treat the collisions as instantaneously transferring momentum of the object rather than as a force working over time.

The amount of impulse applied can be determined by looking at the change in the speed of an object. For example, a ball that bounces right back after hitting a wall has had applied to it 

If 100 0.05kg marbles are being poured on a scale over 5 s from 5 m up, each one bouncing off the scale after impact, then what is the average reading shown on the scale?

> Clearly, the marbles hit the scale at $100/5 s = 20/s$.  
> Clearly, $v_f^2 = (0 m/s)^2 + 2\vec{g} \cdot 1.5 m [down]$, so $v_f = \sqrt{2 \cdot 9.8 m/s^2 \cdot 1.5 m} = 5.422176684690384 m/s$, the final velocity of the marbles.  
> Since the marbles bounce off perfectly elastically, the velocity after impact is $-\vec{v}_f$ and the impulse delivered is twice the momentum of the marble.  
> So each marble delivers an impulse of $2 \cdot 0.05 kg \cdot 5.422176684690384 m/s = 0.542217668469038 kg m/s$ (the 2 is because it is twice the momentum), and the force is $20/s \cdot 0.542217668469038 kg m/s = 10.844353369380767 N$.  
> So the scale reads $\frac{10.844353369380767 N}{9.8 m/s^2} = 1.106566670344976 kg$.  

A 40 kg block and a 10 kg block at rest connected with a spring with constant $k = 10 N/m$. The 40 kg block applies an impulse of 20 N s to the other one. What is the longest distance the spring compresses?

    --------  ---> 20 Ns  --------
    | 40kg |-/\/\/\/\/\/\-| 10kg |
    --------  k = 10 N/m  --------

> Clearly, the collision is fully elastic, since it is connected by an ideal spring. So kinetic energy combined with elastic energy is conserved - $E_k + E_e$ is constant.  
> In an elastic collision, the first block must stop and the second will start moving.  
> Clearly, the spring is compressed when both blocks are moving at the same speed. Assume they are.  
> So $E_{k, \text{after}} + E_{e, \text{after}} = E_{k, \text{same speed}} + E_{e, \text{same speed}}$.  
> Clearly, $J = 20 N s = mv_{\text{same speed}}$, so $v_{\text{same speed}} = \frac{20 N s}{10 kg} = 2 m/s$, the final velocity of the 10 kg block when the collision is completely over.  
> Clearly, the final kinetic energy is $\frac{1}{2} 10 kg \cdot (2 m/s)^2 = 20 J$.  
> Clearly, if the two blocks have the same speed, then $v = \frac{20 N s}{40 kg + 10 kg} = 0.4 m/s$, the velocity of both blocks at the moment when their speeds are the same.  
> Clearly, the kinetic energy when the objects have the same speed is $\frac{1}{2} 50 kg \cdot (0.4 m/s)^2 = 4 J$.  
> So $20 J + 0 J = 4 J + E_{e, \text{same speed}}$, and $E_{e, \text{same speed}} = 16 J$.  
> Clearly, $E_{e, \text{same speed}} = 16 J = \frac{1}{2}(10 N/m)x^2$, so $x = 1.788854381999832 m$.  
> So the maximum compression of the spring is 1.79 m.  

Rotational Dynamics
-------------------

A rigid body cannot be deformed. As a result, the locations of all the particles in the object stay the same relative to each other.

Consider a point on a rotating object, $P$, rotating around a point, $\vec{C}$. In 3D, the object rotates around a line.

$P$ is in circular motion about the point/line of rotation, since the distance between the point of rotation and the point is constant. Every particle in the body is in circular motion with its own radius and velocity.

Here, $\vec{r}$ represents the displacement of $P$ from the point/line of rotation - $\vec{r} = \vec{P} - \vec{C}$. In 3D, this is the shortest distance between the line and the point.

### Kinematics

The motion along the arc of the circle can be treated using 1D kinematics. We simply choose a reference point $s(0)$, and $s(t)$ represents how far we travel along the arc. We don't use vectors because the distance travelled is not the same as displacement.

The velocity and the acceleration are always tangent to the circle, so $\vec{v} = \frac{\dee s}{\dee t} \text{ [perpendicular to } \vec{r} \text{]}$ and $\vec{a} = \frac{\dee^2 s}{\dee t^2} \text{ [perpendicular to } \vec{r} \text{]}$.

We define the positive direction to be counterclockwise in this course.

The problem with this approach is that each particle has its own value of $\vec{r}$, so every particle has a different formula for velocity and acceleration.

However, angle of rotation is the same for all the particles. Clearly, $s(t) = r \theta(t)$, where $\theta(t)$ is in radians. So $v = r \frac{\dee \theta}{\dee t}$ and $a = r \frac{\dee^2 \theta}{\dee t^2}$.

Now we define angular quantities for convenience. $\theta$ is angular position, $\omega = \frac{\dee \theta}{\dee t}$ is angular velocity, and $\alpha = \frac{\dee^2 \theta}{\dee t^2}$ is the angular acceleration. The units are all based on radians.

For example, the angular velocity of the second hand on a clock is $2 \pi rad / 1 min = \frac{1}{30}\pi rad$.

The advantage of angular quantities is that they are the same for every possible particle in the rigid body. That means that we can describe the rotational kinematics of the whole object at once.

To convert between angular and regular quantities, $s = r \theta$, $v = \omega r$, and $a = r \alpha$.

We can actually use the kinematic equations on this 1D motion, provided $a$ is constant:

* $s(t) = s(0) + v(0) t + \frac{1}{2}at^2$, so $\theta(t) = \theta(0) + \omega(0) t + \frac{1}{2} \alpha t^2$.
* $v(t) = v(0) + at$, so $\omega(t) = \omega(0) + \alpha t$.
* $v(t)^2 = v(0)^2 + 2a s(t)$, so $\omega(t)^2 = \omega(0)^2 + 2 \alpha \theta(t)^2$.

### Representations

How do we represent angular quantities like position, velocity, and acceleration?

We could represent them in world space, where $\vec{\omega} = \omega_x\hat{i} + \omega_y\hat{j}$, but this is unwieldy. In particular, for constant speeds the components keep changing.

Instead, we use Eulerian rotations. Each component of the quantity is the rotational quantity in that axis. So in 2D, all rotation is about the z-axis, and the x-axis and y-axis rotations are always 0.

That means the direction of rotational quantities are always parallel to the actual axis the object is rotating about. This applies to torque as well.

### Kinetic Energy

Clearly, the rotational kinetic energy is the sum of the rotational kinetic energies of each of the particles in the object, $E_k = \sum \frac{1}{2} m_i v_i^2 = \frac{1}{2} \left(\sum m_i r_i^2\right) \omega^2$.

Since ordinary kinetic energy is $\frac{1}{2}mv^2$, the $\sum m_i r_i^2$ acts something like the mass factor, giving inertia to the rotation.

We define the **moment of inertia** to be $I = \sum m_i r_i^2 = \int r^2 \dee m = \int r^2 \rho \dee V$. Then $E_k = \frac{1}{2}I\omega^2$, the rotational kinetic energy.

Since $r$ is the distance from the axis of rotation to $P$, the moment of inertia depends on the axis we are rotating in. It is easier to rotate a pole along its length than to twirl it. In 2D, this menas it matters which point we are rotating around.

The moment of inertia is not always easy to calculate. Some useful ones are below:

* Rotating a point mass, a thin cylindrical shell, or a hoop about its axis of symmetry: $I = mR^2$, where $R$ is the radius.
* Rotating a thin spherical shell about its center: $I = \frac{2}{3}mR^2$, where $R$ is the radius.
* Rotating a solid cylinder or disk about its axis of symmetry: $I = \frac{1}{2}mR^2$, where $R$ is the radius.
* Rotating a solid sphere about its center: $I = \frac{2}{5}mR^2$, where $R$ i the radius.
* Rotating a long thin rod perpendicular to its length at the center: $I = \frac{1}{12}mL^2$, where $L$ is the length of the rod.
* Rotating a long thin rod perpendicular to its length at one end: $I = \frac{1}{3}mL^2$, where $L$ is the length of the rod.

For example, finding the moment of inertia for a solid cylinder rotated about its axis of symmetry:

> Let $R$ be the radius of the cylinder and $L$ be the length. Then $V = \pi R^2 L$.  
> Clearly, $I = \int r^2 \rho \dee V = \rho \int r^2 \dee V$  
> Clearly, $V = \int_0^R 2 \pi r \dee r L$, so $\dee V = 2 \pi r \dee r L$.  
> So $I = \rho L \int_0^R r^2 2 \pi r \dee r = 2 \pi \rho L \int_0^R r^3 \dee R = 2 \pi \rho L \frac{R^4}{4} = 2 \pi \frac{m}{\pi R^2 L} L \frac{R^4}{4} = m \frac{R^2}{2} = \frac{1}{2}mR^2$.  

The **parallel axis theorem** states that $I = I_{CM} + md^2$. In other words, the moment of inertia for rotating about any point on an object can be calculated from the moment of inertia about the center of mass and the distance from the center of mass.

For example, the moment of inertia at the end of a long thin rod is $I = I_{CM} + m\left(\frac{L}{2}\right)^2 = \frac{1}{12}mL^2 + \frac{1}{4}mL^2 = \frac{1}{3}mL^2$, as required.

If we have multiple parts of an object, like a pendulum having a rod and a bob at the bottom, the total moment of inertia is simply the sum of all the inertias of each object. So $I_{pendulum} = I_{rod} + I_{bob}$.

### Torque

**Torque** is the tendency for an applied force to cause rotation in an object. We represent it with $\tau$ with the unit Newton-meters $N m$.

      lever (r)
    v----------------v
    v pivot
    X================O < force is applied here
     \        \theta ^
       \            / < applied force
        d\       F/
           \    /
             \/ < perpendicular

Here, $\vec{r}$ is the displacement of the end of the lever, $\vec{F}$ is the applied force, $\theta$ is the angle between $\vec{F}$ and $\vec{r}$, and $\vec{d}$ is a vector perpendicular to $F$ passing through the pivot.

In this example, the component of the force along the x-axis, $F \cos \theta$ produces a translational force since it can't turn the object, while the component of the force along the y-axis, $F_t = F \sin \theta$, goes toward turning the object.

If we applied the force along the displacement of the end of the lever, the object would not be able to rotate, so all the force is applied toward translating the object. If we applied the force exactly perpendicular to the displacement of the end of the lever, all of the force would go toward rotating the object.

Torque is basically the component of the force that goes into rotating the object - $\magn{\tau} = F r \sin \theta = dF$. It is positive when the object is being pushed counterclockwise.

The net torque is simply the sum of all torques acting on the object.

In 3D, $\vec{\tau} = \vec{r} \times \vec{F}$. In 2D, torque is simply a scalar. However, it still has direction, since it can be positive or negative.

The cross product of two vectors is always a vector perpendicular to both. To find the direction of the torque, we use the right hand rule - if we make a thumbs-up with our right hand, with the fingers curling from $\vec{r}$ to $\vec{F}$, the thumb points along the direction of the torque.

Clearly, $F \sin \theta = ma_{arc} = mr\alpha$. So $rF \sin \theta = \tau = mr^2 \alpha = I\alpha$. This is the rotational version of the second law of motion: $\vec{\tau} = I\vec{\alpha}$.

Also, if $\tau = rF \sin \theta$, then $\tau = dF$. This is useful because sometimes $\vec{d}$ is easier to find than $\vec{r}$.

We can summarize with $\vec{\tau}_{net} = \vec{r} \times \vec{F} = I\vec{\alpha}$.

A 6kg pulley is attached by a rope to a 2kg block. What is the tension on the rope?

> Let $r$ be the radius of the pulley, $T$ be the tension on the rope, and $a$ be the acceleration at the edge of the pulley.  
> Clearly, $a$ would be $g$ if not for the tension on the rope. So $a = g - \frac{T}{2 kg}$.  
> Clearly, the torque on the pulley is $r T \sin \frac{\pi}{2} = rT$, with the angle being 90 degrees since the rope is always perpendicular to the displacement.  
> Clearly, $I_{pulley} = \frac{1}{2} 6 kg r^2 = r^2 3 kg$. So $\tau = I\alpha = rT = r^2 3 kg \alpha$, and $\alpha = \frac{T}{r 3 kg}$, so $a = \frac{T}{3 kg}$.  
> So $a = g - \frac{T}{2 kg} = \frac{T}{3 kg}$, and $T = g \frac{6}{5} kg = 11.76 N$.  

**Statics** problems are those where the net torque is 0.

A force applied to a point on the object applies $\vec{r} \times \vec{F}$ as torque and $\vec{r} \cdot \vec{F}$ as translational movement to the object overall.

A 2 kg, 3 m horizontal rod is secured to a pivot at one end. What is the acceleration of the board?

    v---- 3m ----v
    X============= 2kg

> The acceleration is the acceleration of the center of mass, which is 1.5 m along the rod.  
> Gravity applies a force of $g2 kg$ on the center of mass and a torque of $\tau = mg\frac{L}{2} \sin \theta$. Since the force is perpendicular to the displacement, $\theta = \frac{\pi}{2}$.  
> Clearly, $I = \frac{1}{3}mL^2$.  
> Clearly, $\tau = mg\frac{L}{2} = I\alpha = \frac{1}{3}mL^2\alpha$, and $\alpha = \frac{3}{2}\frac{g}{L}$.  
> Clearly, $a = r \alpha$, and $r = \frac{L}{2}$, so $a = \frac{3}{4}g$.  

A 10 kg box 1 m wide and 4 m high, is on a board. What is the minimum acceleration of the board before the box tips over?

           1m
       -----------
       |  10kg   |
       |         |
       |   F_g   |
     N |    v    |
     ^ |    X    | 4m
       |   /     |
       |  /      |
       | /       |
       |/        |
       -----------
            > A
    =============== < cart

> Clearly, $\vec{N} = \vec{F}_g = m\vec{g}$. We have $\vec{N}$ applied at the left because the block is going to tip to the left, and $\vec{A}$ is at the bottom because the force is being applied by the cart.  
> Clearly, $\vec{N}$ applies $N \frac{1 m}{2}$ of torque to the center of mass, and $\vec{A}$ applies $A 2 m$ of torque to the center of mass.  
> Clearly, the block can tip when the net torque is 0, so it can freely rotate. So $N \frac{1 m}{2} + A 2 m = 0$ and $A = \frac{N}{4}$.  
> So the acceleration is $a = \frac{A}{m} = \frac{mg}{4m} = \frac{g}{4}$.  

### Rolling Motion

When there is no slipping, the bottommost point of a wheel is at rest, and the topmost point is moving aat twice the speed of the axle.

Rolling motion is described using a combination of pure rotation and pure translation. Sometimes the rotation is about the point of contact with the ground, but mostly it is about the axle.

What is the kinetic energy of a 3kg cylindrical wheel with radius 1 m rolling at 2 m/s?

> Clearly, the linear kinetic energy is $E_k = \frac{1}{2}mv^2 = 6 J$.  
> Clearly, $I = \frac{1}{2} 3 kg 1 m^2 = \frac{3}{2} kg m^2$ and $\omega = \frac{2 m/s}{1 m} = 2 rad/s$.  
> Clearly, the rotational kinetic energy is $E_k = \frac{1}{2}I\omega^2 = \frac{3}{4} kg m^2 4 rad^2/s^2 = 3 kg m^2 rad^2/s^2 = 3 J$.  
> So the total kinetic energy is $6 J + 3 J = 9 J$.  

A yo-yo of mass $m$ and radius $r$ has a string wrapped around it. When released, what is the tension in the string?

> Clearly, $I = \frac{1}{2}mr^2$. Clearly, the force applied by the string and the displacement are perpendicular, so $\theta = \frac{\pi}{2}$.  
> Clearly, $\tau = rT \sin \theta = rT = I\alpha = \frac{Ia}{r}$. So $T = \frac{Ia}{r^2}$.  
> Clearly, $\sum \vec{F} = m\vec{a} = \vec{T} + m\vec{g} = \frac{Ia}{r^2} + m\vec{g}$. So $\vec{a}mr^2 - I\vec{a} = \vec{g}mr^2$ and $\vec{a} = \frac{\vec{g}mr^2}{mr^2 - I}$.  
> So $T = \frac{I\vec{g}m}{mr^2 - I}$.  
> Basically, we wrote tension in terms of overall acceleration using torque ($a \to T$), then used the effects of gravity to find overall acceleration ($\to a$), then used overall acceleration to calculate torque.  

### Angular Momentum

Angular momentum is defined as $\vec{l} = \vec{r} \times \vec{p} = I\omega$ (measured in $m N s = kg m^2/s$) - it is the tendency of linear momentum to impart rotation onto an object.

Here, $\vec{r}$ is the displacement from the center of mass, and $\vec{p}$ is the linear momentum.

Clearly, $\frac{\dee \vec{l}}{\dee t} = \frac{\dee}{\dee t} (\vec{r} \times \vec{p}) = \vec{r} \times \frac{\dee \vec{p}}{\dee x} + \frac{\dee \vec{r}}{\dee t} \times \vec{p}$.

Since $\frac{\dee \vec{r}}{\dee t} = \vec{v}$ is parallel to $\vec{p} = m\vec{v}$, $\frac{\dee \vec{r}}{\dee t} \times \vec{p} = \vec{0}$.

So $\frac{\dee \vec{l}}{\dee t} = \vec{r} \times \frac{\dee \vec{p}}{\dee x} = \vec{r} \times \vec{F} = \vec{\tau}$.

In other words, **torque is the derivative of angular momentum**. It is similar to the second law of motion, where $\frac{\dee \vec{p}}{\dee t} = \vec{F}$. Just as force changes linear momentum, torque changes angular momentum.

Also, angular momentum adds up, so $\sum \vec{l} = \vec{L}$ is the total angular momentum.

There is also **conservation of angular momentum**, which states that in an isolated system, the net torque is 0 - $\sum \vec{\tau} = \vec{0}$ and $\sum \vec{l}_f = \sum \vec{l}_i$. In practice, we usually write it as $I_f\omega_f = I_i\omega_i$.

This is similar to the conservation of linear momentum, which states that the net force in an isolated system is 0.

If two particles of mass $m$ are travelling in opposite directions, what is the angular momentum?

> Clearly, the linear momentum is $\vec{0}$ since the objects are moving in opposite directions.  
> Without loss of generality, assume the particles are travelling along the x-axis, and the origin is at the first particle. The total angular momentum is independent of the origin we choose.  
> Clearly, $\vec{l} = \vec{r}_1 \times \vec{p}_1 + \vec{r}_2 \times \vec{p}_2$, and $\vec{r}_1 = \vec{0}$, so $\vec{l} = \vec{r}_2 \times \vec{p}_2 = r_2 p_2 \sin \theta$.  
> Clearly, $r_2 \sin \theta$ is the displacement along the y-axis, so $r_2 \sin \theta = r_{2, y}$.  
> So $\vec{l} = p_2 r_{2, y}$.  

If a 50 kg student runs onto the edge of a 1.6 m radius stationary merry-go-round with $I = 1200 kg m^2$ at $\frac{25}{9} m/s$, what is the student's angular momentum? What is the angular velocity of the merry-go-round afterward? How much kinetic energy was lost in the collision? How much work needs to be done to move to the center? What is the angular velocity after moving to the center?

> Clearly, $\vec{l}_{student} = 1.6 m 50 kg \frac{25}{9} m/s \sin \theta$. Since the student is perpendicular to the displacement of the point on the edge, $\sin \theta = 1$. So $\vec{l}_{student} = 1.6 m 50 kg \frac{25}{9} m/s = \frac{2000}{9} kg m^2/s$.  
> So the angular momentum of the student is $222.2 kg m^2/s$.  
> Clearly, $\vec{l}_{student, f} + \vec{l}_{wheel, f} = \vec{l}_{student, i} + \vec{l}_{wheel, i}$. So $\vec{l}_{student, f} + \vec{l}_{wheel, f} = \vec{l}_{student, i} = \frac{2000}{9} kg m^2/s$ since the wheel was stationary.  
> Clearly, $I_{student} = mr^2 = 50 kg (1.6 m)^2 = 128 kg m^2$.  
> Since $\vec{\omega}_{student, f} = \vec{\omega}_{wheel, f}$, $\vec{\omega}_{student, f}(I_{student} + I_{wheel}) = \frac{2000}{9} kg m^2/s = \vec{\omega}_{student, f} 1328 kg m^2$. So $\vec{\omega}_{student, f} = \frac{\frac{2000}{9} kg m^2/s}{1328 kg m^2} = \frac{125}{747} rad/s$.  
> So the angular velocity of the merry-go-round after collision was $0.167 rad/s$.  
> Clearly, $E_{k, i} = \frac{1}{2} 50 kg \left(\frac{25}{9} m/s\right)^2 = 192.901234567901234 J$.  
> Clearly, $E_{k, f} = \frac{1}{2} (I_{student} + I_{wheel}) \omega_{student, f}^2 = \frac{1}{2} 1328 kg m^2 (\frac{125}{747} rad/s)^2 = 18.592890078833854 J$.  
> So the collision was inelastic, losing $192.901234567901234 J - 18.592890078833854 J = 174.308344489067380 J$ of kinetic energy.  
> If the student moves the the center $I_{wheel}\omega = (I_{wheel} + I_{student})\frac{125}{747} rad/s = 1328 kg m^2 \frac{125}{747} rad/s$, since the moment of inertia provided by the student is simply removed by being at the center.  
> So $\omega = \frac{1328 kg m^2 \frac{125}{747} rad/s}{1200 kg m^2} = 0.185185185185185 rad/s$.  
> So the speed after the student moves to the center is $0.185 rad/s$.  
> So $E_k = \frac{1}{2} 1200 kg m^2 (0.185185185185185 rad/s)^2 = 20.576131687242757 J$, and $W = \Delta E_k = 20.576131687242757 J - 18.592890078833854 J = 1.983241608408903 J$.  
> So the student needs to do 1.98 J of work to get to the center.  

A force applied along the center of mass applies zero torque to the object. This is called a **central force**.