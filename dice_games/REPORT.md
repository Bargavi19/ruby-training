# Report Grade - Dice Games

Report for Bargavi, for the Dice Games project

## Grading Criteria

Each of the following points will be used
* Following TDD principles - **30%**
  * Are you following TDD principles?
  * Did you write the minimum to make some tests pass and then improve?
  * Did you iterate on your work?
  * Did you do red-green-refactor?
* Pass Rate - **30%**
  * Did your code pass when I ran it?
  * Did you follow the rules set out for completing the work?
* White box analysis - **30%**
  * Is your code neat and tidy?
  * Is your code easy to understand / follow?
  * Does your code solve only the problem stipulated (i.e. you've not tried to over-engineer the solution?)
  * Have you removed all redundant code
* Miscellaneous Criteria - **10%**
  * Git commit history (Easy to understand / follow)
  * Did you manage to refactor the test on `spec/dice_spec.rb:41`

## Grades

### Following TDD principles

B

For the dice rolling, TDD was pretty much perfect. For the Greed spec, quite a lot was going down the code golf route.
I would spend more focus on refactoring earlier on. Also remember that writing everything as a complex method makes
it incredibly hard to follow (We read code 70% of the time, and write code 30% of the time).

### Pass Rate

A

Fully passing. Tried running several times to validate flaky spec. Some of the rules weren't strictly followed but
enough was done to classify getting an 'A' grade..................

### White box analysis

C

Overall your code is very complex to read and follow. The Dice rolling seems to have duplicate methods in place which
makes it very hard to follow the reasoning for it (The commit history is also a bit murky, so it's hard to trace).

Greed has a single method which breaks almost every linting rule in existence and as such would be impossible to
refactor AS IS. As such I feel as though using the Red-Green-Refactor technique earlier may have helped and also
proven that the exercise wasn't as complex as perhaps you found.

There are a few holes / mistakes in the code as well which would be caught out with additional specs or specs that
have been written in a slightly different way (Such as shifting the first 3 values before sorting, or popping the
last 3 values if they are 5's).

As you have made some attempt to remove spurious / excessive code I have given a C instead of D / E. But this is the
next step in your learning (Ensure that the code is a bit leaner and makes the optimisations where appropriate)

### Miscellaneous Criteria

E

An attempt was made to fix this. But tracing the git history is quite poor and the attempt to refactor the spec
just uses what some people refer to as the "Fergie-time" problem, where you keep playing until you win.

The spec on line 55 can never fail. As such it is not a valid spec.

### Overall Grade

B

You just scraped a B, but overall this was a much improved attempt on the exercise. Primarily leaning on the fact
you yet again engineered a perfect solution (Everything passed). However the next step will see you needing to
lean on other people, which is where the evolution in your code writing from a heavily bus-factored approach (This 
is one that only **you** understand), to one of a more collaborative approach (Where all can understand).
