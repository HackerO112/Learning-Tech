# EE101, Day 2: The Logic of Switches - Digital Electronics

**College:** Electrical Engineering
**Department:** Electronics
**Level:** Beginner

**Objective:** To understand how electricity can be used to represent binary information (`1` and `0`) and how transistors are used to create logic gates, the fundamental building blocks of all digital computation.

---

## From Analog to Digital

Yesterday, we learned about electricity as a continuous, analog flow. However, modern computers are **digital**. They work with discrete values, not continuous ones. Specifically, they work with two values: `1` and `0`.

How do we represent these values with electricity?

We use a simple convention: we define a threshold voltage. 
*   A high voltage (e.g., above 3V) represents a `1` (or "ON").
*   A low voltage (e.g., below 2V) represents a `0` (or "OFF").

The space in between is an invalid state. By doing this, we create a system that is resilient to the small fluctuations and noise present in any real physical circuit.

## The Transistor: The Microscopic Switch

If we can turn a voltage ON and OFF, we can represent `1`s and `0`s. But to *compute*, we need to be able to control this flow. We need a switch.

The **transistor** is the most important invention of the 20th century. It is a tiny, semiconductor-based switch with no moving parts.

*   **How it works (simplified):** A transistor has three connections: a **source**, a **drain**, and a **gate**. Electricity wants to flow from the source to the drain, but it is blocked.
*   When you apply a small voltage to the **gate**, it opens the channel and allows current to flow from the source to the drain. 
*   **In essence: A voltage at the gate turns the switch ON.**

Your computer's CPU contains billions of these microscopic switches.

## Logic Gates: The Building Blocks of Thought

By combining transistors in clever ways, we can create slightly more complex components called **logic gates**. These are small circuits that perform a basic logical operation.

There are three fundamental logic gates:

### 1. The `NOT` Gate (or Inverter)
*   **What it does:** It takes a single input and flips it.
*   **Logic:** If the input is `1`, the output is `0`. If the input is `0`, the output is `1`.
*   **Circuit:** A simple transistor circuit can achieve this.

### 2. The `AND` Gate
*   **What it does:** It takes two inputs and outputs `1` only if *both* inputs are `1`.
*   **Logic:**
    *   `0` AND `0` -> `0`
    *   `0` AND `1` -> `0`
    *   `1` AND `0` -> `0`
    *   `1` AND `1` -> `1`
*   **Circuit:** This can be built with two transistors in series.

### 3. The `OR` Gate
*   **What it does:** It takes two inputs and outputs `1` if *at least one* of the inputs is `1`.
*   **Logic:**
    *   `0` OR `0` -> `0`
    *   `0` OR `1` -> `1`
    *   `1` OR `0` -> `1`
    *   `1` OR `1` -> `1`
*   **Circuit:** This can be built with two transistors in parallel.

![Logic Gates](https://static.javatpoint.com/tutorial/digital-electronics/images/digital-electronics-logic-gates2.png)
*(Standard symbols for the fundamental logic gates)*

## From Gates to Computers

This is the crucial leap. **Every single operation a computer performs can be built up from these three simple logic gates.**

*   **Addition:** You can combine `AND` and `OR` gates (and another gate called `XOR`) to create a circuit called a **half-adder**, which can add two bits together. You can combine half-adders to create a **full-adder**. You can combine full-adders to create a circuit that can add 8-bit, 16-bit, or 64-bit numbers.
*   **Memory:** You can combine logic gates to create a simple circuit called a **flip-flop**, which can store a single bit (`1` or `0`). You can combine billions of these to create RAM.
*   **Control:** You can combine gates to create circuits that can select which instruction to execute next, based on the results of a previous operation.

Your CPU is a breathtakingly complex arrangement of billions of transistors, forming millions of logic gates, which are combined into modules for arithmetic, logic, memory, and control. But it is all built up from the simple `NOT`, `AND`, and `OR` operations.

When you write `if x > 5:`, your code is compiled down into machine instructions that are executed by a complex circuit built from these simple gates, which are themselves built from transistors, which are controlled by the flow of electricity.

You now understand the full stack, from the abstract logic of your code down to the physical reality of the hardware.

---

**Your Task for Today:**

This is a logic puzzle day.

1.  **The `NAND` Gate:** A `NAND` gate is an `AND` gate followed by a `NOT` gate. It outputs `0` only when both its inputs are `1`. It is a "universal" gate, meaning you can create `AND`, `OR`, and `NOT` using only `NAND` gates.
    *   How would you create a `NOT` gate using only a `NAND` gate? (Hint: think about what happens if you tie the two inputs of the `NAND` gate together).
    *   (Harder) How would you create an `AND` gate using only `NAND` gates?
2.  **Think about a real-world system.** Think about a light in a staircase that can be controlled by two switches, one at the top and one at the bottom. Flipping either switch should toggle the light. This is a real-world implementation of an `XOR` (Exclusive OR) gate. Try to write out the "truth table" for it (what is the state of the light for all four combinations of the two switches being up or down?).

This exercise trains you to think in terms of binary logic, the fundamental language of all digital technology.
