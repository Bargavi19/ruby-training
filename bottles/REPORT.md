# Report Grade - Bottles

Report for Bargavi, for the Bottles project

## Grading Criteria

Each of the following points will be used
* Following TDD principles - **30%**
  * Are you following TDD principles?
  * Did you write the minimum to make some tests pass and then improve?
  * Did you iterate on your work?
  * Did you do red-green-refactor in the correct places?
* Pass Rate - **25%**
  * Did your code pass when I ran it?
  * Did you follow the rules set out for completing the work?
* White box analysis - **30%**
  * Is your code neat and tidy?
  * Is your code easy to understand / follow?
  * Does your code solve only the problem stipulated (i.e. you've not tried to over-engineer the solution?)
  * Have you removed all redundant code
* Miscellaneous Criteria - **15%**
  * Git commit history (Easy to understand / follow)
  * Incremental working through `skip`

## Grades

### Following TDD principles

B

This featured some good red green refactoring. You refactored in the right places and also in most situations
did write minimum code where possible.

I felt there was a little bit of haphazardness which meant that sometimes I couldn't trace how you evolved or
refactored. Specifically try focus on ensuring that you don't mix and match items within your refactoring.

### Pass Rate

A

Code all passes well and you followed the normal rules as expected

### White box analysis

C

Your linting is better than before, but still a bit erratic. Not really sure where that's coming from.

A lot of the optimal ruby solutions aren't used. Furthermore you split your branching strategy to use regex
for some reason, which isn't completely obvious, as you're not capturing / replacing captured parts. I'm not
really sure why you went for this approach when the previous one was working fine.

In terms of redundancy, you did manage to remove some redundant code, but there is still quite a lot of
redundant code remaining. Again I'm not really sure why. Given you did remove some, I've bumped your grade
from a D to a C.

### Miscellaneous Criteria

B

Following your git evolution was definitely better than in previous situations. But some of the messages and
incremental working were a bit haphazard. However to avoid double jeopardy, I've graded this a B instead of
a C so I'm not punishing you twice.

### Overall Grade

B

The main areas you're needing to improve on now is optimisation. All areas you are still not making
progress on are ...

- Ruby has ruby-isms, for optimisation, we tend to use countable's and enumerable's.
- We need to ensure you're optimising your linting, make sure the style is consistent and neat.
- Re-read your code to ensure the flow is good. As whilst you're ensuring the code passes - reading it is hard!