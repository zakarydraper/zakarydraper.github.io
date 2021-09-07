# Introduction to R {#intro1}

## Learning Objectives

After completing this lab, you should be able to:

* Explain what R is and describe its main uses.
* Give (at least) 3 benefits of using R for data analysis.
* Create R objects.
* Identify R objects of the following R classes: numeric, character, logical, data.frame.
* Apply basic operations to vectors in R.
* Explain the basic structure of function calls.
* Write scripts to manually enter data as `data.frame`s in R.

## Prepare for the Lab

Before coming to the lab, install R and RStudio on your computer. There are computers in the lab with R and RStudio installed, so if you are planning to use the lab computers for the semester, then you do not need to install 

### Install R

You can find links for downloading R and other information about R on the R website https://www.r-project.org. You can download R from one of several CRAN mirrors. The simplest option is the cloud (https://cloud.r-project.org/), which will automatically redirect you to a local server.

### Install RStudio

Download and install the desktop version of RStudio from https://rstudio.com/products/rstudio/.

### I'm Using a Tablet or Chromebook

You cannot install R or RStudio to these devices. You can run R using a Jupyter Notebook. The simplest way to make this happen is going to https://ubc.syzygy.ca/ in your web browser and logging in with your CWL. Make sure you are able to sign in to this before the lab.

### Can I Use a Lab Computer?

Yes. There are computers in the room where we will be holding the lab that have R installed already. If you are planning to use the lab computers for the entire semester, you are welcome to do so. Just know that will likely become fairly annoying when you have to work on lab work outside of regular lab hours (or if you are unable to attend the lab for some reason). Even if you plan on primarily using the lab computers, we recommend having a personal machine that you can use for doing your lab work.

If you do plan to use the lab computers, visit the lab room before the lab and ensure that you are able to sign in to the computers. We will not be able to take time out of the lab to provide support with logging into the campus machines.

## Lab Activity

### Mathematical Operations

Write R code to solve each of these equations:

1. $1/20$
2. $\frac{1}{20 \times 20}$
3. $1 - .95^{10}$
4. $\sqrt{19}$

### Object Assignment

Use the assignment operator, `<-`, to define R objects with the names and values shown in the table below.

|name      |value                                                            |
|----------|-----------------------------------------------------------------|
|x         |10                                                               |
|y         |4.2                                                              |
|haiku     |a haiku about R                                                  |
|excited   |logical, honest answer to the question, "I am excited to learn R"|

### Object Classes

Use `class()` to identify the class(es) of each of the objects you just created.

### Longer Vectors

A vector is a list of items of the same type. Vectors can contain numbers, characters, or logicals, so long as every item in that vector is the same class. The objects you have created thus far are all vectors of length one. That is, they each contain one item. But vectors more often contain many items.

You can combine items into a vector using `c()`, which is the concatenate/combine function. This function takes any number of arguments, each separated by a comma, and combines them into a vector.

Use the assignment operator, `<-`, and the concatenate function, `c()` to define R objects with the names and values shown in the table below.

|name      |value                                                            |
|----------|-----------------------------------------------------------------|
|dub       |a numeric/double vector of length 3                              |
|dub2      |a numeric/double vector of length 4                              |

You can also name elements in your vector, as in the example below.


```r
ages <- c("Declan" = 17, "Ava" = 19, "Liam" = 20, "Charlotte" = 19)
```

For longer function calls, it is easier to read if they are spread out over several lines. The code below is formatted differently, but functionally identical to the code which used only one line.


```r
ages <- c(
  "Declan" = 17,
  "Ava" = 19,
  "Liam" = 20,
  "Charlotte" = 19
)
```


```r
ages
```

```
##    Declan       Ava      Liam Charlotte 
##        17        19        20        19
```

This can be useful, but a more common approach is to use data frames.

### Data Frames

A `data.frame` is a special class of R object that groups vectors into columns. This is a useful way of organizing and presenting data. It is easy to read and understand. The data we will work with this semester will be organized in a `data.frame`.

Create a `data.frame` using the function `data.frame()`. Like `c()`, `data.frame()`, combines its arguments. However, instead of combining elements into a vectors, `data.frame()` binds vectors into columns of a table.


```r
data.frame(
  name = c("Declan", "Ava", "Liam", "Charlotte"),
  age = c(17, 19, 20, 19)
)
```

```
##        name age
## 1    Declan  17
## 2       Ava  19
## 3      Liam  20
## 4 Charlotte  19
```

This `data.frame` has the same information as the vector `ages` we created previously. Except the information is stored in two vectors---`name` and `age`---instead of one named vector. The ability to store information this way becomes increasingly useful if we want to more information about these individuals, as in the example below.

Recreate the following in R. Save the result as an object named `happiness`.


```
##        name age group shs_1 shs_2 shs_3
## 1    Declan  17     A     3     4     4
## 2       Ava  19     A     4     3     3
## 3      Liam  20     B     5     5     4
## 4 Charlotte  19     B     4     5     5
```

### Add a Column to a Data Frame

Use `$` to add a column called `shs_total` to `happiness`, which is the sum of `shs_1`, `shs_2`, and `shs_3`. The result should look like this.


```
##        name age group shs_1 shs_2 shs_3 shs_total
## 1    Declan  17     A     3     4     4        11
## 2       Ava  19     A     4     3     3        10
## 3      Liam  20     B     5     5     4        14
## 4 Charlotte  19     B     4     5     5        14
```

### Summary Statistics

Use R functions to compute the mean, median, and standard deviation of `shs_total`.

## Discussion Questions

Be prepared to answer the following questions. It is okay (even good!) to use R to discover the answers to these questions.

1. What is the class of `happiness`? Why does it make sense to store data using objects of this class?
1. What is the class of `happiness$shs_tot`?
1. Why is the `$` needed to reference columns in a `data.frame`?
1. What is the output of `happiness$shs_tot + 2`?
1. What class is the object produced by executing: `c(happiness$shs_tot, happiness$group)`?
1. What is the difference between `1` and `"1"` in R?
1. Why does `Happiness$shs_tot + 2` return an error?
