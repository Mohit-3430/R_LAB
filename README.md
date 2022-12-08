<details>
<summary>Task-1</summary>

## Vectors

- A vector is simply a list of items that are of the same type.
- To combine the list of items to a vector, use the c() function and separate the items by a comma.

## Matrices

- A matrix is a two dimensional data set with columns and rows.
- You can access the items by using [] brackets. The first number "1" in the bracket specifies the row-position, while the second number "2" specifies the column-position:

## Arrays

- Compared to matrices, arrays can have more than two dimensions.
- We can use the array() function to create an array, and the dim parameter to specify the dimensions:

```
multiarray <- array(thisarray, dim = c(4, 3, 2))
multiarray
```

`array[row position, column position, matrix level]`

- A comma (,) before c() means that we want to access the column.

- A comma (,) after c() means that we want to access the row.

</details>

<details>
<summary>Task-2</summary>

### Task 2a

- Functions -> mean(), median(), mode();
- A simple paste() will take multiple elements as inputs and concatenate those inputs into a single string

### Task 2b

- **Typecasting:** Data Type conversion is the process of converting one type of data to another type of data. R Programming Language has only 3 data types: Numeric, Logical, Character.
- `as.logical(), as.integer(), as.character()`
- The class() function in R is used to return the values of the class attribute of an R object.

</details>
<details>
<summary>Task-3</summary>

## Functions

- To create a function, use the function() keyword:
</details>

<details>
<summary>Task-5</summary>

## Normal Distribution

Normal Distribution is a probability function used in statistics that tells about how the data values are distributed

```
rnorm() is a function in R programming is used to generate a vector of random numbers which are normally distributed.

syntax of rnorm(n, mean, sd):
n -> no of obersvations
```

**Note:** floor() function takes up the vector as an argument and rounds down all the values of that vector without decimal places, so as no decimal values left

## Table in r

table() function in R Language is used to create a categorical representation of data with variable name and the frequency in the form of a table.

`table(x)`

- for further manipulation, it is best if table is converted to dataframe.

## plot

`plot(x, y) `
`plot(y, type)`

- line -> type='l'

</details>

<details>
<summary>Task-6</summary>

## Matrix Operations:

- Addition -> +
- Multiplication -> %\*%
</details>

<details>
<summary>Task-7 & Task-8</summary>

## Dataframe

- Data Frames are data displayed in a format as a table.
- data.frame() function to creates a data frame:
- summary() function to summarize the data from a Data Frame, returns a table
- dim() gives dimmensions

#### Access Items

- "[]" use index
- "[[]]" use column name
- "$" via column name

</details>

<details>
<summary>Task-9</summary>

`read.csv()`

- ncol()
- nrow()
- dim()
- which(): The which function in R returns the position of the values in the logical vector.

- subset() Subsetting in R is a useful indexing feature for accessing object elements. It can be used to select and filter variables and observations.

</details>

<details>
<summary>Task-10</summary>

[Link](https://datacarpentry.org/R-ecology-lesson/04-visualization-ggplot2.html#Plotting_with_ggplot2)

</details>

<details>
<summary>Task-11 & 12</summary>

[Original](https://www.geeksforgeeks.org/simple-linear-regression-using-r/#:~:text=Linear%20Regression%3A%20It%20is%20a,two%20types%20of%20linear%20regression.)
[Link](https://www.datacamp.com/tutorial/linear-regression-R)

</details>
