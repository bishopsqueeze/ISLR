# Chpater 03 / Applied 09
library(MASS)
library(ISLR)

#------------------------------------------------------------------------
# (a) Produce the scatterplot matrix of predictors
#------------------------------------------------------------------------

#------------------------------------------------------------------------
# (b) Produce the correlation matrix
#------------------------------------------------------------------------
# I'm not sure what the 'everything' tag really does, but using this 
# term enables non-NA results in the correlation matrix.

# The correlation matrix shows that several of the predictors are highly 
# correlated
cor(Auto[, 1:8], use="everything")

#------------------------------------------------------------------------
# (c) Produce the correlation matrix
#------------------------------------------------------------------------
tmp.lm <- lm(mpg ~ cylinders+displacement+horsepower+weight+acceleration+year+origin, data=Auto)
summary(tmp.lm)

# Call:
#  lm(formula = mpg ~ cylinders + displacement + horsepower + weight + 
#       acceleration + year + origin, data = Auto)
#
# Residuals:
#  Min      1Q  Median      3Q     Max 
# -9.5903 -2.1565 -0.1169  1.8690 13.0604 
#
# Coefficients:
#  Estimate Std. Error t value Pr(>|t|)    
#  (Intercept)  -17.218435   4.644294  -3.707  0.00024 ***
#  cylinders     -0.493376   0.323282  -1.526  0.12780    
#  displacement   0.019896   0.007515   2.647  0.00844 ** 
#  horsepower    -0.016951   0.013787  -1.230  0.21963    
#  weight        -0.006474   0.000652  -9.929  < 2e-16 ***
#  acceleration   0.080576   0.098845   0.815  0.41548    
#  year           0.750773   0.050973  14.729  < 2e-16 ***
#  origin         1.426141   0.278136   5.127 4.67e-07 ***
#  ---
#  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

# Residual standard error: 3.328 on 384 degrees of freedom
# Multiple R-squared:  0.8215,	Adjusted R-squared:  0.8182 
# F-statistic: 252.4 on 7 and 384 DF,  p-value: < 2.2e-16

#------------------------------------------------------------------------
# (i) The F-stat suggests at least one coefficient is non-zero
# (ii) The intercept, disp, weight, year, and origin appear significant
# (iii) The year coefficient suggest improvements in mpg with time
# (iv) Still some non-linearity in the residuals & not fitting the upper 
#      tail, and there is a large leverage datapoint (14)
#------------------------------------------------------------------------

