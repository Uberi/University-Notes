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

Summaries
---------

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
        * The concept of the median can be extended to **quartiles** and **percentiles**, and generalized into **quartiles**. While the median is the value such that 50% of the dataset is below and 50% is above it, the quartiles and percentiles are a different fraction.
        * The first quartile is a value for which 25% of the data is below that value, while the second quartile is 50%, the third 75%, and the fourth 100%.
        * The first percentile is a value for which 1% of the data is below that value, while the second percentile is 2%, the third 3%, and so on.
    * The **mode** is the observation or observations that occur most often (a dataset can have more than 1 mode). This is often more useful for categorical data, or discrete numerical data with only a few possibilities.
* The volatility, or **dispersion**:
    * The **range of a dataset** is two numbers - the minimum value of the dataset, and the maximum value. This can also be thought of as the zeroth and fourth quartile values.
    * The **interquartile range** (IQR) is the range of the middle 50% of the dataset - the first quartile value and third quartile value.
    * The **sample variance** is defined as $s^2 = \frac{1}{n - 1} \sum_{i = 0}^n \left(y_i - \overline y\right)^2$. Note that the variance is $s^2$, not $s$. Also, the variance of a dataset $x = \set{x_1, \ldots, x_n}$
        * This is almost, but not quite, the average of the squared deviation from the mean.
        * Basically, this measures how much the data is spread out from the mean.
        * There's a good reason to divide by $n - 1$ rather than $n$, but we'll cover that later on.
        * Under an affine transformation $y_i = ax_i + b$, $s_y^2 = a^2 s_x^2$ - the squared factor applies to the variance, but not the variance.
        * Another useful formula for the sample variance is $s^2 = \frac 1 {n - 1} \left(\sum y_i^2 - n(\overline y)^2\right)$.
    * The **standard deviation** is the positive square root of the sample variance, denoted $s$.
        * Why do we square the deviations rather than just adding them up like $\sum_{i = 0}^n (y_i - \overline y)$? The negative deviations and positive deviations would cancel each other out; squaring the values ensures that the standard deviation accumulates to a non-negative value. This also ensures that variance is always symmetric - points above and below the mean both contribute the same amount to the variance.
        * Why do we square the deviations rather than adding their absolute values like $\sum_{i = 0}^n \abs{y_i - \overline y}$? While the absolute value function would still represent variance (the given formula is called the **mean absolute deviation**), it's harder to work with since it's not differentiable. Also, the squared deviation is affected by outliers quadratically while the absolute deviation is only affected linearly, so taking its square root later would give unintuitive results.
        * Under an affine transformation $y_i = ax_i + b$, $s_y = a s_x$ - the factor applies to the standard deviation, but not the intercept (this trivially follows from the formula for the sample variance).
    * The **mean absolute deviation** is defined as $\frac{1}{n - 1} \sum_{i = 0}^n \abs{y_i - \overline y}$. This is what we get if we use the absolute value function rather than squaring in the formula for variance. It's relatively rarely used.
* How fat the tails are, or **kurtosis** - the frequency of extreme obserations.
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

When we talk about distributions, we oftne picture them as bumps or hills - a high area in the middle, and low areas on the sides. In this picture, the **tails** of a distribution are the low areas on the sides. The concept of tails doesn't really generalize that well, so we'll avoid it for actual formal explanations.

### Centrality

To find a percentile $\beta$, we sort the observations from low to high, and then take the value at the 1-indexed position $\beta(n + 1)$ (or the sample mean of the two values closest to the 1-indexed position $\beta(n + 1)$).

The average/central tendency isn't always the only thing we care about. Suppose you flip a coin $n$ times before a heads appears. If you are paid $2^n$ dollars for doing so, at what price would you pay to play this game?

> Note that a head comes up on the first trial with 1/2 probability, paying out 2 dollars, on the second trial with 1/4 probability, paying out 4 dollars, and so on.  
> So the expected value is $\sum_{i = 1}^\infty i \frac 1 i = \infty$ - the expected value is infinity!  
> However, most people wouldn't even pay 40 dollars to play - it seems like risk/variability is also an important factor in deciding whether to play. This is called St. Peter's Paradox.  

