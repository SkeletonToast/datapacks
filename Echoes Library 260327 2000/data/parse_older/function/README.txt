Thanks for downloading Score Parse Module! A short guide is below. The creator, SkeletonToast, can be reached best through Discord: @skeleton.toast

GUIDE
- Required input macros: $function, $score, (optional)[$prepend, $append, $append_position]
    + $append, $prepend, and $append_position are only required if using parse:score. They can be bypassed with parse:score_unended
- $function: enter the address of the function that will be run with the FINAL output value (e.g. test:function)
- $score: the name of the scoreboard objective that is being parsed.
- $prepend: characters that are prepended to the ENTIRE output value. for example, an input of 123 and a $prepend of +0. will result in output: +0.123
- $append: characters are are entered in the specified append position
- $append_position: the position in which the $append macro will be entered.
    + Positive values count from left to right, negative values count right to left.
    + A value of 0 is a "true" append, the append macro will just be at the end of the output. an input of 12345, $append of +, and $append_position of 0 will result in output: 12345+
    + An input of 12345, $append of +, and $append_position of 1 will result in output: 1+2345
    + An input of 12345, $append of +, and $append_position of -1 will result in output: 1234+5

- IMPORTANT!! If your input value is negative, the output will include the negative sign.
    + THIS WILL APPEAR AFTER THE PREPEND.
    + IF YOU NEED IT TO APPEAR BEFORE, YOU MUST CONVERT YOUR INPUT TO A POSITIVE AND MANUALLY ENTER THE NEGATIVE SIGN IN THE PREPEND MACRO.
- An input value equal to zero will always just output '0'. Currently, append and prepend will not be considered if the input is equal to zero.

- NOTE ABOUT APPEND POSITION!
    + This module is designed to mainly output valid floats or integers. As such, it has unique behavior when the append position is outside the bounds of the input.
    + If the append position is positive, and is higher than the number of digits, it will just be appended at the final position.
    + If the append position is negative, and its position would exceed the number of digits, ZEROES WILL BE ADDED as a cushion to allow it to reach the necessary position.
        + For example, an input of 123, $append of 0., and $append_position of -5 will result in output: 0.00123
    + Using prepend instead will avoid this, and will just put it at the beginning of the output, without adding any cushion zeroes.
    + This is an intended feature because it allows SPM to work better with decimal scaling, and because leading zeroes don't have any real impact on a number in a mathematical sense.


- Your parsed score outputs as $(value).