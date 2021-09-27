--- 
title: "Statistics Labs for Psychology"
author: "Zakary A. Draper"
date: "2021-09-27"
site: bookdown::bookdown_site
documentclass: book
bibliography: [book.bib, packages.bib]
biblio-style: "apalike"
link-citations: yes
description: "This is a lab manual for learning statistics with R using examples of hypothetical psych science studies."
---

# Lab Outline {-}

<!-- ## Author's Note {-} -->

<!-- Hi there. I hope you find this lab manual helpful. If you are an instructor who is interested in using these materials for your course, you can [email me](mailto:zakary.draper@ubc.ca) and I can provide you with some additional resources. -->



## Summary {-}

The lab component of this course primarily concerns statistical methods and analysis, and of course the use of computer programs. The universe of statistical models is extraordinarily vast. We will focus on common statistical tests that can be broadly classified as linear models. Students will learn to model a diverse array of hypotheses as linear models.

## Learning Outcomes {-}

At the conclusion of this course, students will be able to:

1. Appropriately evaluate the strength of evidence provided by common statistical tests conducted using a linear regression framework.
2. Conduct common statistical tests in R.
3. Produce informative, aesthetically pleasing, data visualizations, in accordance with APA style guidelines.
4. Utilize online resources to expand their knowledge related to outcomes 1–3, such that they will be able to understand and appropriately utilize statistical concepts that are not taught in this course.

## Software {-}

### [R](https://www.r-project.org/) {-}

R refers to both a programming language for statistical computing and software. It is a free and open source project. We will be doing all of our data analysis using the R programming language.

### [RStudio](https://rstudio.com/) {-}

RStudio is a commercial organization that offers a free and open source version of desktop software. The RStudio desktop software is an integrated development environment. Which is to say, it is software for executing R code. RStudio has several benefits over the base R software.

### [Syzygy](https://ubc.syzygy.ca/) (Optional) {-}

The R and RStudio software are available for Windows, Mac, and Linux operating systems. Neither will operate on a tablet or Chromebook. If you are using a tablet or Chromebook, you can run R in a web browser using a web application called Jupyter Notebook. A Jupyter Notebook that has been set up to run R is available to UBCO students at https://ubc.syzygy.ca/. You can sign in to Syzygy with your CWL.

Jupyter Notebook is an entirely separate interface from RStudio. The R code is the same, but the interface is difference. We recommend using RStudio if possible, not because it is better, but because it is what we will be using. However, if RStudio is unavailable to you, or you just want to use Juptyer, then you should feel empowered to do so. You can absolutely be successful in this course using Jupyter.

### [XQuartz](https://www.xquartz.org/) {-}

If you are using a Mac, you will need to install XQuartz. XQuartz is required to install some of the R packages we will make frequent use of throughout the course. It is free and open source.

### Zoom {-}

Office hours with the lab instructors will be held via Zoom.

### Canvas {-}

We will use Canvas to share information and documents, including data sets, slides, and other useful materials.

<!-- ## Learning Materials -->

<!-- Consistent with learning outcome number 4, you are expected to take responsibility for your own learning. This includes completing all assigned activities (such as readings and assignments). It also includes ensuring that you have a sufficient understanding of the concepts taught in the lab, which may require that you do work beyond what has been explicitly assigned. There are abundant resources for learning R and statistics that are freely available online. Below is a sampling of resources you might turn to during your R journey. -->

<!-- ### [Lab Manual](https://zakarydraper.com/book) -->

<!-- Beginning with lab 4, the lab manual contains all the information for completing the lab assignments/reports. -->

<!-- ### [Learning Statistics with R](https://learningstatisticswithr.com/) -->

<!-- Learning Statistics with R by Danielle Navarro is a freely available introductory R and statistics textbook. There is a PDF version as well as a web version. This is a great resource written by an accomplished statistician/researcher/programmer. She draws heavily on functions from an R package she wrote for the course. We will not be teaching these functions in the lab. Use this text mainly for understanding the statistical concepts rather than the code. -->

<!-- ### [YaRrr! The Pirate's Guide to R](https://bookdown.org/ndphillips/YaRrr/) -->

<!-- YaRrr! The Pirate’s Guide to R is a fun and accessible book that introduces many important R concepts. The author has also created an accompanying video series available on YouTube. -->

<!-- ### [A Practical Extension of Statistics in Psychology Using R](https://rpsystats.com/) -->

