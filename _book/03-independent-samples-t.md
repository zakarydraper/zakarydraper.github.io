# Independent Samples *t* Tests {#ist}

## Learning Objectives {#ist-learning-objectives}

After completing this lab, you should be able to do the following using R:

* Conduct both Student's and Welch's independent samples *t* tests.
* Compute Cohen's *d* by conversion from the test statistic using `psych::t2d()` or by computing Cohen's *d* directly using `psych::cohen.d()`.
* Create appropriate visualizations for comparisons of two independent samples (as described in the assignment instructions).
* Produce a single figure with plots for each level of a grouping variable using `ggplot2::facet_wrap()`.
* Calculate group-level descriptive statistics using `describeBy()`.

Additionally, you should be able to:

* Evaluate the assumptions of independent samples *t* tests.
* Explain the difference between Student's *t* tests and Welch's *t* tests.
* Accurately interpret the results of independent samples *t* tests.
* Report the results of independent samples *t* tests in APA style.

## The Study: Social Identity {#ist-study}

### Study Information

#### Description

People desire positive social identities. A positive social identity is achieved when the social groups to which one belongs (i.e., the "ingroups") are perceived as favourable to the social groups to which they do not belong (i.e., the "outgroups"). Such positive social identities are most often fostered by favouring ingroup members, rather than by devaluing outgroups. As such, people tend to feel positively towards those they see as part of their ingroup.

The desire for a positive social identity can lead to discrimination when positive feelings are reserved for one's ingroup. However it can also promote acceptance of diversity. Preserving positive social identities requires accepting diversity within one's social groups. As such, broadly defining one's ingroup can foster a greater acceptance of diversity. Therefore, encouraging the adoption of broad social groups has been proposed as a means of combatting discrimination.

Of course changing how people define their ingroup is difficult. It can occur when one changes social groups, such as when one moves to a new community, makes new friends, or changes political parties. More often however, broadening one's ingroup is accomplished by strengthening ties with existing groups. That is, rather than changing the social groups to which they belong, people are more likely to change which social groups they see as important to their social identities.

This study will examine one mechanism by which people determine the importance of social groups to their social identities: perceived social group threat. Research has demonstrated that people strengthen ties to social groups when they perceive those groups as threatened in some way. This was evident in the aftermath of the 9/11 attacks on the United States. Many US citizens felt a threat to their American social identity. This led to a dramatic outpouring of displays of patriotism, such as flying the US flag on one's property.

Research conducted in the time after the 9/11 attacks revealed that one impact of this increased patriotism was a a greater tolerance for domestic multiculturalism. That is, people who felt a threat to their American social identity, were more accepting of diversity among American citizens.

One study conducted in that time utilized an experimental manipulation wherein some participants were introduced to a threat American social identity prior to being asked their agreement with statements related to American multiculturalism [@davies2008]. This study will investigate a similar effect using a Canadian sample. Although Canada and United States are similar in many ways, their political climates are distinct. Additionally, the political climate in Canada and the United States has changed in the years since this research was conducted. Political convictions are more rigid than they were. These factors could mean that the effects observed among Americans in 2001 will be different than what can be expected among Canadians today.

#### Hypothesis

It is expected that Canadians who are primed to perceive a threat to Canadian social identity, will be more accepting of multiculturalism in Canada.

### Design Plan

#### Study Design

This study will employ an experimental design adapted from experiment 3 of @davies2008. Participants will read a brief newspaper article describing either a foreign or domestic event that could be perceived as threatening to Canadians. They will then complete a measure of national identity. Participants will be recruited at in-person public events throughout the Okanagan during the summer of 2021. Research assistants will operate tables at events throughout the summer. For completing the study, participants will be offered $5.00 food vouchers redeemable at participating vendors at the event. Recruitment will continue until sufficient data are obtained or until the summer's end.

Individuals must be at least 18-years-old and Canadian citizens to be eligible to participate.

<!-- Participants will read what they are told is a policy from a member of parliament, printed on Canadian government letterhead. The policy will endorse either domestic assimilation or multiculturalism. The original study included four conditions that differentiated between foreign and domestic assimilation and multiculturalism. However, this study will examine only the effect on domestic policies. The effect of foreign threats on foreign policy have been well-studied. Limiting this study to a comparison of two conditions will give us greater power to detect the effect of primary interest. -->

<!-- The domestic policy statements are adapted from @davies2008. Participants in the assimilation condition will read: -->

