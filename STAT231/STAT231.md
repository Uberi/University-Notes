STAT231
=======

Statistics.

    Surya Banerjee
    Email: suryabanerje@gmail.com
    Office Hours: Fridays 9am-11am, M3 2017, phone extension 39120

# 2/5/16

There are 3 tutorial tests, 2 midterms, and a final exam.

In STAT230, we were given information about the population, and wanted to find the chance of a sample happening. In STAT231, we will be learning about the opposite - given information about a sample of the population, what can we figure out about the population? Where STAT230 asks, "given 100 fair coin tosses, what is the probability of getting 60 heads?", STAT231 asks, "if we toss a coin 100 times and get 60 heads, what can we say about the fairness of the coin?".

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

A **transformation** is a function over a variable. A **linear transformation** is one of the form $y = mx = b$. A linear transformation is also known as an **affine transformation**.

A **coding** is a transformation that converts categorical data to numerical data. For example, colors can be assigned numbers, like 0 for red, 1 for orange, and so on.

### Summaries

We often want to extract important information about a data set to find its properties. When we do so, we extract **data summaries**. We can do this **numerically** (like finding the mean, stddev, median, etc.) or **graphically** (like making a scatter plot). Numerical summaries tell us about certain fundamental properties of data sets, while graphical summaries tell us the shape of the data.

Common numerical summaries we care about are:

* The centre of the data, or **central tendency**:
    * The **sample mean/arithmetic mean**: for a variable $y$, the sample mean is denoted $\overline y = \frac 1 n \sum_{i = 0}^n y_i$.
        * The nice thing about this is that the sum of the deviations from the mean is always 0, so $\sum (y_i - \overline y) = 0$.
        * Under an affine transformation $y_i = ax_i + b$, $\overline y = a \overline x + b$ - the mean can simply be transformed as well.
    * The **geometric mean** is better for logarithmically distributed data: for a variable $y$, the geometric mean is denoted $\overline y = \left(\prod_{i = 0}^n y_i\right)^{\frac 1 n}$.
    * The **harmonic mean** is rarely useful, and is the reciprocal of the arithmetic mean of the reciprocals of a variable.
    * The average is usually the one value that, if applied in the problem's situation, is equivalent to applying all the original values.
    * The **median** is the middle-most observation, or the sample mean of the middlemost observations if there are multiple. Essentially, we arrange the dataset in ascending order, and then pick the middle one.
        * The advantage of medians is that they are less sensitive to outliers than summaries like the sample mean.
        * The concept of the median can be extended to **quartiles** and **percentiles**. While the median is the value such that 50% of the dataset is below and 50% is above it, the quartiles and percentiles are a different fraction.
        * The first quartile is a value for which 25% of the data is below that value, while the second quartile is 50%, the third 75%, and the fourth 100%.
        * The first percentile is a value for which 1% of the data is below that value, while the second percentile is 2%, the third 3%, and so on.
    * The **mode** is the observation or observations that occur most often (a dataset can have more than 1 mode). This is often more useful for categorical data, or discrete numerical data with only a few possibilities.
* The volatility, or **dispersion**:
    * The **range of a dataset** is two numbers - the minimum value of the dataset, and the maximum value. This can also be thought of as the zeroth and fourth quartile values.
    * The **interquartile range** (IQR) is the range of the middle 50% of the dataset - the first quartile value and third quartile value.
    * The **sample variance** is defined as $s^2 = \frac{1}{n - 1} \sum_{i = 0}^n \right(y_i - \overline y\right)^2$. Note that the variance is $s^2$, not $s$. Also, the variance of a dataset $x = \set{x_1, \ldots, x_n}$
        * This is almost, but not quite, the average of the squared deviation from the mean.
        * Basically, this measures how much the data is spread out from the mean.
        * There's a good reason to divide by $n - 1$ rather than $n$, but we'll cover that later on.
        * Under an affine transformation $y_i = ax_i + b$, $s_y^2 = a^2 s_x^2$ - the squared factor applies to the variance, but not the variance.
        * Another useful formula for the sample variance is $s^2 = \frac 1 {n - 1} \sum y_i^2 - n(\overline y)^2$
    * The **standard deviation** is the positive square root of the sample variance, denoted $s$.
        * Why do we square the deviations rather than just adding them up like $\sum_{i = 0}^n (y_i - \overline y)$? The negative deviations and positive deviations would cancel each other out; squaring the values ensures that the standard deviation accumulates to a non-negative value.
        * Why do we square the deviations rather than adding their absolute values like $\sum_{i = 0}^n \abs{y_i - \overline y}$? While the absolute value function would still represent variance (the given formula is called the **mean absolute deviation**), it's harder to work with since it's not differentiable. Also, the squared deviation is affected by outliers quadratically while the absolute deviation is only affected linearly, so taking its square root later would give unintuitive results.
        * Under an affine transformation $y_i = ax_i + b$, $s_y = a s_x$ - the factor applies to the standard deviation, but not the intercept (this trivially follows from the formula for the sample variance).
    * The **mean absolute deviation** is defined as $$
