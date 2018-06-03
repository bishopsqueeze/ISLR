# Chpater 03 / Applied 08
library(MASS)
library(ISLR)

#------------------------------------------------------------------------
# (a) use lm() function to perform linear regression with mpg as response 
# and horsepower as the predictor.  Comment on the output
#------------------------------------------------------------------------
tmp.lm <- lm(mpg ~ horsepower, data=Auto)
summary(tmp.lm)
predict(tmp.lm, data.frame(horsepower=c(98)), interval="confidence")
# Coefficients:
# Estimate Std. Error t value Pr(>|t|)    
#  (Intercept) 39.935861   0.717499   55.66   <2e-16 ***
#  horsepower  -0.157845   0.006446  -24.49   <2e-16 ***
# ---
# Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
#
# Residual standard error: 4.906 on 390 degrees of freedom
# Multiple R-squared:  0.6059,	Adjusted R-squared:  0.6049 
# F-statistic: 599.7 on 1 and 390 DF,  p-value: < 2.2e-16
#------------------------------------------------------------------------
# dim(Auto) = [392, 9]; so n >> p
# (i) The F-stat is ~ 600, which suggests at least one predictor is
#   significant. The horesepower t-val is significant which suggestes 
#   an increase in horsepower translates into a decrease in mpg.
# (ii) Significant @ the 0.1% level
# (iii) Negative
# (iv)
#   fit     lwr      upr
#   24.46708 14.8094 34.12476
#------------------------------------------------------------------------


#------------------------------------------------------------------------
# (c) Use the plot function to comment on any problems with the fit
#------------------------------------------------------------------------
# - The fitted residuals are non-linear, with a couple of identified outliers
# - The normal QQ plot show a systematic deviation in tail obserations
# - [???] <Standardized residuals range from [0, 2]> 
# - There are a couple of datapoints with high leverage (94, 117), most
#   of the observations have small leverage but there is a tail of values
#   that appear to correlate with increasing standardized residuals
#------------------------------------------------------------------------

