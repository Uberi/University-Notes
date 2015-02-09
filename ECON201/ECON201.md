ECON201
=======

Microeconomic Theory 1.

    Alan-Desire Nimubona
    Office: HH 212
    Email animubon@uwaterloo.ca
    Office Hours: Monday/Wednesday 3:30pm-5pm
    ISA: Adrian Sado
    Office: PAS 1288 or 1289

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

# 6/1/15

Theory of consumer choice, economics of production, and price/output under perfect/imperfect competition. Focus on theoretical aspect of economics.

Textbook is 6th edition Microeconomics by Perloff J. M., published by Pearson/Addison-Wesley.

Midterm 1 on Thurs. Feb. 5, midterm 2 on Thurs. Mar. 12, each 25%. Final exam is 50%. Final grade is largest of final, final weighted with highest midterm, and final weighted with both midterms.

There are also in-class exercises and practice problems as homework.

;wip: read perloff ch 1-2

# 8/1/15

The Supply and Demand Model
---------------------------

**Microeconomics** is the study of how individuals and firms make themselves as well off as possible in a world of scarcity, and the consequences of these individual decisions for the markets and the entire economy.

A **market** is an exchange mechanism that brings buyers and sellers together to facilitate trade.

Prices determine which goods/services to produce, how to produce it, and who gets the goods/services.

A model is a description of the relationship between two or more economic variables - a simplified version of reality used to predit what will happen if something else happens. Economic theory uses models to test hypotheses.

Normative economics is about how things should be, and positive economics is about how things are. Normative approaches are based on the results of positive economic observations.

The **demand curve** shows the quantity a population demands at given prices. The **law of demand** states that all other factors being the same, the demand curve slopes down - quantity demanded is inversely correlated to the price. There are also external factors that affect and shift the entire demand curve, like taxes.

The X-axis measures the quantity demanded, and the Y-axis measures the price.

This assumes that consumers have full information about all the aspects of the market.

Mathematically, the demand curve can be represented using a **demand function** $Q = D(p_0, \ldots, p_n, Y)$, where $Q$ is the quantity demanded for a good/service, $p_0, \ldots, p_n$ are the prices of the products, and $Y$ is the income of the consumer. This applies only to **one particular consumer**.

A specific example might be $Q = 171 - 20p_0 + 20p_1 + 3p_2 - 2Y$. In this case, the quantity demanded depends on the prices of all three products in the market, and is inversely correlated to consumer income.

To plot these functions, we fix the values of all the variables except for one of the prices at their typical values, and then plot $Q$ with respect to that price variable. We can get this data using statistical regression on empirical data, though this is the domain of econometrics.

For example, we fix everything except for $p_1$ to get $Q = 171 - 20 \cdot 21.72 + 20p_1 + 3 \cdot 3.56 - 2 \cdot 200 = 171 - 20 \cdot 1.72 + 20p_1 + 3 \cdot 23.56 - 2 \cdot 100 = 76.08 + 20p_1$.

So we now have a linear function, and can find the inverse demand function: $Q = 76.08 + 20p_1$, so $p_1 = \frac{Q - 76.08}{20}$.

The **total demand** for a product is the sum of the demand curves for all the consumers in the market. Basically, we are adding together all the quantities demanded. Mathematically, we add up all the demand functions to get the total demand - quantity demanded at a certain price.

The **supply curve** is the quantity that can be supplied at given prices. There is **no law of supply**, although many supply curves slope upward. There are also external factors that affect and shift the entire supply curve, like taxes.

The supply function is similar to the demand function, as $Q = S(p_0, \ldots, p_n)$, where $p_0, \ldots, p_n$ are the prices of products, often those needed in order to produce the good/service. This applies to one particular supplier.

The total supply is the sum of all the supply functions for each supplier. This is the supply of a product in the entire market.

An **equilibrium** is a situation in which no one wants to change their behaviour - when the system is in balance. Economic equilibrium clears the market - there is no excess demand and no excess supply. In other words, everyone who wants a product can get it, and everyone who makes the product can sell it. This situation occurs at a specific price, if it is possible at all.

