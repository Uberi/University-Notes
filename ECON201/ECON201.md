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

The **total demand** for a product is the sum of the demand curves for all the consumers in the market. Basically, we are adding together all the quantities demanded. Mathematically, we add up all the demand functions to get the total demand.

The **supply curve** is the quantity that can be supplied tat given prices. There is **no law of supply**, although many supply curves slope upward. There are also external factors that affect and shift the entire supply curve, like taxes.

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