Suppose we have a dataset $x = \set{x_1, \ldots, x_n}$. Suppose we know one observation with value $k$ is unreliable, and we want to discard it from $x$. Can we find the new mean and variance?

> Let $y = \set{y_1, \ldots, y_{n - 1}}$ be the dataset with the unreliable observation removed.  
> Clearly, $\sum y_i = \sum x_i - k$, since we removed only that one element, and since $\sum x_i = n \overline x$, $\sum y_i = \sum x_i - k$.  
> So the sample mean is $\overline y = \frac{\sum x_i - k}{n - 1}$.  
> To find the variance, we can use the alternate form of the variance formula, so $s_y^2 = \frac 1 {(n - 1) - 1} \left(\sum y_i^2 - (n - 1)(\overline y)^2\right)$.  
> Since $\sum y_i = \sum x_i - k$, $\sum y_i^2 = \sum x_i^2 - k^2$.  
> Since we already know $\overline y$, $s_y^2 = \frac{1}{n - 2} \left(\sum x_i^2 - k^2\right) - \frac{\left(\sum x_i - k\right)^2}{n - 1}$.  
> This same technique can be used to calculate the mean and variance of a dataset after adding or removing any number of items to it, without looking at the existing elements of the dataset.  

When you have a dataset with sample mean $\overline x$ and remove an item with value $\overline x$, the mean stays the same, while the variance increases or stays the same.

The batting champion of a baseball season is the player with the highest batting average (probability of hitting the ball in each attempt, times 1000). However, although there have been 13 people with a batting average above 400 before 1941, there have been none after that year. Why does this happen?

In every sport, players have gotten better, absolutely speaking, over time - it doesn't seem like batters are actually getting worse. However, better pitchers, fielders, and managers can make a batter's job a lot harder.

We can actually test this by looking at the batting average for individual average batters over their careers. As it turns out, the average batter's batting average stays about the same over their career. However, the variance in the average player's ball hitting rate shrinks over their careers. Since the average is lower than 400, the shrinking variances mean that the tails in the batting average distribution shrink as well (causing fewer 400+ batting averages). When we become more consistent at hitting the ball at the average rate, that means there are fewer low-performers, but also fewer high-performers.

# 9/5/16

### Symmetry

We also often care about **skewness** - how non-symmetric the data is. This measures how different the dataset looks when comparing the side of the mean, mirrored over to the right side. Left-skewing/negative-skewing datasets have distributions that seem to "lean to the right" (they have a long left tail), while right-skewing/positive-skewing distributions seem to "lean to the left" (they have a long right tail).

One way to estimate skewness is to compare the mean and median, measuring $\text{mean} - \text{median}$. If the mean is less than the median, then we'd say the dataset might be left skewed (more of the weight is on the left), if they were equal, we say the dataset is probably symmetric (weight is about the same above and below the mean), and if the mean was greater than the median, then we say the dataset might be right-skewed (more of the weight is on the right side).

The real measure of skewness is $\frac{\frac 1 n \sum \left(y_i - \overline y\right)^3}{\left(\frac 1 n \sum \left(y_i - \overline y\right)\right)^{\frac 3 2}}$. We won't be expected to memorize this for the course.

For example, if a person is diagnosed with a disease that has a mean time of death about 8 months after diagnoses, and survives for several months after diagnosis, then they should hope that the distribution of deaths is more right-skewed, so that most of the probability of death is already behind them.

### Spikiness

**Kurtosis** is the measure of how frequent extreme observations are with respect to the normal distribution. Basically, it checks if the tails of the dataset's distribution are fatter (more extreme observations) or thinner (less extreme observations) than a normal distribution. It can also be said to measure how peaky/pointy the distribution's curve is at the top.

Kurtosis is defined as $K = \frac{\frac 1 n \sum \left(y_i - \overline y\right)^4}{\left(\frac 1 n \sum \left(y_i - \overline y\right)\right)^2}$. A normal distribution has $K = 3$. If $K > 3$, then the tails of the dataset's distribution are fatter than a normal distribution (there are more extreme observations), and if $K < 3$, then the tails of the dataset's distribution are thinner than a normal distribution (there are fewer extreme observations).

