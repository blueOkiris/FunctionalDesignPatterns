# FunctionalDesignPatterns

## Description

This repo is to remove the misconception that functional programming has no paradigms.

This misunderstanding usually arrives from showing that OOP Design patterns directly translate to a functional programming style. As such, everything is a function, so some misunderstand this as there aren't patterns.

Essentially, a proper object has zero public state. "Best practice" has objects as implementations of interfaces that may have private state under the hood, but from a top-level perspective, they're really containers for functions.

In other words, you can apply many object oriented design patterns by thinking of the objects not as *data*, but rather modules in a functional programming language.

I plan to over-engineer the fizz-buzz problem as a complex OOP program in UML, and I will implement the UML in C# and Haskell.

## Fizz-Buzz Overblown

Alright so the classic fizz buzz problem:

 1. Print the numbers 1 - 100

 2. If a number is a multiple of 3 then print Fizz

 3. If a number is a multiple of 5 then print Buzz

 4. If both, then print both ("FizzBuzz")

Now how can we make this overcomplicated?

Well things can change:

 - Imagine the number can be higher than 100.

 - Imagine numbers other than 3 or 5 print something else.

 - Imagine it doesn't even have to be numbers.

So let's focus on the relationships. There's some range of values. While iterating, a comparison can be drawn between the current value and some other value. If that comparison produces a corresponding result (could be original example: number % 3 == 0, could be something crazier: len(string) < 5), then *output* (note: not necessarily print!) a value. If the comparison is false, output the value itself.

Alright so what are the objects? Well there's some sort of output, there's some sort of iterable, there's some sort of object that's comparable and showable and has a function for fizzbuzz to be true.

Here's my UML:

![fizz buzz class diagram](FizzBuzz.png)

## Build dependencies

 - Linux (since this is an example, I'm not bothering with making my makefile cross-platform and everything. Not super hard to change though)

 - Dotnet core sdk

 - Stack (Haskell)
