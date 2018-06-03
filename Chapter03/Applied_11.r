# Chpater 03 / Applied 1
library(MASS)
library(ISLR)

set.seed(1)
x <- rnorm(100)
y <- 2*x + rnorm(100)
plot(y ~ x)

#------------------------------------------------------------------------
# (a) No intercept regression
#------------------------------------------------------------------------
tmp.lm <- lm(y ~ x - 1)
summary(tmp.lm)

#------------------------------------------------------------------------
# Call:
#  lm(formula = y ~ x - 1)
#
# Residuals:
#  Min     1Q     Median   3Q     Max 
# -1.9154 -0.6472 -0.1771  0.5056  2.3109 
#
#Coefficients:
#     Estimate Std. Error t value Pr(>|t|)    
# x   1.9939     0.1065   18.73   <2e-16 ***
#  ---
#  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
#
# Residual standard error: 0.9586 on 99 degrees of freedom
# Multiple R-squared:  0.7798,	Adjusted R-squared:  0.7776 
# F-statistic: 350.7 on 1 and 99 DF,  p-value: < 2.2e-16
#------------------------------------------------------------------------

# Results suggest the coefficient is signficant and consistent with 2, 
# but the confidence bands are wide

#------------------------------------------------------------------------
# (b) Intercept regression
#------------------------------------------------------------------------
tmp.lm2 <- lm(y ~ x)
summary(tmp.lm2)

#Call:
#  lm(formula = y ~ x)
#
# Residuals:
#   Min      1Q  Median      3Q     Max 
# -1.8768 -0.6138 -0.1395  0.5394  2.3462 
#
# Coefficients:
#              Estimate Std. Error t value Pr(>|t|)    
# (Intercept) -0.03769    0.09699  -0.389    0.698    
# x            1.99894    0.10773  18.556   <2e-16 ***
#  ---
#  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
#
# Residual standard error: 0.9628 on 98 degrees of freedom
# Multiple R-squared:  0.7784,	Adjusted R-squared:  0.7762 
# F-statistic: 344.3 on 1 and 98 DF,  p-value: < 2.2e-16

# Here the intercept is not significant.  The value and standard errors
# suggest it is consistent with zero

#------------------------------------------------------------------------
# (f)) Example of y ~ x vs. x ~ y t-statistic
#------------------------------------------------------------------------
tmp.lm3 <- lm(x ~ y)

