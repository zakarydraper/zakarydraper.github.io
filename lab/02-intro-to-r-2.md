# Introduction to R (Part 2) {#intro2}

![We believe in you!](assets/images/monster_support.jpg)

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

## Lab Activity

Researchers at the Vancouver and Okanagan campuses of The University of British Columbia have conducted a survey of child sleep. The results of this survey are found in the file [child-sleep-data.csv](assets/data/child-sleep-data.csv). The table below provides names and descriptions for each variable in the data set.

<table>
  <th align="left">Name</th>
  <th align="left">Description</th>
  <tr>
    <td>id</td>
    <td>A randomly generated participant ID, unique to each participant.</td>
  </tr>
  <tr>
    <td>age</age>
    <td>The age of the child in the study.</td>
  </tr>
  <tr>
    <td>campus</td>
    <td>The campus from which the participant was recruited ("Point Grey" or "Okanagan").</td>
  </tr>
  <tr>
    <td>sleep_location</td>
    <td>Where does the child sleep? 1 = co-sleeps with parent(s); 2 = sleeps in own room; 3 = shares a room but does not cosleep.</td>
  </tr>
  <tr>
    <td>sleep</td>
    <td>The parent's estimate of the average hours of sleep the child receives in a 24-hour period.</td>
  </tr>
</table>

Download [child-sleep-data.csv](assets/data/child-sleep-data.csv) and then complete the following steps:

### Import and Inspect the Data

* Import [child-sleep-data.csv](assets/data/child-sleep-data.csv) into R; assign it a meaningful name.
* Inspect the `data.frame` using `str()`, `head()`, and `View()`.

### Convert Categorical Variables to Factors

* Use `as.factor()` and `factor()` to convert any categorical variables to factors with the appropriate levels and labels.

### Subsetting and Logical Expressions

Use `[]` to subset the data frame and find the answers to following questions/complete the tasks described below. You will also need to use `is.na()`, `max()`, `min()`, `mean()`, and logical expressions.

* What campus was the 48th participant recruited at?
* Return the data for participants who are missing responses on the sleep variable.
* What proportion of participants are missing data for the sleep variable?
* On average, how many hours do the children in this sample sleep per day?
* What is the average daily sleep of children in each of the three conditions?
* What is the participant ID of the participant(s) who reported the most sleep? The least sleep?

### Participant Information

Use `table()` to identify how many, and what proportion of participants belong to each level of the three categorical variables.
