# Ada Short-Circuiting Operators and Range Checks

This example demonstrates a common error in Ada related to the short-circuiting behavior of `and then` and `or else`.  Incorrect usage can lead to unexpected results, particularly when the right-hand operand might raise an exception.

The `Check_Range` function incorrectly uses `and`.   If `Value` is less than `Min`, the second part, `Value <= Max`, will still be evaluated.  If `Value` is very large, `Value <= Max` could result in integer overflow, causing an exception.

The solution replaces `and` with `and then` to ensure the right-hand side is evaluated only when needed. This safeguards the code from potential exceptions.