Kurtosis is especially useful in finance, where accurate assessment of risks and expected returns are important. It basically tells us how normal-like our data is - if the kurtosis is very close to 3, we can often assume that the dataset is normally distributed, which is extremely useful for doing statistics with.

### Association

Suppose we have a dataset $D = \set{\tup{x_1, y_1}, \ldots, \tup{x_n, y_n}}$ with two variables. How do we measure how much these two variables are associated (how is one variable affected by the other)?

For example, suppose we have categorical variables, $x = \set{\text{smoker}, \text{non-smoker}}$ and $y = \set{\text{lung cancer}, \text{no lung cancer}}$. How do we determine the relationship between these variables, given a dataset of samples?

**Relative risk** is a measure of association between two categorical variables. Basically, relative risk is $\frac{P(A \mid B)}{P(A \mid \neg B)}$ - the probability of $A$ occurring given that $B$ occurrs over the probability of $A$ occurring given that $B$ does not occur. For independent variables, relative risk is 1. The farther the relative risk is from 1, the more strongly it implies that the variables are associated.

For two categorical Boolean variables, relative risk is $\frac{\frac{\abs{x \wedge y}}{\abs{x}}}{\frac{\abs{\neg x \wedge y}}{\abs{\neg x}}}$. Expanded into a more useful form, it becomes $\frac{\frac{\abs{x \wedge y}}{\abs{x \wedge y} + \abs{x \wedge \neg y}}}{\frac{\abs{\neg x \wedge y}}{\abs{\neg x \wedge y} + \abs{\neg x \wedge \neg y}}}$.

The **sample correlation coefficient** is a measure of association between two numerical variables, like relative risk is for two categorical variables. It's defined as $r_{xy} = \frac{\sum \left(x_i - \overline x\right)\left(y_i - \overline y\right)}{\sqrt{\sum \left(x_i - \overline x\right)^2} \sqrt{\sum \left(y_i - \overline y\right)^2}}$. Specifically, it measures **linear association**.

The sign of $r_{xy}$ (specifically, the sign of the numerator) tells us the direction of the association (positive means variables tend to increase each other, while negative means one tends to increase when the other decreases, and vice versa), and the magnitude of $r$ tells us the strength of the association (0 meaning no association). The denominator ensures that $-1 \le r_{x, y} \le 1$ for any dataset.

For non-linear relationships, the sample correlation coefficient doesn't work so well. For example, for two variables $x, y$ associated by $y = x^2$, the sample correlation coefficient is 0, even though we defined them to be associated by a particular function. A general measure of association for any function (not just linear ones) wouldn't really be meaningful since it's always possible to construct a function to fit a finite dataset. Therefore, all measures of association must be against a particularly chosen class of functions.

For a perfect linear relationship between variables $x, y$, like $y = ax + b$, $r_{xy} = 1$ if $b > 0$, and $r_{xy} = -1$ if $b < 0$. If $b = 0$, then $r_{xy} = 0$.

Since we're assuming our dataset is a sample of the population rather than the population itself, we can only find evidence of associations rather than actual associations themselves. Even if the evidence is very strong, it doesn't say for sure that the association is there. Basically, correlation doesn't imply causation.

# 11/5/16

The reason we have supparies is to figure out the shape of a dataset, and see if we can identify it as following a certain distribution. obtaining the distribution allows us to make predictions about future observations and other useful statistical things.

The **five number summary** of a dataset is a common set of summaries: minimum, first quartile, median, third quartile, and, maximum. Basically, it gives 5 equally spaced points on the histogram.

Since $\sum (x_i - \overline x)(y_i - \overline y) = \sum x_i y_i - n \overline x \overline y$ and $\sum (x_i - \overline x)$, we can write the formula for the correlation coefficient more simply as $\frac{\sum x_i y_i - n \overline x \overline y}{s_x s_y}$.

### Graphical Summaries

One of the most commonly used graphical summaries is the histogram. This is generally used when we have data that can be grouped/binned (organized into disjoint, ordered sets). By "histogram", most people actually mean a **frequency histogram** - a bar plot where the X axis is the bins, and the Y axis is the frequency of observations in each bin.