<!-- In the words of the authors: -->

<!-- > This book aims to provide a practical extension of introductory statistics typically taught in psychology into the general linear model (GLM) using R. -->

<!-- In other words, assuming that you already familiar with the statistical tests, this book will expand your understanding of those tests, by explaining them from the perspective of a unified framework. -->

<!-- ### [R for Data Science](https://r4ds.had.co.nz/) -->

<!-- R for Data Science teaches data science in R with a strong focus on R packages that are part of the [Tidyverse](https://www.tidyverse.org/). We will be referring to this book when we learn about Data Visualization. The other chapters are not relevant to this course.  -->

<!-- ## A Typical Week -->

<!-- ### Before the Lab -->

<!-- Before attending the lab, read the lab manual content associated with the lab. You are responsible for understanding the statistical concepts that will be covered. We will be covering how to conduct statistical tests in R. We will not be teaching the statistical tests themselves. You will need to be familiar with them when you come to the lab. -->

<!-- ### During the Lab -->

<!-- Generally, we will begin by introducing the topic of the lab and answering any questions you encountered as you prepared for the lab. We will then provide some instruction and work through an example together. After that, you will have self-directed time to work through a lab activity. The first labs will focus on learning R programming. The remaining labs will concern learning and applying statistical tests in R and writing up the results. -->

<!-- ### After the Lab -->

<!-- Assignments (discussed below) are due the following Monday at 11:59 PM. -->

## Evaluation {-}

The lab will be worth 30% of your final grade, divided across lab reports (21%), and quizzes (9%).

### Lab Reports (21%) {-}

Lab reports are brief, APA-style manuscripts, reporting and discussing the results of a study. You will receive 21% of your grade for completing 3 lab reports, each of which is worth 7% of your final grade. For each lab report, you will be provided with preregistration information for a hypothetical study as well as simulated data from that study. You will be responsible for writing the results and discussion, creating an appropriate data visualization, and preparing a reproducible R script, which will be submitted with the report. Specific instructions for each lab are provided in the lab manual.

You may choose to complete lab reports on any of the statistical tests covered in the lab manual. Lab reports for a given lab are due the Monday following the lab at 11:59 PM. Late lab reports will not be accepted. Lab reports will be marked and returned with detailed feedback by the beginning of the next week's lab.

Optionally, you may submit a 4th lab report. If you do, your final lab report grade will be based on the best 3 of the 4 labs you submit.

### Quizzes (9%) {-}

There are two quizzes. The first is worth 3% of your final grade. It will cover R fundamentals that you will need to master to be successful in this course (and in 373). The second and final quiz is worth 6% of your final grade. It will take the form of a lab report that is completed during regular lab time.

## Tentative Schedule {-}

As indicated by the title of this section. This schedule is tentative and therefore subject may change. These are the topics we plan to cover, in the order we expect to cover them.

Labs 1--2 will cover the fundamentals of R and RStudio. Lab 3 will introduce you to data visualization using `ggplot2`. The next lab will be a quiz that will require practical application of the skills you learn in labs 1--3.

Beginning in week 6, each lab will cover one statistical test. For each of these statistical tests, you will be presented with preregistered information from a hypothetical study. Most of these studies are based on real research programs (many of which are being actively investigated by researchers at UBCO!). If the content of one of the labs interests you, consider reaching out to the professor whose research inspired it. There may be opportunities to work with that professor on a directed studies or honours project.

|Week |Date           |Topic                                                |
|:---:|:--------------|:----------------------------------------------------|
|1    |Sep. 09 |Introduction to R                                    |
|2    |Sep. 16 |Introduction to R, part 2                            |
|3    |Sep. 23 |Data visualisation with ggplot2                      |
|4    |Sep. 30 |National Day for Truth and Reconciliation. No Lab.   |
|5    |Oct. 07 |Quiz 1                                               |
|5    |Oct. 14 |One sample *t* test                                  |
|6    |Oct. 21 |Paired samples *t* test                              |
|7    |Oct. 28 |Independent samples *t* test                         |
|8    |Nov. 04 |Correlation                                          |
|10   |Nov. 11|Midterm Break                                        |
|11   |Nov. 18|ANOVA                                                |
|12   |Nov. 25|Factorial ANOVA                                      |
|13   |Dec. 02|Final Quiz                                           |
