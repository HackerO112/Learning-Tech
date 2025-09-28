# CS101, Day 1: Thinking Like a Programmer

**College:** Computer Science
**Department:** Core Principles
**Level:** Beginner

**Objective:** To understand that programming is not about knowing a language's syntax, but about a structured way of thinking and solving problems.

---

## The Prerequisite to All Technology

Before you can master any advanced technology, you must first master the art of telling a machine what to do. This art is called programming. But programming is not about code. It is about thinking.

A programmer's core skill is the ability to take a vague, real-world problem and break it down into a series of tiny, simple, and perfectly logical steps that a machine can execute.

Today, we will learn the three core pillars of this thinking process: **Decomposition**, **Pattern Recognition**, and **Abstraction**.

## 1. Decomposition: Breaking It Down

This is the most important skill. You must learn to look at any problem and break it into smaller, more manageable sub-problems. You continue this process until the sub-problems are so small that their solution is obvious.

**Problem:** "Make a cup of tea."

This seems simple to a human, but to a machine, it is a complex project. Let's decompose it.

1.  **Get water.**
    *   Go to the kitchen.
    *   Find the kettle.
    *   Take the kettle to the sink.
    *   Turn on the tap.
    *   Fill the kettle with water.
    *   Turn off the tap.
2.  **Boil the water.**
    *   Place the kettle on its base.
    *   Press the 'on' button.
    *   Wait until the water has boiled (how do we know? The button clicks off).
3.  **Prepare the tea.**
    *   Get a mug.
    *   Get a teabag.
    *   Place the teabag in the mug.
4.  **Combine and steep.**
    *   Pour the boiled water from the kettle into the mug.
    *   Wait for a period of time (e.g., 3 minutes) for the tea to steep.
5.  **Finalize the tea.**
    *   Remove the teabag.
    *   (Optional) Add milk or sugar.

Each of these tiny steps is now simple enough to be translated into a single instruction for a machine (or a robot). If you can't decompose a problem, you can't solve it.

## 2. Pattern Recognition: Finding the Similarities

Once you have decomposed a problem, you will often find that many of the sub-problems are similar. Recognizing these patterns allows you to solve a problem once and then reuse that solution.

Let's look at our tea example. Now, consider the problem "Make a cup of instant coffee."

*   **Get water.** (Same pattern)
*   **Boil the water.** (Same pattern)
*   **Prepare the coffee.**
    *   Get a mug.
    *   Get a spoon.
    *   Add instant coffee granules to the mug.
*   **Combine.**
    *   Pour the boiled water into the mug.
    *   Stir with the spoon.
*   **Finalize the coffee.**
    *   (Optional) Add milk or sugar. (Same pattern)

The patterns for getting water, boiling water, and adding milk/sugar are identical. A good programmer recognizes this. They would not write the code for "boil water" twice. They would create a single, reusable solution called a **function**.

## 3. Abstraction: Hiding the Complexity

Abstraction is the process of taking a complex solution, giving it a simple name, and hiding the details. This allows you to build more complex systems by layering simple ideas.

After recognizing the patterns in our drink-making example, we can create a set of reusable functions:

*   `boil_kettle()`
*   `add_milk_and_sugar()`

Now, our original "Make Tea" problem becomes much simpler:

1.  `boil_kettle()`
2.  Get a mug and a teabag.
3.  Pour the water in.
4.  Wait 3 minutes.
5.  Remove the teabag.
6.  `add_milk_and_sugar()`

We have **abstracted away** the complexity of boiling the kettle. We no longer need to think about the details of filling it, pressing the button, or waiting. We can just use our simple, named solution. This is the only way to build complex software. You create layers of abstraction, where each new layer is built from the simplified concepts of the layer below it.

---

**Your Task for Today:**

This is a pure thinking exercise. No code is required.

1.  **Choose a complex, everyday task.** Examples: "Do the laundry," "Cook a specific recipe," or "Plan a road trip."
2.  **Decompose it.** On a piece of paper, break the task down into its smallest, most fundamental steps, just as we did for making tea.
3.  **Recognize the patterns.** Look at your list of steps. Are there any sequences of actions that are repeated? Or that could be used in other, similar tasks? Circle these patterns.
4.  **Create abstractions.** Give a simple name to each pattern you identified. Now, rewrite your original plan using these new, simpler names.

Congratulations. You have just performed the core intellectual work of a software architect. You have learned to think like a programmer.