In contrast, statisticians usually mean **density histograms** when talking about histograms. This is the same thing, except the Y axis is the density of the bin.

The bins in a density histogram don't all have to all have the same range - one can encompass 30 elements, while another might encompass 10. On the plot, the bars don't all have to have the same width. The height of each bar is chosen such that the area of the bar (width of the bin times the height) is equal to the relative frequency of observations that fall into its corresponding bin. The relative frequency is simply $\frac{\text{number of observations in the bin}}{\text{total number of observations}}$.

Note that the total area underneath the density histogram is always 1. Since the total area under a probability density function is also 1, the density histogram is very useful for comparing data with known probability density functions, which we do very often when trying to figure out if a dataset follows a certain distribution. We can't use the usual frequency histogram for this because the total area of the bars doesn't add up to 1.

A **box-and-whiskers plot** is a useful way to show the five number summary that also highlights outliers. It's a 1D plot that looks something like this:

      o   <- each outlier is plotted as a point, while non-outliers are only summarized by the box and whiskers
    
    ----- <- top whisker represents maximum value that isn't an outlier
      |
    ----- <- top of box represents third quartile
    |   |
    |---| <- line in the box represents median
    |   |
    ----- <- bottom of box represents first quartile
      |
    ----- <- bottom whisker represents minimum value that isn't an outlier
    
          <- there might not be any outliers in the dataset

An **outlier** is an observation $x_i$ such that $x_i > Q_3 + 1.5 IQR$ or $x_i < Q_1 - 1.5 IQR$, where $Q_1, Q_3$ are the first and third quartiles, and $IQR$ is the interquartile range $Q_3 - Q_1$. The reason we use 1.5 is because it is convention, and fits the normal distribution relatively well. In other words, an outlier is any point that doesn't fall into the range $[2.5Q_1 - 1.5Q_3, 2.5Q_3 - 1.5Q_1)]$. When we're drawing a box plot, we figure out the quartiles, figure out the ranges in which observations are outliers, and then find the max/min observations that aren't outliers.

Box plots visually show the shape of the data. A box with whiskers that are different lengths is skewed to one side, while the height of the box shows the dispersion.

The **empirical cumulative distribution function** (empirical CDF) for discrete numerical data is a plot where the X axis is the range of possible observation values, and the Y axis is the number of observations that are less than or equal to that value. So for a dataset $x = \set{x_1, \ldots, x_n}$, and $F(x_i) = \abs{\set{v \in x \middle| v \le x_i}}$, the empirical CDF is a plot of $(x_i, F(x_i))$.

The advantage of the empirical CDF is that the percentile values are directly shown on the plot - to find the $n$th percentile, we find the X axis value such that the Y axis is $n$ percent of the maximum Y axis value. For example, to find the median, we would find the Y axis . Also, the mode is the bar that has the largest increase in height compared to the bar on its left.

The Q-Q plot is used for checking if a dataset resembles a normal distribution. This is a plot of the $\alpha$th quantile of the dataset and the $\alpha$th quantile of the Z distribution $N(0, 1)$ (normal distribution with mean 0 and variance 0), for all $\alpha$.

So the median of the dataset is plotted at the X axis value that is the median of the Z distribution, the 95th percentile of the dataset is plotted at the X axis value that is the 95th percentile of the Z distribution, and so on. Basically, this is a plot of $(p \text{th percentile of the Z distribution}, p \text{th percentile of the dataset})$ for all $0 \le p \le 100$. The X axis goes on infinitely in both directions.

If the Q-Q plot resembles a straight line, the dataset resembles a normal distribution. For example, for a normally distributed dataset, it would always be the case that the $p$th percentile of the dataset be a linear function of the $p$th percentile of the Z distribution, so all $(p \text{th percentile of the Z distribution}, p \text{th percentile of the dataset})$ would lie along the same line.

A **scatter plot** plots two variables against each other, where the X axis is one variable and the Y axis is the other, and points are plotted for each observation. The scatter plot is great for finding patterns in the data, like correlations, grouping, and so on.