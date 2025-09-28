# How Do Computers Do Math? (ELI3)

Wow, hello, little mathematician! You know how to add numbers, right? `1 + 1 = 2`. You are so smart!

But a computer's Thinking Brain is made of little switches and workers (`AND`, `OR`, `NOT`). It doesn't have fingers to count on. So how does it do math?

It builds a special machine out of the little workers! Let's see how.

## The Secret Code for Numbers

First, we have to teach the computer how to count. Computers don't use numbers like 1, 2, 3. They only know `ON` and `OFF` (which we call `1` and `0`). This is called **binary**.

*   `0` is **OFF**
*   `1` is **ON**
*   To write the number `2`, they say "one `2` and zero `1`s", so they write `10`.
*   To write the number `3`, they say "one `2` and one `1`", so they write `11`.

It's a secret code! Everything is just `ON`s and `OFF`s.

## Building an Adding Machine!

Now let's build a machine to add `1 + 1`.

We need two little workers we learned about before:
*   An **`XOR` worker** (a fancy `OR` that is only `ON` if one input is on, but not both).
*   An **`AND` worker** (the picky one that is only `ON` if both inputs are `ON`).

Let's call our machine a **Half Adder**. It has two inputs (the two numbers we want to add) and two outputs (the answer).

Imagine we want to add `1 + 1`:

1.  We send a `1` (ON) to the first input and a `1` (ON) to the second input.

2.  Both inputs go to the `XOR` worker. The `XOR` worker sees that *both* inputs are on, so he gets confused and shouts `0` (OFF)! This is the first part of our answer.

3.  Both inputs also go to the `AND` worker. The `AND` worker sees that *both* inputs are on, so he gets very excited and shouts `1` (ON)! This is the second part of our answer, the "carry-over," like when you carry the 1 in grown-up math.

4.  So the two outputs are `1` and `0`. The computer reads that as the number `10`. And what is `10` in our secret computer code? It's the number **2**!

We did it! We made a machine that knows `1 + 1 = 2`!

## From Little Adders to Big Brains

Computer scientists are amazing builders. They can take these little Half Adder machines and stick them together to make a **Full Adder**. 

Then they can stick lots of Full Adders together to make a machine that can add really, really big numbers!

And they can use the same ideas, with just the little `AND`, `OR`, and `NOT` workers, to build other machines that can do subtraction, and multiplication, and division!

All these little math machines live inside the computer's Thinking Brain (the CPU). So when you ask the computer to do a math problem, it's not thinking like you do. It's just sending `ON` and `OFF` signals through a giant, super-fast maze of these little worker gates.

It's not thinking, it's just flipping switches really, really fast! And that is how a computer does math! So cool!
