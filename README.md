

This is a repository of statistics questions designed to be used with the [R package exams](http://www.google.es/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&uact=8&ved=0CCEQFjAA&url=http%3A%2F%2Fcran.r-project.org%2Fpackage%3Dexams&ei=s_RQVPK-GZLwaMOjgeAH&usg=AFQjCNE9Ptk-koSUDxnL3UFCcTYLvL2C4w&sig2=MiRLL0PGEwYkJEgKZvRgqA&bvm=bv.78597519,d.d2s).   

## How does it work? 
We assume that you have, at least, an updated [distribution of R](https://cran.r-project.org/) 
installed in your computer. If you are new in `R`, probably you would like to install also the interface [RStudio](https://www.rstudio.com/).  

If this is your first time, you can start to download the file "just a test" (see below), which contains the necessary files for you compile three versions of the same test. It will serve as a template and can easily adapt it to your needs. More detailed information on quiestion types and quiz structure can be found [here](tutorial) (only in Spanish).  Complete information on the exams package is available [here](https://cran.r-project.org/web/packages/exams/vignettes/exams.pdf) (but we think it's best to start with the easiest).

### Generate an exam

Just a quik look? Download [this zip file](ExamineR-just-a-try.zip), unzip it, open it and run the `ExamineR-exam-generator.R` file in the R terminal or RSturio (read the file before running). Essentially, you are doing the following:

  * You need to at the same folder 
     * The desired questions
     * The quizzes and answers templates (customize them, if needed!)
     * The `ExamineR-exam-generator.R` file
  * Open the file `ExamineR-exam-generator.R` and follow the instructions
  * Consider to include a `set.seed()` sentence as, otherwise, each compilation will produce a "different" exam

### StudentR: one student, one exam
Or how to print one exam for each student with the same questions (or not) but personalized data. Just a quik look? Download Download [this zip file](SrudentR-just-a-try.zip), unzip it, open it and run `SudentR_template.R` in the R terminal or RSturio (read the file before running). Essentially:

  * You need to at the same folder 
     * The desired questions
     * The exam ans response templates (customize them, if needed!)
     * The `ExamGeneratoPro.R` file
     * A `*.csv` file with the student's details: number, name, surname `ExamGenerator.R` file.
  * Open the file `ExamGeneratorPro.R` and follow the instructions.
  * Each student will have its own exam: the process generates also a table in *.csv format with the solutions for each exam


## Thesaurus

  * Lenguage: en - English, es - Spanish
  * Question type: num - numeric, mult - multiple choice, txt - string (short answer)

### 00 Rounding numbers
 * 000001 Round a number between 0 and 10 to 3-5 significant digits (en - es - num)
 * 000002 Round a number between 0.01 and 1 to 3-5 significant digits (en - es - num) 
 * 000003 Round a number between 100 and 100000 to 3-5 significant digits (en - es - num)
 * 000004 Round a large number to 3-6 significant digits (en - es - num)
 
### 01 Descriptive statistics
#### 0101 Central values  
 * 01010101 Mean (en - es - num)
 * 01010301 Median (en - es - num)

#### 0102 Dispersal
 * 01020101 Population variance (en - es - num)
 * 01020201 Population stardard deviation (en - es - num)
 * 01020301 Sample variance (en - es - num) 
 * 01020401 Sample stardard deviation (en - es - num)

#### 0103 Graphics
 * 010301 Pie and bar graphs - not yet
 * 010302 Histograms - not yet
 * 010303 Boxplots - not yet
 * 010304 Catchall
     * 01030401 Given a boxplot, identify the corresponding histogram
     * 01030402 Given a histogram, identify the corresponding boxplot


### 02 Probability

#### 0200 Properties
 * 020001 Given $P(A)$, $P(B)$ and $P(A\cap B)$, calculate $P(A\cup B)$ (en - es - num)
 * 020002 Given $P(A)$, $P(B)$ and $P(A\cup B)$, calculate $P(A\cap B)$ (en - es - num)
 * 020003 Given $P(A)$, $P(B)$ and $P(A\cup B)$, calculate $P((A\cap B)^c)$ (en - es - num)
 * 020004 Given $P(A)$, $P(B)$ and $P(A\cap B)$, calculate $P((A\cup B)^c)$ (en - es - num)

#### 0201 Laplace's rule
 * 020101 Coloured balls 1 (en - es - num)
 * 020102 Coloured balls 2 (en - es - num)
 * 020103 French roulette 1 (en - es - num)
 * 020104 French roulette 2 (en - es - num)

#### 0202 Conditional probability
 * 020201 Independent events (en - es - num)
 * 020202 Definition of conditional probability (en - es - num)
 * 020203 Two-ways table (en - es - num)

#### 0204 Combinatorial

#### 0205 Total propability theorem

 * Not yet

#### 0206 Bayes theorem
 * 020601 Basic (en - es - num)
 * 020602 factory workers (en - es - num)
 * 020603 Diagnostic test - not yet

### 03 Random variables, general theory

#### 0301 General discrete random variables
  * 030101-Density
    *
  * 030102 Mean
    * 03010201 Calculate mean from a table (en - es - num)
    * 03010202 Given the mean, complete the mass function table (en - es - num)
    * 03010203 Fear game (en - es - num)
  * 030103 Variance and standard deviation
    * 03010301 Variance discrete random variable (en - es - num)
    * 03010302 Standard deviation continuous random variable (en - es - num)
  * 030104 affine combinations of discrete random variables
    * 03010401 Mean (en - es - num)
    * 03010402 Standard deviation (en - es - num)
    * 03010403 Variance (en - es - num)
    * 03010404 Mean of the sum of random variables (en - es - num)
    * 03010405 Variance of the sum of random variables (en - es - num)
  * 030105 Mean Square identity
    * 03010501 Known mean and variance (en - es - num)
    * 03010502 Known mean and mean square (en - es - num)
  * 030106 Distribution function
    * 03010601 $P(k_1 < X \leq k_2)$ (en - es - num)
    
#### 0302 General continuous  random variables
  * 030201 Density
    * 03020101 Chose $k$ so that an (affine-like) function is a density function (en - es - num)
    * 03020105 Chose $k$ so that an (trigonometric) function is a density function (en - es - num)
  * 030202 Mean
    * 03020201 Mean, affine-like density function function (en - es - num)
    * 03020205 Mean, trigonometric density function function (en - es - num)
  * 030203 Variance and standard deviation
    * 03020301 Variance, affine-like density function function (en - es - num)
    * 03020305 Standard deviation, trigonometric density function function (en - es - num)
  * 030204 Probabilities
    * 03020401 Probability of an interval, affine-like density function function  (en - es - num)
    * 03020405 Probability of an interval, trigonometric density function function (en - es - num)

### 04 Main random variables 
#### 0401 Binomial
  * 040101 $P(X=x)$ (en - es - num)
  * 040102 $P(a<X<b)$ (en - es - num)
  * 040103 $P(a\leq X<b)$ (en - es - num)
  * 040104 $P(a<X=<b)$ (en - es - num)
  * 040105 $P(a\leq X\leq b)$ (en - es - num)
  * 040106 $P(X>a)$ (en - es - num)
  * 040107 $P(X\geq a)$ (en - es - num)
    
#### 0402 Poisson
  * 040201 $P(X=x)$ (en - es - num)
  * 040202 $P(a<X<b)$ (en - es - num)
  * 040203 $P(a\leq X<b)$ (en - es - num)
  * 040204 $P(a<X=<b)$ (en - es - num)
  * 040205 $P(a\leq X\leq b)$ (en - es - num)
  * 040206 $P(X>a)$ (en - es - num)
  * 040207 $P(X\geq a)$ (en - es - num)

#### 0403 Normal
  * 040301 Normal Direct probability problem
    * 04030101 $P(X=x)$ (en - es - num)
    * 04030102 $P(a<X<b)$ (en - es - num)
    * 04030103 $P(X<b)$ (en - es - num)
    * 04030104 $P(a<X)$ (en - es - num)
    * 04030105 $P(a\leq X<b)$ (en - es - num)
    * 04030106 $P(a<X\leq b)$ (en - es - num)
    * 04030107 $P(a\leq X\leq b)$ (en - es - num)
  * 040302 Normal Inverse probability problem (quantiles or critic value)
    * 04030201 $P(x<X)=q$ (en - es - num)
    * 04030202 $P(x>X)=q$ (en - es - num)
  * 040303 Tipificacion
    * 04030301 Find $z$ such that $P(z<Z)=P(x<X)$ for $Z\sim N(0,1)$ and $X\sim N(\mu, \sigma)$ (en - es - num)
    
#### 0404 t de Student
  * 040401 t Student direct probability problem
    * 04040101 $P(a<X<b)$ (en - es - num)
    * 04040102 $P(X<b)$ (en - es - num)
    * 04040103 $P(a<X)$ (en - es - num)
  * 040402 t Student inverse probability problem
    * 04040201 $P(x<X)=q$ (en - es - num)
    * 04040202 $P(x>X)=q$ (en - es - num)


#### 0405 Chi cuadrado
  * 040501 Chi cuadrado Direct probability problem
    * 04050101 $P(a<X<b)$ (en - es - num)
    * 04050102 $P(X<b)$ (en - es - num)
    * 04050103 $P(a<X)$ (en - es - num)
  * 040502 Chi cuadrado Inverse probability problem
    * 04050201 $P(x<X)=q$ (en - es - num)
    * 04050202 $P(x>X)=q$ (en - es - num)
    
#### 0406 F Fisher
  * 040601  Chi cuadrado Direct probability problem
    * 04060101 $P(a<X<b)$ (en - es - num)
    * 04060102 $P(X<b)$ (en - es - num)
    * 04060103 $P(a<X)$ (en - es - num)
  * 040602 Chi cuadrado Inverse probability problem
    * 04060201  $P(x<X)=q$ (en - es - num)
    * 04060202  $P(x>X)=q$ (en - es - num)

#### 0407 (negative) exponential
  * 040601  Exponential Direct probability problem
    * 04060101 $P(a<X<b)$ (en - es - num)
    * 04060102 $P(X<b)$ (en - es - num)
    * 04060103 $P(a<X)$ (en - es - num)
  * 040602 Exponential Inverse probability problem
    * 04060201  $P(x<X)=q$ (en - es - num)
    * 04060202  $P(x>X)=q$ (en - es - num)

#### 0408 Uniform

### 05 Confidence intervals
#### 0501 Mean, normal random variable, known variance
 * 050101  Interval bottom (en - es - num)
 * 050102  Interval top (en - es - num)
 
#### 0502 Mean, normal random variable, n>30
 * 050201  Interval bottom (en - es - num)
 * 050202  Interval top (en - es - num)
 
#### 0503 Mean, normal random variable, n<30
 * 050301  Interval bottom (en - es - num)
 * 050302  Interval top (en - es - num)
 
#### 0504 Proportion, normal random variable,  n>30
 * 050401  Interval bottom (en - es - num)
 * 050402  Interval top (en - es - num)
 
#### 0505 Standard deviation, normal random variable
 * 050501  Interval bottom (en - es - num)
 * 050502  Interval top (en - es - num)

### 06 Test hypothesis

#### 0600 Set the null and the alternative hypotheses

 * 060001: the mean  
    * 06000101 $H_a:\, \mu > \mu_0$ (es - txt)
    * 06000102 $H_a:\, \mu < \mu_0$ (es - txt)
    * 06000103 $H_a:\, \mu \neq \mu_0$ (es - txt)

 * 060002: the proportion  
    * 06000201 $H_a:\, p > p_0$ (es - txt)
    * 06000202 $H_a:\, p < p_0$ (es - txt)
    * 06000203 $H_a:\, p \neq p_0$ (es - txt)

 * 060003: the variance 
    * 06000301 $H_a:\, \sigma > \sigma_0$ (es - txt)
    * 06000302 $H_a:\, \sigma < \sigma_0$ (es - txt)
    * 06000303 $H_a:\, \sigma \neq \sigma_0$ (es - txt)

 * 060004: difference of means  
    * 06000401 $H_a:$ one sided (es - txt)
    * 06000402 $H_a:$ two sided (es - txt)    
    
 * 060005: difference of proportions 
    * 06000501 $H_a:$ one sided (es - txt)
    * 06000502 $H_a:$ two sided (es - txt)    

 * 060006: ration of variances 
    * 06000601 $H_a:$ one sided (es - txt)
    * 06000602 $H_a:$ two sided (es - txt)    



#### 0601 Mean, normal random variable, n>30  
 * 060101 $H_a:\, \mu > \mu_0$, p-value (en - es - num)
 * 060102 $H_a:\, \mu < \mu_0$, p-value (en - es - num)
 * 060103 $H_a:\, \mu \neq \mu_0$, p-value (en - es - num)
 * 060104 $H_a:\, \mu > \mu_0$, find the rejection region (in the problem's units) (en - es - num)
 * 060105 $H_a:\, \mu < \mu_0$, find the rejection region (in the problem's units) (en - es - num)
 * 060106 $H_a:\, \mu \neq \mu_0$, find the rejection region (lowerbound, in the problem's units) (en - es - num)
 * 060107 $H_a:\, \mu \neq \mu_0$, find the rejection region (upper bound, in the problem's units) (en - es - num)



#### 0602 Mean, normal random variable, n<30  
 * 060201  $H_a:\, \mu > \mu_0$, p-value (en - es - num)
 * 060202  $H_a:\, \mu < \mu_0$, p-value (en - es - num)
 * 060203   $H_a:\, \mu \neq \mu_0$, p-value (en - es - num)
 * 060204   $H_a:\, \mu > \mu_0$, find the rejection region (in the problem's units) (en - es - num)
 * 060205   $H_a:\, \mu < \mu_0$, find the rejection region (in the problem's units) (en - es - num)
 * 060206    $H_a:\, \mu \neq \mu_0$, find the lower rejection region (in the problem's units) (en - es - num)
 * 060207    $H_a:\, \mu \neq \mu_0$, find the upper rejection region  (in the problem's units) (en - es - num)
 
#### 0603 Proportion, normal random variable, n>30  
 * 060301  $H_a:\, p > p_0$, p-value (en - es - num)
 * 060302  $H_a:\, p < p_0$, p-value (en - es - num)
 * 060303   $H_a:\, p \neq p_0$, p-value (en - es - num)
 * 060304   $H_a:\, p > p_0$, find the rejection region (in the problem's units) (es - num)
 * 060305   $H_a:\, p < p_0$, find the rejection region (in the problem's units) (es - num)
 * 060306    $H_a:\, p \neq p_0$, find the rejection region (lower bound, in the problem's units) (es - num)
 * 060307    $H_a:\, p \neq p_0$, find the rejection region (upper bound, in the problem's units) (es - num)
 * 060308   $H_a:\, p > p_0$, find the lower number of successes leading to reject H0 (es - num)
 * 060309   $H_a:\, p < p_0$, find the larger number of successes leading to reject H0 (es - num)
 * 060310    $H_a:\, p \neq p_0$, find the lower number of successes leading to reject H0 (es - num)
 * 060311    $H_a:\, p \neq p_0$, find the larger number of successes leading to reject H0 (es - num)
 
#### 0604 Variance, normal random variable.
 * 060401   $H_a:\, \sigma > \sigma_0$, p-value (en - es - num)
 * 060402   $H_a:\, \sigma < \sigma_0$, p-value (en - es - num)
 * 060403   $H_a:\, \sigma \neq \sigma_0$, p-value (en - es - num)

#### 0605 Mean, Poisson


#### 0606 Difference of means
* 060601  Known variances
     * 06060101  Known variances $H_a:\, \mu_1 > \mu_2$, p-value (en - es - num)
     * 06060102  Known variances $H_a:\, \mu_1 < \mu_2$, p-value (en - es - num)
     * 06060103  Known variances $H_a:\, \mu_1 = \mu_2$, p-value (en - es - num)     

* 060602 Unknown variances, large samples
	* 06060201  $H_a:\, \mu_1 > \mu_2$, p-value (en - es - num)
	* 06060202  $H_a:\, \mu_1 < \mu_2$, p-value (en - es - num)
	* 06060203  $H_a:\, \mu_1 \neq \mu_2$, p-value (en - es - num)
	* 06060204  $H_a:\, \mu_1 > \mu_2$, means' difference to reject $H_0$ p-value (es - num)
	* 06060205  $H_a:\, \mu_1 < \mu_2$, means' difference to reject $H_0$ (es - num)
	* 06060206  $H_a:\, \mu_1 \neq \mu_2$, means' difference to reject $H_0$ (es - num)
  
* 060603 Unknown equal variances, small samples
	* 06060301  $H_a:\, \mu_1 > \mu_2$, p-value (en - es - num)
	* 06060302  $H_a:\, \mu_1 < \mu_2$, p-value (en - es - num)
	* 06060303  $H_a:\, \mu_1 \neq \mu_2$, p-value (en - es - num)
  
* 060604 Unknown different variances, small samples
	* 06060401  $H_a:\, \mu_1 > \mu_2$, p-value (en - es - num)
	* 06060402  $H_a:\, \mu_1 < \mu_2$, p-value (en - es - num)
	* 06060403  $H_a:\, \mu_1 \neq \mu_2$, p-value (en - es - num)

#### 0607 Difference of proportions
* 060701  $H_a:\, p_1 > p_2$ (en - es - num)
* 060702  $H_a:\, p_1 < p_2$ (en - es - num)
* 060703  $H_a:\, p_1 \neq p_2$ (en - es - num)
* 060704  $H_a:\, p_1 > p_2$  proportions' difference to reject $H_0$ (es - num) 
* 060705  $H_a:\, p_1 < p_2$  proportions' difference to reject $H_0$ (es - num)
* 060706  $H_a:\, p_1 \neq p_2$  proportions' difference to reject $H_0$ (es - num)

#### 0608 Quotient of variances
* 060801  $H_a:\, \sigma_1 > \sigma_2$ (en - es - num)
* 060802  $H_a:\, \sigma_1 < \sigma_2$ (en - es - num)
* 060803  $H_a:\, \sigma_1 \neq \sigma_2$ (en - es - num)
  
### 07 Linear regression $y = b_0+b_1 x$  (by default, samples of large size)
#### 0701 Coefficients
 * 070101 Calculate b0 from data in a trable (es - num)
 * 070102 Calculate b1 from data in a trable (es - num)

#### 0702 Predicted values and residuals
 * 070201 Given x_i, calculate the predicted value  (es - num)
 * 07020101 Given x_i, calculate the predicted value, small samples  (es - num) 
 * 070202 Calculate a residual (es - num)

#### 0703 Inference 
 * 070301 Confidence interval for the intercep, lower limit (es - num)
 * 070302 Confidence interval for the intercep, upper limit (es - num)
 * 070303 Confidence interval for the slope, lower limit (es - num)
 * 070304 Confidence interval for the slope, upper limit (es - num)
 * 070305 Test hypothesis H0: beta1 = 0 (es - num)
 * 07030501 Test hypothesis H0: beta1 = 0, small samples (es - num) 

#### 0704 Hypotheses for linear regresion
* 070401 do residuals follow a normal distribution?  (es - num)
* 070401 do residuals follow a normal distribution (it does NOT follow it)?  (es - num)


### 08 Chi square test

#### 0801 Independency test 
* 08010101 calculate a expected value, table 2 x 2 (es - num)
* 08010102 calculate a expected value, table 3 x 4 (es - num) 
* 08010201 p-value, table 2 x 2 (es - num)
* 08010202 p-value, table 3 x 4 (es - num)

#### 0802 Homogeneity test 
* 08020101 calculate a expected value, table 2 x 2 (es - num)
* 08020201 p-value, table 2 x 2 (es - num)

### 09 One way Anova
* 09010101 5 treatments, is the test significant? (es - num)
* 09010201 5 treatments, do the samples belong to a normal population? (yes) (es - num)
* 09010202 5 treatments, do the samples belong to a normal population? (no) (es - num)
* 09010203 5 treatments, homocedasticity? (yes) (es - num)
* 09010204 5 treatments, homocedasticity? (no) (es - num)
* 09010301 5 treatments, Bonferroni, pair comparison (es - num)
* 09010301 5 treatments, order the means (es - num)
 