<!-- > "It's our culture's destiny to lead, and Canada will lead by example. Our values, principles, and practices are a model for all Canadians to follow." -->

<!-- Participants in the multiculturalism condition will read the policy statement: -->

<!-- > "We now realize it's critical for cultures within Canada to have a reciprocal relationship---a healthy balance of give and take that embraces diversity as a source of strength." -->

<!-- After reading the domestic policy, participants will complete a measure assessing their support of the policy they read. -->

#### Measures

National identity will be measured with items adapted[^1] from @davies2008. They will be measured on a 7-point Likert-type scale ranging from 1 (*not at all*) to 7 (*completely*).

1. Do you identify with being Canadian?
1. Is being Canadian important to you?
1. Are you proud to be a Canadian?
1. Do you think of yourself as a Canadian?

Participant scores will be averaged across these four items to create a composite measure of national identity.

[^1]: The questions are identical to those used by @davies2008 except "Canadian" replaces "American" in all instances.

<!-- The policy endorsement measure includes 5 items taken from @davies2008: -->

<!-- 1. Do you agree with the stated policy? -->
<!-- 1. How close to the ideal is the stated policy? -->
<!-- 1. Does the stated policy reflect your personal values? -->
<!-- 1. Would you publicly support the stated policy? -->
<!-- 1. Is the stated policy insightful? -->

<!-- Participants will respond to these items on a scale of 1 (*not at all*) to 7 (*completely*). -->

#### Analytic Strategy

A directional Welch's *t* test will be conducted with the alternative hypothesis that national identity is higher in the foreign threat condition. Significance will be inferred using the traditional &alpha; = .05.

#### Sample Size and Power Analysis

We plan to recruit 254 participants divided evenly into the two experimental conditions. This will provide 95% power to detect an effect if the effect size in the population is *d* = 0.414.

@davies2008 reported mean national identities of 5.57 and 4.99 for participants who read about foreign and domestic threats, respectively. This amounts to a raw difference of 0.58 on the scale of 1 to 7. Because the *SD*s for national identity were not reported, we cannot know the standardized effect size for this effect. We therefore based our effect size calculation on an assumed pooled *SD* of 1.4. Under this assumption, a raw effect of 0.58 translates to *d* = 0.414.

## Assignment Instructions {#ist-assignment}

Prepare an R script and written report presenting the results of the analysis described in the analytic strategy.

### R Script

Your R script should be reproducible and free of errors. It should contain syntax to do the following:

* Import the data and convert the "condition" variable to a factor.
* Calculate participant mean scores on the 4-item national identity measure.
* Compute descriptive statistics, including *M*, *SD*, skew, and kurtosis of participants' mean national identity. Do this separately for each level of the experimental manipulation. Use `psych::describeBy()` to do this in a single step.
* Conduct Shapiro--Wilk tests of normality for the distributions of national identity in each of the two conditions.
* Compute a Welch's *t* test as described in the analytic strategy.
* Calculate the corresponding Cohen's *d* effect size for the *t* test.

### R Script (Detailed Instructions)

#### Doing a *t* Test

There are two syntax options for conducting independent samples *t* tests using `t.test()`. The first is similar the syntax used for the paired samples *t* test. This involves supplying a numeric vector to the arguments `x` and `y`, which are the first two arguments of `t.test()`. A paired samples *t* test requires the additional argument `paired = TRUE`. To indicate that the samples are independent, the argument should be `paired = FALSE`. The default value is already `paired = FALSE` so not specifying the argument will treat the samples as independent.

So, if I have a `data.frame` called `dta` that looks like this:


```
##   var1 var2
## 1    5    7
## 2   10    1
## 3    2    4
## 4    4    8
## 5    4    2
```

Then I could conduct a *t* test using the following syntax:


```r
t.test(x = dta$var1, y = dta$var2)
```

This would conduct what is called a Welch's *t* test, which I explain below. When you inspected your data, you probably noticed that it is not arranged as the data above. Your data are arranged in a `data.frame` like this:


```
##    var value
## 1    1     7
## 2    1     2
## 3    1     9
## 4    1     1
## 5    1     4
## 6    2     8
## 7    2     1
## 8    2     3
## 9    2     1
## 10   2     7
```

