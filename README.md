

This is a repository of statistics questions designed to be used with the [R package exams](http://www.google.es/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&uact=8&ved=0CCEQFjAA&url=http%3A%2F%2Fcran.r-project.org%2Fpackage%3Dexams&ei=s_RQVPK-GZLwaMOjgeAH&usg=AFQjCNE9Ptk-koSUDxnL3UFCcTYLvL2C4w&sig2=MiRLL0PGEwYkJEgKZvRgqA&bvm=bv.78597519,d.d2s).

## Thesaurus
### 00 Rounding numbers
 * 101010 Round a number to k significant digits

### 01 Descriptive statistics
 * 01010101 Mean
 * 01010301 Median
 * 01020101 Variance (population)
 * 01020201 Stardard deviation (population)

### 02 Probability

  * **02000 Properties**
    * 020001 Given $P(A)$, $P(B)$ and $P(A\cap B)$, calculate $P(A\cup B)$
    * 020002 Given $P(A)$, $P(B)$ and $P(A\cup B)$, calculate $P(A\cap B)$
    * 020003 Given $P(A)$, $P(B)$ and $P(A\cup B)$, calculate $P((A\cap B)^c)$
    * 020004 Given $P(A)$, $P(B)$ and $P(A\cap B)$, calculate $P((A\cup B)^c)$

  * **0201 Laplace's rule**
    * 020101 Coloured balls 1
    * 020102 Coloured balls 2
    * 020103 French roulette 1
    * 020104  French roulette 2

  * **0202 Conditional probability**
    * 020201 Independent events
    * 020202 Definition of conditioned probability
    * 020203 Two-ways table

  * **0204 Combinatorial**

  * **0205 Total probability**

  * **0206 Bayes Theorem**
    * 020601 Basic
    * 020602  factory workers
    * 020603 Diagnostic test

### 03 Random variables, general theory

#### 0301 General discrete random variables
  * **030101-Density**
    *
  * **030102 Mean**
    * 03010201 Calculate mean from a table
    * 03010202 Given the mean, complete a table
    * 03010203 Fear game
  * **030103 Variance and standard deviation**
    * 03010301 Variance discrete random variable
    * 03010302 Standard deviation continuous random variable
  * **030104 affine combinations of discrete random variables**
    * 03010401 Mean
    * 03010402 Standard deviation
    * 03010403 Variance
    * 03010404 Mean of the sum of random variables
    * 03010405 Variance of the sum of random variables
  * **030105-Identidad media del cuadrado**
    * 03010501 Dada media y varianza
    * 03010502 Dada media y media cuadrado
  * **030106 Distribution function**
    * 03010601 $P(k_1 < X \leq k_2)$ 
    
#### 0302 General continuous  random variables
  * **030201 Density**
    * 03020101 Chose $k$ so that an (affine-like) function is a density function
    * 03020105  Chose $k$ so that an (trigonometric) function is a density function
  * **030202 Mean**
    * 03020201 Mean,  affine-like density function function
    * 03020205 Mean,  trigonometric density function function
  * **030203 Variance and standard deviation**
    * 03020301 Variance, affine-like density function function.
    * 03020305 Standard deviation, trigonometric density function function
  * **030204 Probabilities**
    * 03020401 Probability of an interval, affine-like density function function.
    * 03020405  Probability of an interval, trigonometric density function function

### 04 Main random variables 
#### 0401 Binomial
  * 040101 $P(X=x)$
  * 040102$P(a<X<b)$
  * 040103P(a=<X<b)
  * 040104 P(a<X=<b)
  * 040105 P(a=<X=<b)
  * 040106 P(X>a)
  * 040107 P(X>=a)
    
#### 0402 Poisson

#### 0403 Normal
  * **040301 Normal Direct probability problem**
    * 04030101 Prob puntual
    * 04030102 $P(a<X<b)$
    * 04030103 $P(X<b)$
    * 04030104 $P(a<X)$
    * 04030105 $P(a\leq X<b)$
    * 04030106 $P(a<X\leq b)$
    * 04030107 $P(a\leq X\leq b)$
  * **040302 Normal Inverse probability problem**
    * 04030201 $P(x<X)=q$
    * 04030202 $P(x>X)=q$
  * **040303 Tipificacion**
    * 04030301 Find $z$ such that $P(z<Z)=P(x<X)$ for $Z\sim N(0,1)$ and $X\sim N(\mu, \sigma)$
    
#### 0404 t de Student
  * **040401 t Student direct probability problem**
    * 04040101 $P(a<X<b)$
    * 04040102 $P(X<b)$
    * 04040103 $P(a<X)$
* **040402 t Student inverse probability problem**
    * 04040201 $P(x<X)=q$
    * 04040202 $P(x>X)=q$ 


#### 0405 Chi cuadrado
  * **040501 Chi cuadrado Direct probability problem**
    * 04050101 $P(a<X<b)$
    * 04050102 $P(X<b)$
    * 04050103 $P(a<X)$
  * **040502 Chi cuadrado Inverse probability problem**
    * 04050201 $P(x<X)=q$
    * 04050202 $P(x>X)=q$
    
#### 0406 F Fisher
  * **040601 Chi cuadrado Direct probability problem**
    * 04060101 $P(a<X<b)$
    * 04060102 $P(X<b)$
    * 04060103 $P(a<X)$
  * **040602 Chi cuadrado Inverse probability problem**
    * 04060201 $P(x<X)=q$
    * 04060202 $P(x>X)=q$

#### 0406 Uniforme

### 05 Confidence intervals
* **0501 Mean, normal random variable, known variance**
  * 050101 Interval bottom
	* 050102 Interval top
* **0502 Mean, normal random variable, n>30**
	* 050201 Interval bottom
	* 050202 Interval top
* **0503 Mean, normal random variable, n<30**
	* 050301 Interval bottom
	* 050302 Interval top
* **0504 Proportion, normal random variable,  n>30** 
	* 050401 Interval bottom
	* 050402 Interval top
* **0505 Standard deviation, normal random variable**
	* 050501 Interval bottom
	* 050502 Interval top
* 0506
* 0507
* 0508
* 0509

### 06 Test hypothesis
#### 0601 Mean, normal random variable, n>30  
 * 060101  $H_a:\, \mu > \mu_0$
 * 060102  $H_a:\, \mu < \mu_0$
 * 060103  $H_a:\, \mu \neq \mu_0$

#### 0602 Mean, normal random variable, n<30  
 * 060201 $H_a:\, \mu > \mu_0$
 * 060202 $H_a:\, \mu < \mu_0$
 * 060203 $H_a:\, \mu \neq \mu_0$
  
#### 0603 Proportion, normal random variable, n>30  
 * 060301 $H_a:\, p > p_0$
 * 060302 $H_a:\, p < p_0$
 * 060303 $H_a:\, p \neq p_0$
  
#### 0604 Variance, normal random variable.
 * 060401  $H_a:\, \sigma > \sigma_0$
 * 060402  $H_a:\, \sigma < \sigma_0$
 * 060403 $H_a:\, \sigma \neq \sigma_0$

#### 0605 Mean, Poisson


#### 0606 Difference of means
* 060601 Known variances
* 060602 Unknown variances, large samples
	* 06060201 $H_a:\, \mu_1 > \mu_2$
	* 06060202 $H_a:\, \mu_1 < \mu_2$
	* 06060203 $H_a:\, \mu_1 \neq \mu_2$
  
* 060603 Unknown equal variances, small samples
	* 06060301 $H_a:\, \mu_1 > \mu_2$
	* 06060302 $H_a:\, \mu_1 < \mu_2$
	* 06060303 $H_a:\, \mu_1 \neq \mu_2$
  
* 060604 Unknown different variances, small samples
	* 06060401 $H_a:\, \mu_1 > \mu_2$
	* 06060402 $H_a:\, \mu_1 < \mu_2$
	* 06060403 $H_a:\, \mu_1 \neq \mu_2$

#### 0607 Difference of proportions
* 060701 $H_a:\, p_1 > p_2$
* 060702 $H_a:\, p_1 < p_2$
* 060703 $H_a:\, p_1 \neq p_2$

#### 0608 Quotient of variances
* 060801 $H_a:\, \sigma_1 > \sigma_2$
* 060802 $H_a:\, \sigma_1 < \sigma_2$
* 060803 $H_a:\, \sigma_1 \neq \sigma_2$
  
### 10 Linear regression

### 11 Chi square test

### 12 One way Anova


 