The market automatically stabilizes toward equilibrium. When the price is below equilibrium price, there is excess demand - there are people who want to buy but can't. When above, there is excess supply - there are people who want to sell but can't.

We can calculate this by setting quantity supplied to quantity demanded, so the supply function equals the demand function, and then solving for the prices.

# 13/1/15

Applying Supply/Demand
----------------------

**Elasticity** is the percent change in a variable in response to a percent change in another variable.

**Price elasticity of demand** ($\epsilon$) is the percent change in quantity demanded in response to a percent change in price - the slope of a secant in the the demand curve times the ratio of price to quantity. Formally, $\epsilon = \frac{\frac{\Delta Q}{Q}}{\frac{\Delta P}{P}} = \frac{\Delta Q}{\Delta P} \frac{P}{Q}$. This is generally negative due to the law of demand.

For example, a 1% increase in price resulting in a 3% decrease in demand means that the elasticity is -3. When $\epsilon > 1$ the demand is **elastic**. When $\epsilon < 1$ the demand is **inelastic**. When $\epsilon = 1$ the demand is **unit elastic**.

A demand curve with constant elasticity is given as $Ap^\epsilon$, where $A, p > 0$. Perfect inelasticity occurs when $\epsilon = 0$, like for essential goods. Perfect elasticity occurs when $\epsilon = \infty$, like for perfect substitutes.

**Income elasticity of demand** is similar to price elasticity, but is percent change in quantity demanded in reponse to percent change in a consumer's income rather than the price.

**Cross-price elasticity of demand** is similar to price elasticity, but in response to the percent change in another good's price. If negative, the quantity demanded decreases as the other good's price increases, so by the law of demand they are demanded together - **complement goods** (milk and coffee beans). If positive, quantity demanded increases as the other good's price increases, so they are demanded as substitutes of each other - **substitute goods** (beef and pork). The price of one good changing will shift the demand curve of the other.

**Price elasticity of supply** is the same as price elasticity of demand, but with quantity supplied rather than quantity demanded. This is generally positive since if sellable at a higher price, suppliers are usually willing to make more.

Elasticities tend to be larger in the long run, since people have more of an incentive to make a good choice in selecting goods, and there tend to be more alternatives available.

The two types of taxes ($\Tau$) are ad valorem tax (percentage of each dollar spent) and unit tax (fixed price per good/service sold).

The change in price caused by an added tax of $\Tau$ is $\Delta p = \frac{\eta}{\eta - \epsilon}\Delta \Tau$. Changes in equilibrium price caused by taxes **depend on the elasticity of supply and demand**.

The **incidence of tax** is the fraction of a tax that is passed onto consumers via raised prices - the change in price with per tax increase, $\frac{\Delta P}{\Delta \Tau} = \frac \eta {\eta - \epsilon}$. Again, this is entirely dependent on the elasticity of supply and demand.

When the incidence of tax is 0, the supplier pays all of the tax. This occurs when the supply is perfectly inelastic (the supply is the same regardless of the price, so suppliers just scale back) or the demand is perfectly elastic (consumers will only demand the product at a specific price or lower, so suppliers must pay it if they want to sell products).

When the incidence of tax is 1, the consumer pays all of the tax. This occurs when the supply is perfectly elastic (suppliers will only supply at a specific price or higher, so they won't supply unless consumers pay the tax) or the demand is perfectly inelastic (demand is the same regardless of the price, so they'll buy it even if they have to pay the tax).

# 15/1/15

Theory of Consumer Choice
-------------------------

The demand curve for a specific consumer is the amount of money the consumer is willing to pay for the first of a good/service, the second, and so on. Each point on the demand curve represents a particular price the consumer is willing to pay for the $n$th instance of a good/service.

Goods/services are commodities - things that are associated with markets. Commodities also include negative things like pollution and carbon emissions.

The **theory of consumer choice** represents the desires and tastes of the individual consumers as an economic construct. The theory is based on the following assumptions:

* Consumers have choices in what they consume, and also constraints and limits on those choices.
* Each choice results in a certain amount of utility.
* The goal of the rational, perfectly informed consumer is to maximise the amount of utility from their choices.