This is probably the most sensible way to arrange data from independent samples. It places observations from different people on separate rows. The prior arrangement had data from different people in different columns. That arrangment implies some connection between data from the same row, when there is none. It technically works when there are only two variables, but that is never the case with real data. You are going to have other information, such as participant IDs, demographic details, and so on that are unique to each participant. There is no sensible way of arranging the data frame that maintains the information about individual participants while placing scores from different participants side-by-side.

So, how do we make this second layout work with `t.test()`? There are two approaches. The first is to use `subset()`.


```r
t.test(
  x = subset(dta, var == 1)$value,
  y = subset(dta, var == 2)$value
)
```

This works, but there is another (in my opinion more elegant) approach as well. This is using the formula notation.

#### Formula Notation

Instead of passing values to `x` and `y`, you can specify a formula and a data frame.


```r
t.test(formula = value ~ var, data = dta)
```

This is telling `t.test()` to predict the values of `value` from the levels of `var`. Note that this does not use the `$` to extract the values from the data frame. Instead, the `data` argument tells `t.test()` where the columns in the formula can be found. Formula notation will continue to show up throughout the course. It always follows the format `outcome ~ predictors`. The `~` (called "tilda") is on your keyboard above the "tab" key. In the context of formula notation it means "is predicted from." In the context of a *t* test, the outcome variable must be numeric and the predictor variable must have only two levels. The `t.test()` function will return an error if either of those things are untrue.

You can then pass additional values to arguments of `t.test()`, such as to `alternative`, `paired`, and `conf.level`.

#### Welch's *t* Test

The above examples have all done a Welch's *t* test. Welch's *t* test is the same as a regular *t* test except that it includes an adjustment for the degrees of freedom. One of the assumptions of *t* tests is equal variance in each of the two samples. This assumption is often not met. For example, in the example you are working on for your assignment, it could be that participants who read about a foreign threat responded more similarly to one another than participants who read about a domestic threat. This would violate the assumption of homogeneity of variance, meaning that the regular *t* test would not be valid. Welch's *t* test adjusts the degrees of freedom based on the degree of heterogenity of variance between the two samples. This will make the *p* value larger but it means that you don't need to assume homogeneity of variance for the test to be valid.

If there is no heterogeneity of variance between the samples, Welch's *t* test will produce the same result as a regular *t* test. As such, it makes sense to just use Welch's *t* test all the time. It removes an assumption and only affects the *p* value when necessary. The author of `t.test()` agrees with this assessment and has therefore made the default independent samples *t* test a Welch's *t* test. If you want to conduct a traditional *t* test, you must specify that using `var.equal = TRUE`. This means you are assuming equal variances in the two samples. I don't recommend ever doing this for your own research. However, you are likely to encounter regular *t* tests in other people's work. If you want to reproduce their results, you will need to use this argument.

#### describeBy()



### Manuscript

Prepare a written document that includes a one-paragraph description of the results and a one-paragraph discussion. The manuscript should follow the [APA Journal Article Resporting Standards for Quantitative Research (JARS--Quant)](https://apastyle.apa.org/jars/quantitative). Note that these guidelines are broad and ask for more information than required for the purpose of this lab report. You need not report information about dates of recruitment and data collection or missing data (though this information would be reported if it were a real study!).

The results section should include the following:

* Total participants in each experimental condition (note that the actual number of participants might differ from the planned number of participants in the study preregistration).
* *M* and *SD* of national identity for each experimental group.
* Results of the null-hypothesis significance test and corresponding standardized effect size.
* Description of your efforts to diagnose problems with statistical assumptions and data distributions.
* A figure visualizing mean national identity in each of the two groups and error associated with that measurement. The figure should be referenced in the text of the results section.

The discussion section should adhere to the [JARS--Quant](https://apastyle.apa.org/jars/quantitative) guidelines. You can use these questions as a guide.

* Was the hypothesis supported? 1 sentence.
* How do your results compare to the results reported by @davies2008? Consider both the size of the effect and the results of the significance test. 1--2 sentences.
* Why do you think the results do or do not support the hypothesis? Consider both substantive theoretical reasons as well as design and statistical considerations.
* Canadian adults are the implied population of interest in this study. Given the sampling design, how well does this sample represent that population? How does that affect the interpretation of these results? 2--3 sentences.
* The broad theoretical mechanism under study was one in which the perception of an external threat to a social group leads to increased identification with that social group. In what contexts does this study have implications for this theory? Consider how the study's design might limit its generalizability. 1--3 sentences.
* What is an implication of this research for future research, programs, or policy? 1--2 sentences.
