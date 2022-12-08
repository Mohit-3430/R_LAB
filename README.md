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
<summary>Task-6</summary>

## Matrix Operations:

- Addition -> +
- Multiplication -> %\*%
</details>
