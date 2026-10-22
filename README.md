# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Jackson Grayhek, Rowen Lair

## Summary
In this lab we got to create a half subtractor, write a one's complement subtractor, and a twos complement converter.

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
The half adder is carrying over an excess 1, while the half subtractor is carrying over a negative one. When we subtract 1 from 0 it has to "borrow" from the bit to the left. While we only created a half subtractor and not a full subtractor, I'd imagine it would have a "borrow in" and "borrow out", and we could do ripple subtraction till the last bit, instead of ripple adding to the last bit like in a full adder.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
It's hard to use and implement because we have to take the carry from the msb and add it to the front of the result, however this would result in an endless loop if unchecked. It's confusing to me that we don't loop the msb carry out around after we've done it the first time. It's also very inefficient as we have to do the addition twice.

### 3 - What is the edge case and problem with Two’s Complement number representation?
The problem is that we have one edge case with two's complement number representation, the two's complement range is from -(2^(n-1)) to 2^(n-1) - 1. This means the negative side has an extra number compared to the positive and means bitwise inversion of 0000 or 0 would get us 1111 or -1, which is incorrect. 
