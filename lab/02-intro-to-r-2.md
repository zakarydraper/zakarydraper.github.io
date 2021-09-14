# Introduction to R (Part 2) {#intro2}

![We believe in you!](img/monster_support.jpg)

## Learning Objectives

After completing this lab, you should be able to:

* Reference files using absolute and relative paths.
* Create an R data frame from a data file stored on your computer.
* Convert numeric or character vectors to factors.
* Index vectors and data frames. 

## Prepare for the Lab

* Make sure you grasp the concepts from lab 1.
* Read [Workflow: projects](https://r4ds.had.co.nz/workflow-projects.html) from [R for Data Science](https://r4ds.had.co.nz/).
* Read the following sections from [Learning Statistics with R](https://learningstatisticswithr.com/):
    * [4.6 Useful things to know about variables](https://learningstatisticswithr.com/book/mechanics.html#useful)
    * [4.7 Factors](https://learningstatisticswithr.com/book/mechanics.html#factors)

<!-- ## Review -->

<!-- Produce the following data frame in R: -->

<!-- ```{r, echo=FALSE} -->
<!-- df <- data.frame( -->
<!--   id = c("101A", "101B", "102A", "102B"), -->
<!--   group = rep(c("control", "treatment"), 2), -->
<!--   outcome = c(16, 17, 5, 9, 14) -->
<!-- ) -->
<!-- knitr::kable(df) -->
<!-- ``` -->

<!-- ## Lab Activity -->

<!-- ### Factors -->

<!-- Factors are a class of vector in R. They are used to represent categorical data. Factors are created with the function `factor()`, or `as.factor()`. Use `as.factor()` to convert the `group` column of your data frame to a factor. -->

<!-- ```{r, echo=FALSE} -->
<!-- df$group <- as.factor(df$group) -->
<!-- ``` -->

