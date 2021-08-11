# One Sample *t* Tests {#ost}

<!-- The one sample *t* test is the simplest statistical model. The null model is: -->

<!-- $\hat{Y} = 0$ -->

<!-- And the alternative model is: -->

<!-- $\hat{Y} = b_0$ -->

One sample *t* tests are conducted to test questions about the average value of a continuous variable in a population. For example, one-sample *t* tests might be used to help answer the following research questions:

* Are Canadians aged 65 and older able to recall a 7-digit phone number?
* Can university students type more than 60 words-per-minute?
* Do North Americans consume 2000 calories per day?

Each of these research questions include a definition of a population, a variable measured on a continuous (or at least interval) scale, and a specific value on that scale. Note that there is no mention of how that value might compared with other populations. Research questions that can be informed by one-sample *t* tests can always be framed in the form:

> Is the average value of [continuous variable] among [characteristics of a population] [more than/less than/more or less than] exactly [a number]?

One-sample *t* tests are rarely used because most research questions cannot be phrased in this way. That's because of the "[a number]" part at the end. We are usually more interested in comparing values between populations (e.g., "is the treatment more effective than a placebo?") or in how a value changes based on some other continuous variable (e.g., "does life satisfaction increase with age?").

Although one-sample *t* tests are rarely used, it is important to understand how they work. They are the simplest statistical models and the foundation of every other analysis covered in this lab. Mastering the one-sample *t* test will prepare you for the more complex models that you will be building in future labs.

## Learning Objectives {#ost-objectives}

After completing this lab, you should be able to do the following using R:

* Conduct one-sample *t* tests.
* Compute Cohen's *d*~z~.
* Produce histograms.
* Conduct Shapiro--Wilk tests.
* Produce descriptive statistics including *M*, *SD*, skew, and kurtosis.

Additionally, you should be able to:

* Report results of one-sample *t* tests in APA style.
* Report results of Shapiro--Wilk tests in APA style.
* Understand the role of the following in evaluating the strength of evidence provided by one-sample *t* tests to support or refute hypotheses about a population:
    * The correct interpretation of a *p* value.
    * The assumption of normality in one-sample *t* tests.
    * Raw and standardized effect sizes.

## The Study: Is 7 Really Magical? {#ost-study}

*The following is the Introduction and Method sections of a hypothetical study. For this lab, you will conduct the analyses described in the analytic strategy below.*

Eminent psychologist George Miller is best known for his seminal paper, “The Magical Number Seven, Plus or Minus Two: Some Limits on Our Capacity for Processing Information.” “The Magical Number Seven” has been interpreted to claim that humans can hold an average of seven objects in working memory—an idea sometimes referred to as Miller’s Law. Miller’s Law proposes a remarkably simple model of working memory capacity. We tested this model of working memory in a sample of undergraduate psychology students who were in their third or later year of their program and had excelled in their coursework. Because these students had showcased academic excellence over several years of post-secondary education, we hypothesized that their memory spans would be greater than seven.

### Participants and Procedure {-}

Participants (*N* = 174) were undergraduate psychology students enrolled in a research methods and statistics course designed to prepare students to conduct research and for graduate school. Entry into this course is competitive based on GPA in psychology courses. As such, these students were above average in terms of academic achievement. Participation in this study was part of the students’ coursework.

### Measures {-}

Memory span is the longest sequence of items a person is able to correctly repeat immediately after presentation, in at least 50% of trials. We measured digit span, which is memory span for digits, using the R package memoryspan. This package includes a program for measuring digit span by printing digits to the R console and asking participants to type those values into the console. If the correct sequence of values is entered into the console, the user is presented with a new sequence which is one unit longer than the prior sequence. If the incorrect sequence is entered into the console, the trial ends and the user’s digit span for that trial is returned. By default, the program begins with a digit span of one, but participants were instructed that they could increase this value to save time. Participants completed 10 trials. Their digit spans were defined as the longest sequence they correctly repeated in at least 5 of the 10 trials.

### Analytic Strategy {-}

To test whether Miller’s Law applied to digit spans for this population of students, we conducted one-sample *t* tests against the null hypothesis that our sample was drawn from a population in which average memory span is less than or equal to seven. One-sample t tests assume that variables are drawn from a normally distributed population. We tested this assumption by visually inspecting histograms, examining skew and kurtosis values, and with Shapiro–Wilk tests.

## Data Collection {#ost-data-collection}

Use the R package [`MemorySpan`](http://github.com/zakarydraper/MemorySpan) to complete 10 trials of a digit-span task. Record your results. Your digit span will be the longest list you correctly recall on at least 5 of the 10 trials. `MemorySpan` is not available on the CRAN. It can be installed from GitHub using the function `install_github()` from the `remotes` package. Install `MemorySpan` by running `remotes::install_github("zakarydraper/MemorySpan")`. As with R packages installed from the CRAN, this only needs to be installed once.

After installing `MemorySpan`, you can load it with `library()` like you would any other R package. Consult the documentation for `measure_memory_span()` for direction on how to use the function to measure your digit span.

## Lab Report Instructions {#ost-assignment}

Read "Is 7 Really Magical? A Simple Test of Miller's Law," which is a manuscript containing an introduction and method section. For this lab, you will be conducting the analyses described in the analytic strategy (part of the method) and reporting the results in APA style. You will submit the following: (a) an R script for conducting the analyses described in the analytic strategy, (b) a Word document with your results reported in APA style, and (c) short answer responses to the discussion questions.

### R Script

Do the following in R:

1. Use `t.test()` to conduct a one-sample *t* test of the null hypothesis that the average digit span in the population is less than or equal to 7. Use `<-` to assign a name to the output of your call to `t.test()`.
1. Compute Cohen's *d*~z~, either by using the formula $(M - \mu)/SD$ or by converting from the *t* with `psych::t2d()`.[^1]
1. Use `hist()` to produce a histogram of the distribution of digit spans.
1. Use `shapiro.test()` to conduct a Shapiro--Wilk test on the distribution of digit spans.
1. Calculate *M*, *SD*, skewness, and kurtosis of the digit span variable. Calculate *M*, *SD*, and range of participant ages:
    * `psych::describe()` will calculate all of these values in one go.
    * `QuantPsyc::norm()` will calculate skew and kurtosis for one variable and will provide significance tests for each (not provided with `psych::describe()`). It will not provide *M*, *SD*, or range.

[^1]: Sometimes the output of `psych::t2d()` will be a vector named "t". This is okay. We will explain why this happens when we go over the assignment. If you are concerned that you might have the wrong value for *d*~z~, check that you are getting the same result with `psych::t2d()` and by using the formula.

### Results

Your results section should include the following:

* 1 sentence presenting the results of the one-sample *t* test.
* 1 sentence presenting the results of the Shapiro--Wilk test.
* 1--3 sentences describing the distribution of scores. Reference the results of the Shapiro--Wilk test, the histogram (i.e., Figure 1 in your manuscript), and skew and kurtosis values.
* A histogram showing the distribution of digit spans in the sample. Follow the rules for figures in the *APA Publication Manual*.

### Discussion

In future lab reports, you will write complete (albeit brief) discussion sections. For this lab report, answer each of the following questions in complete sentences.

* Do your results support your hypothesis?
* How do your results compare with Miller's work arguing that memory span is equal to seven? Provide an explanation for why your results agree or disagree.
* How does the characteristics of the sample affect your interpretation of these results?
* What is an implication of your findings for future research, programs, or policy?
