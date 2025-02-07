# Tcl Word Count Bug

This repository demonstrates a common error when using the `split` command in Tcl to count words in a string.  The `split` command, when used with a single space delimiter, does not correctly handle multiple consecutive spaces. This leads to an inaccurate word count.

The `bug.tcl` file contains the erroneous code, and `bugSolution.tcl` provides the corrected version.

## Bug:
The main issue is that `split` treats multiple consecutive spaces as a single word.  This results in an undercount when spaces are present. 

## Solution:
The solution involves using `regexp` to split the string based on sequences of one or more spaces, thus correctly counting words even with multiple consecutive spaces.