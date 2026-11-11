Thanks for downloading Score Parse Module! A short guide is below.

Questions & Comments:
Discord (Best for contacting me): @skeleton.toast
Modrinth: https://modrinth.com/user/skeletontoast
GitHub: https://github.com/SkeletonToast

GUIDE
- Required input macros: $function, $score, (optional)[$prepend, $prepend_position, $append, $append_position]
    + $append, $prepend, and $append_position are only required if using parse:complex. They can be bypassed with parse:simple.
- $function: enter the address of the function that will be run with the FINAL output value (e.g. test:function)
- $score: the name of the scoreboard objective that is being parsed.
- $prepend: characters that are prepended to the ENTIRE output value. for example, an input of 123 and a $prepend of +0. will result in output: +0.123
- $prepend_position: the position in which the $prepend macro will be entered.
    + This position is relative to the empty space BEFORE the first digit.
    + Positive values count from left to right; negative values count from right to left.
    + A value of 0 is a "true" prepend, the prepend macro will just be at the beginning of the output. an input of 12345, $prepend of +, and $prepend_position of 0 will result in output: +12345
    + An input of 12345, $prepend of +, and $prepend_position of 2 will result in output: 12+345
    + An input of 12345, $prepend of +, and $prepend_position of -2 will result in output: +0012345
- $append: characters are are entered in the specified append position
- $append_position: the position in which the $append macro will be entered.
    + This position is relative to the empty space AFTER the final digit.
    + Positive values count from right to left; negative values count from left to right.
    + A value of 0 is a "true" append, the append macro will just be at the end of the output. an input of 12345, $append of !, and $append_position of 0 will result in output: 12345!
    + An input of 12345, $append of !, and $append_position of 2 will result in output: 123!45
    + An input of 12345, $append of !, and $append_position of -2 will result in output: 1234500!

- $prepend and $append can be combined, of course.
    + If the prepend and append positions would land in the same position, prepend appears first.
    + An input of 12345, $prepend of +, $append of !, $prepend_position of 2, and $append_position of 3 would result in output: 12+!345

- IMPORTANT!! If your input value is negative, the output will include the negative sign.
    + IF YOUR $prepend_position IS 0, THIS WILL APPEAR AFTER THE PREPEND.
    + IF YOU NEED IT TO APPEAR BEFORE, YOU MUST CONVERT YOUR INPUT TO A POSITIVE AND MANUALLY ENTER THE NEGATIVE SIGN IN THE PREPEND MACRO.

- NOTE ABOUT DECIMAL SCALING
    + This module is designed to mainly output valid floats or integers. As such, it has unique behavior when the prepend/append position is outside the bounds of the input.
    + If the append position is higher than the number of digits, the append value will just be written at the first position.
        + For example, an input of 123, $append of 0., and $append_position of 5 will result in output: 0.00123
    + If the prepend position is higher than the number of digits, the prepend value will just be written at the final position.
        + For example, an input of 123, $prepend of 1, and $prepend_position of 5 will result in output: 123001
    + Both $prepend_position and $append_position can be entered as a negative, which will invert the direction in which they count, and scale accordingly.
        + An input of 12345, $prepend of +, and $prepend_position of -2 will result in output: +0012345
        + An input of 12345, $append of !, and $append_position of -2 will result in output: 1234500!
    + This is an intended feature because it allows SPM to work better with decimal scaling.


- Your parsed score outputs as $(value).