Our model of consumer preferences is based on completeness, transitivity, and the idea that more is better.

**Completeness** is the idea that between any two commodities, a consumer is able to compare the two and say which one they prefer, or that they are indifferent - that commodities are comparable.

**Transitivity** is the idea that if a consumer prefers $a$ to $b$ and $b$ to $c$, then that consumer prefers $a$ to $c$.

**More is better/nonsatiation** is the idea that all other factors constant, having more of a commodity is preferable to having less of it. For good things like goods/services we always want more, and bad things like pollution we always want less.

Essentially, we must be able to quantify the amount of happiness (utility) that we get from consuming a commodity.

An **indifference curve** is the set of all bundles of goods that a consumer views as having equal utility, like a set with a bundle of two coffees and a bundle with a donut - the consumer has the same utility for each bundle. An **indifference map** is te set of all indifference curves, and summaries the consumer's tates and preferences.

A bundle of goods can belong to an indifference curve. A bundle with more of every good in the bundle, by the nonsatiation assumption, would always have a higher utility, and therefore always be preferred to the original bundle.

The indifference curve is a curve because if we plot the possible bundles as points with respect to the quantity consumed of each commodity on each axis, an indifference curve forms a curve passing through all the bundles that have equal utility. Every possible bundle belongs to exactly one indifference curve.

Preferences in indifference curves are always based on their distance from the origin, due to the nonsatiiation assumption. Indifference curves cannot cross, and always slope downward.

Concave graphs are those that have a negative second derivative (cups downward). Convex graphs have a positive second derivative (cups upward).

The **marginal rate of substitution** (MRS) is the largest amount of one good a consumer is willing to sacrifice in order to obtain one more unit of another good. As it turns out, this is $MRS = \frac{\Delta G_1}{\Delta G_2}$, where $G_1$ is the good being sacrificed for $G_2$. Also, this is the slope of the indifference curve, where $G_2$ is the x-axis and $G_1$ is the y-axis.

An indifference curve must be straight or convex to the origin - bulging toward the origin. Perfect substitutes have straight lines since the consumer is totally indifferent between the goods. Perfect complements have perfectly right angled curves since the consumer needs both products in order to obtain a unit of utility. Imperfect substitute/complements are somewhere between these extremes.

They are very unlikely to be concave to the origin due to the theory of diminishing marginal returns - "the marginal rate of substitution approaches 0 as we move down and right along an indifference curve".

# 20/1/15

Utility
-------

Utility is a quantitive measure of the relative rankings of various bundles of goods/services - how much value a consumer obtains by consuming these values. If one prefers a bundle A over a bundle $B$, then the utility of A is greater than that of B. This is a very powerful way to help us define and work with indifference curves.

As economists, we seek not to judge the preferences of the consumer, but merely to quantify and classify it. As a relative value, utility is an **ordinal measure** (values represent order) rather than a **cardinal measure** (values represent magnitude). As a result, how much a utility value is more than another is not important, only that it is greater.

$U = U(B, Z)$ is a mapping between utility values and a bundle of goods, where $B$ is the quantity of one product and $Z$ is the quantity of another. For example, $U = \sqrt{BZ}$ is known as the Cobb-Douglas utility function.

The **marginal utility** (MU) is the utility that a consumer would obtain from one more unit of a good/service. Mathematically, this is the derivative of the utility function with respect to the good/service being considered - $MU = \frac{\dee U}{\dee B}$ for some quantity of goods/services $B$.

The marginal rate of substitution is the negation of the ratio of marginal utility of one good/service to that of another - $MRS = \frac{\Delta B}{\Delta Z} = -\frac{MU_1}{MU_2}$.

The **budget line/constraint** is the set of the possible bundles of goods that can be bought by a consumer if the consumer's entire budget is spent on these goods at market prices. Graphically, this is represented using the budget line, and is often a simple linear equation. The slope of this line is known as the **marginal rate of transformation** and represents the rate at which the consumer is willing to trade one good for another.

