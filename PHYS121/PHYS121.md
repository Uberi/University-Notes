PHYS121
=======

Mechanics

    Instructor: Guenter Scholz
    Email: scholz@uwaterloo.ca

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

Some examples of laws are $\vec{F} = m\vec{a}$ and $\vec{a}_{av} = \frac{\delta \vec{v}}{\delta t}$.

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

