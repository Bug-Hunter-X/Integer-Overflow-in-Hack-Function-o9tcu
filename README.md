# Integer Overflow Bug in Hack

This repository demonstrates a subtle integer overflow bug in a simple Hack program. The program consists of three nested functions, `foo`, `bar`, and `baz`, which perform basic arithmetic operations.  The bug arises when the input to the `baz` function is sufficiently large to cause an integer overflow during the intermediate calculations.

The `bug.hack` file contains the buggy code, while the `bugSolution.hack` file provides a corrected version that addresses the overflow issue.

## How to Reproduce

1. Clone this repository.
2. Compile and run `bug.hack`. Observe the unexpected output.
3. Compile and run `bugSolution.hack`. Observe the correct output. 

## Bug Explanation

The core issue is a lack of consideration for potential integer overflow when performing arithmetic operations.  Hack, like many languages, has a limited range for integer values.  If the calculations in `bar` and `baz` exceed this range, the results will wrap around or overflow. This leads to incorrect output.