The **opportunity set** is the set of all possible bundles of goods that can be bought by the consumer, including those that do not use the entirety of the budget. Graphically, this is the area inside of the budget line that includes the origin.

A linear budget line generally takes the form $P_B B + P_Z Z = Y$, where $P_B$ and $P_Z$ are the prices of $B$ and $Z$ respectively, and $Y$ is the income of the consumer. This can also be written as $B = \frac{Y - P_Z Z}{P_B}$.

If income changes, the line is shifted along its normal. If any of the prices changes, the line scales ijnversely proportionally in that axis. For example, if the price of one good increases, the budget line is compressed along that axis.

While marginal rate of substitution is based on prices, the marginal rate of transformation is based on utility.

The **optimal bundles** for a consumer are the points on the quantities graph where the budget line meets the highest possible indifference curves - where the utility is maximised within the budget constraint. This happens then the curves are tangent - intersecting and also parallel.

# 22/1/15

Indifference curves, together with budget constraints, can be **used to derive demand curves**. By varying the price of one good while holding the price of all other goods and income of the consumer constant, assuming that we are spending all income on goods/services, we get the standard demand curve. Basically, when we change the price of a good, the budget constraint changes and the optimum bundle point changes (point at which budget constraint is tangent to an indifference curve). When we plot the quantity demanded at this point as price changes, we get a demand curve.

The **income-consumption curve** is a curve plotted on axes where each axis is the quantity consumed of a good/service. The curve is plotted in terms of the amount of each good/service consumed as the income changes.

The **price-consumption** curve is similar, but 

Increases in income cause a shift in the demand curve and movement along the income-consumption curve and the Engel curve (quantity demanded as income changes).

A **normal good** is a commodity whose income elasticity is nonnegative - as income increases, the quantity demanded increases or stays the same. An **inferior good** is the opposite, with less demanded as income increases. It is not possible for all goods to be inferior, since this phenomena occurs due to some being substitutes for others.

The slope of the budget line is the **ratio of prices between the two goods on a plot**. This is how we choose which budget line to draw.

# 27/1/15

The **substitution effect** is a change in the quantity demanded caused by a change in prices (a raise in price causes a decrease in quantity demanded, since consumers just buy cheaper alternatives).

The **income effect** is a change in the quantity demanded caused by a change in consumer income (dependent on income elasticity - for an income increase, quantity demanded decreases for inferior goods and increases for normal goods).

The total effect is the sum of these two effects.

There are also **Giffen goods** where an increase in price actually causes an increase in quantity demanded, like potatoes in Ireland. This is caused by the good being so inferior that buying more uses so much of a consumer's income that their income is lowered to the point where they need to always buy it - the income effect is stronger than the substitution effect. In other words, buying potatoes made people poor enough that they had to keep buying potatoes instead of more expensive foods.

We can derive the supply curve for labor by deriving the demand curve for leisure - all the time not laboring. The time constraint is $W = 24 - L$, where $W$ is hours of work and $L$ is hours of leisure. The price of leisure is the opportunity cost of lost labor - the wage $S$.

We then derive the demand curve for leisure (wage vs. hours of leisure) by obtaining a utility function $U(L, G)$ where $G$ is the amount spent on goods, then drawing the two indifference curves tangent to two budget constraints at different wages. The resulting demand curve is the line passing through the two tangent points.

The supply curve for labor is exactly the demand curve for leisure mirrored horizontally. Therefore, if we mirror this demand curve, we get the supply curve for labor - the wage at which people are willing to work for a certain number of hours.

Leisure is a normal good since an increase in income leads to more leisure - caused by the income effect.

For goods that are perfect complements, the substitution effect is 0 since the indifference curves are perfectly right angled.

The income elasticity of supply is important because if positive, an income tax reduces hours worked and reduces production, and if it is negative, an income tax increases hours and increases production.

# 29/1/15

;wip: I missed this class due to an interview

# 3/2/15

;wip: I missed this class due to dental appointment

;wip: midterm on thursday at QNC 1507 Thursday Feb. 5, during class time, covers chapters 1-5 in perloff, bring pencil, pen, protractor, calculator