* How fat the tails are, or **kurtosis** (this can also be viewed at the frequency of extreme obserations).
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

# 4/5/16

To find a percentile $\beta$, we sort the observations from low to high, and then take the value at the 1-indexed position $\beta(n + 1)$ (or the sample mean of the two values closest to the 1-indexed position $\beta(n + 1)$).

The average/central tendency isn't always the only thing we care about. Suppose you flip a coin $n$ times before a heads appears. If you are paid $2^n$ dollars for doing so, at what price would you pay to play this game?

> Note that a head comes up on the first trial with 1/2 probability, paying out 2 dollars, on the second trial with 1/4 probability, paying out 4 dollars, and so on.  
> So the expected value is $\sum_{i = 1}^\infty i \frac 1 i = \infty$ - the expected value is infinity!  
> However, most people wouldn't even pay 40 dollars to play - it seems like risk/variability is also an important factor in deciding whether to play. This is called St. Peter's Paradox.  

Suppose we have a dataset $x = \set{x_1, \ldots, x_n}$. Suppose we know one observation with value $k$ is unreliable, and we want to discard it from $x$. Can we find the new mean and variance?

> Let $y = \set{y_1, \ldots, y_{n - 1}}$ be the dataset with the unreliable observation removed.  
> Clearly, $\sum y_i = \sum x_i - k$, since we removed only that one element, and since $\sum x_i = n \overline x$, $\sum y_i = \sum x_i - k$.  
> So the sample mean is $\overline y = \frac{\sum x_i - k}{n - 1}$.  
> To find the variance, we can use the alternate form of the variance formula, so $s_y^2 = \frac 1 {(n - 1) - 1} \sum y_i^2 - (n - 1)(\overline y)^2$.  
> Clearly, $\sum y_i^2 = \sum x_i^2 - k^2$ and we already know $\overline y$ from the step above.  
> So $s_y^2 = \frac{1}{n - 2} \left(\sum x_i^2 - k^2\right) - \frac{\left(\sum x_i - k\right)^2}{n - 1}$.  
> This same technique can be used to calculate the mean and variance of a dataset after adding or removing any number of items to it, without looking at the existing elements of the dataset.  

When you have a dataset with sample mean $\overline x$ and remove an item with value $\overline x$, the mean stays the same, while the variance increases or stays the same.

The batting champion of a baseball season is the player with the highest batting average (probability of hitting the ball in each attempt, times 1000). However, although there have been 13 people with a batting average above 400 before 1941, there have been none after that year. Why does this happen?

In every sport, players have gotten better, absolutely speaking, over time - it doesn't seem like batters are actually getting worse. However, better pitchers, fielders, and managers can make a batter's job a lot harder.

We can actually test this by looking at the batting average for individual average batters over their careers. As it turns out, the average batter's batting average stays about the same over their career. However, the variance in the average player's ball hitting rate shrinks over their careers. Since the average is lower than 400, the shrinking variances mean that the tails in the batting average distribution shrink as well (causing fewer 400+ batting averages). When we become more consistent at hitting the ball at the average rate, that means there are fewer low-performers, but also fewer high-performers.
