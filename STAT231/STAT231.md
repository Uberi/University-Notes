STAT231
=======

Statistics.

    Surya Banerjee
    Email: suryabanerje@gmail.com
    Office Hours: Fridays 9am-11am, M3 2017, phone extension 39120

# 2/5/16

There are 3 tutorial tests, 2 midterms, and a final exam.

In STAT230, we were given information about the population, and wanted to find the chance of a sample happening. In STAT231, we will be learning about the opposite - given information about a sample of the population, what can we figure out about the population? Where STAT230 asks, "given 100 fair coin tosses, what is the probability of getting 60 heads?", STAT231 asks, "if we toss a coin 100 times and get 60 heads, what can we say about the fairness of the coin?".

The batting champion of a baseball season is the player with the highest batting average (probability of hitting the ball in each attempt, times 1000). However, although there have been 13 people with a batting average above 400 before 1941, there have been none after that year. Why does this happen? Statistics can provide a clearer explanation.

The Challenger space shuttle disaster occurred due to a failed O-ring. However, the right data analysis could have presented this tragedy - there was already enough data available to find this problem, but it wasn't looked at in the right way. Statistics can help prevent this sort of error.

Kansas weather reports, in a study, were found to be accurate about 85% of the time in predicting rain. However, if they just said "it's not going to rain", they would be right 90% of the time. Likewise, ESPN pundits were found to correctly predict the results of games about 48% of the time. Statistics can help us evaluate which analysts and predictors are believable.

Statistics also allows us to evaluate relationships between two things. For example, does smoking cause lung cancer, or does lung cancer cause smoking? Are they related at all?

Statistical data
----------------

There are two main types of data:

* **Numeric data**, like a grade or a width. Numerical data can be:
    * **Discrete** - an element of a countably large set. For example, the number of pennies in a set of coins.
    * **Continuous** - a measure, like height or weight.
* **Categorical data** (area of study, name, etc.). Categorical data can be:
    * **Binary** - falling into two categories.
    * **Ordinal** - there are categories, but there is an underlying order to the data. For example, colors are categorical data, but they have an underlying order on the EM spectrum.

A **transformation** is a function over a variable. A **linear transformation** is one of the form $y = mx = b$. A linear transformation is an **affine transformation**.

A **coding** is a transformation that converts categorical data to numerical data. For example, colors can be assigned numbers, like 0 for red, 1 for orange, and so on.

### Summaries

We often want to extract important information about a data set to find its properties. When we do so, we extract **data summaries**. We can do this **numerically** (like finding the mean, stddev, median, etc.) or **graphically** (like making a scatter plot). Numerical summaries tell us about certain fundamental properties of data sets, while graphical summaries tell us the shape of the data.

Common numerical summaries we care about are:

* The centre of the data, or **central tendency**:
    * The **sample mean/arithmetic mean**: for a variable $y$, the sample mean is denoted $\overline y = \frac 1 n \sum_{i = 0}^n y_i$. The nice thing about this is that the sum of the deviations from the mean is always 0, so $\sum (y_i - \overline y) = 0$.
    * The **geometric mean** is better for logarithmically distributed data: for a variable $y$, the geometric mean is denoted $\overline y = \left(\prod_{i = 0}^n y_i\right)^{\frac 1 n}$.
    * The **harmonic mean** is rarely useful, and is the reciprocal of the arithmetic mean of the reciprocals of a variable.
* The volatility, or **dispersion**:
    * This includes standard deviation, range, etc.)
* How fat the tails are, or **kurtosis**.
* How symmetric the data is about some point or axis, or **symmetry**.

Suppose we have $100 in a bank account, with 4% interest the first year, 8% the second, and 12% the third. What is the average interest rate?

> Although it would seem at first glance to be 8%, the arithmetic mean doesn't represent the actual average here.
> The average interest rate is the single rate such that, after those 3 years, we would have the same interest gains as we did with this bank account.  
> Let's denote this rate as $x$. Then according to the interest formula, $100(1 + x)^3 = 100 \cdot 1.04 \cdot 1.08 \cdot 1.12$.  
> So $(1 + x)^3 = 1.257984$ and $x = 0.0795059$, or about 0.795%.  
> As it turns out, this is basically the same thing as the geometric mean of the interest rates. In this case, we use the geometric mean since the interest is defined in terms of an enponential function of $n$.  

A car drives from A to B at 40 km/h, and immediately drives back at 60 km/h. What is the average speed of the car?

> Although it would seem at first glance to be 50 km/h, this is not the case, since the car takes less time driving back since it's going faster.  
> Let's denote the distance between A and B as $x$, in km. Then the trip from A to B took $\frac{x}{40}$ hours, and the trip back took $\frac{x}{60}$ hours.  
> Since the total time taken is $\frac{x}{40} + \frac{x}{60}$, the average speed is $\frac{40\frac{x}{40} + 60\frac{x}{60}}{\frac{x}{40} + \frac{x}{60}} = \frac{2}{\frac{1}{40} + \frac{1}{60}}$, or 48 km/h.  
> As it turns out, this is the same thing as the harmonic mean of the speeds.  
