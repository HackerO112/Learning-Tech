# CS101, Day 2: The Toolbox - Data Structures & Algorithms

**College:** Computer Science
**Department:** Core Principles
**Level:** Beginner

**Objective:** To understand that Data Structures are about how to organize data, and Algorithms are about how to manipulate that data. This is the fundamental toolkit of a programmer.

---

## The Two Halves of Programming

Every computer program, no matter how complex, can be broken down into two components:

1.  **Data Structures:** The way data is stored and organized.
2.  **Algorithms:** The sequence of steps used to process that data.

Choosing the right data structure for your problem is often the key to solving it efficiently. Choosing the right algorithm is how you get the answer quickly.

## 1. Common Data Structures: The Filing Cabinets

Just as you wouldn't store a library of books in a single, unsorted pile, you shouldn't store your data without organization. We already touched on two of these on Day 2 of the AI Learning guide, but let's formalize them.

*   **Array (or List):**
    *   **What it is:** A simple, ordered list of items.
    *   **Analogy:** A numbered list of books on a shelf.
    *   **Strength:** Very fast to access an item if you know its position (its index). `Get the 5th book.`
    *   **Weakness:** Very slow to add or remove an item from the middle, because you have to shift all the other items. Slow to find an item if you don't know its position.

*   **Dictionary (or Hash Map):**
    *   **What it is:** A collection of key-value pairs.
    *   **Analogy:** A rolodex or a dictionary. You look up a name (the key) to find the information (the value).
    *   **Strength:** Extremely fast to find, add, or remove an item if you know its key.
    *   **Weakness:** Unordered. You cannot ask for the "5th item" in a dictionary.

*   **Linked List:**
    *   **What it is:** A list where each item contains the data and a pointer to the *next* item in the list.
    *   **Analogy:** A scavenger hunt, where each clue tells you where to find the next clue.
    *   **Strength:** Very fast to add or remove items from the beginning or end of the list.
    *   **Weakness:** Very slow to access an item in the middle. To get to the 100th item, you must follow the first 99 links.

*   **Tree:**
    *   **What it is:** A hierarchical structure with a root node and child nodes.
    *   **Analogy:** A family tree or a company's organizational chart.
    *   **Strength:** Very good at representing hierarchical data. A **Binary Search Tree** is a special kind of tree that is very fast for searching for data.
    *   **Weakness:** Can become unbalanced and inefficient if data is not added in a smart way.

## 2. Common Algorithms: The Recipes

An algorithm is a recipe for solving a problem. For a given problem, there are often many different algorithms, with different trade-offs in speed and complexity.

*   **Sorting Algorithms:**
    *   **The Problem:** You have an unsorted list of numbers. Put them in order.
    *   **Examples:** Bubble Sort (simple but very slow), Merge Sort, Quick Sort (both much faster and more complex).
    *   **Why it matters:** Sorting is often the first step to solving many other problems.

*   **Searching Algorithms:**
    *   **The Problem:** Find a specific item in a collection of data.
    *   **Examples:**
        *   **Linear Search:** Look at every single item one by one. Simple, but slow.
        *   **Binary Search:** If your data is *sorted*, you can use a much faster approach. Look at the middle item. If it's what you want, you're done. If it's too high, you know your item must be in the first half. If it's too low, it must be in the second half. Repeat. This is incredibly fast.

*   **Graph Algorithms:**
    *   **The Problem:** Many real-world systems can be represented as a **graph**—a set of nodes connected by edges (e.g., a social network, a map of cities and roads).
    *   **Examples:**
        *   **Dijkstra's Algorithm:** Finds the shortest path between two nodes in a graph. This is what GPS navigation uses.
        *   **Breadth-First Search (BFS) / Depth-First Search (DFS):** Ways to systematically explore all the nodes in a graph.

## 3. The Concept of "Big O" Notation

How do we compare the efficiency of algorithms? We use **Big O Notation**. It's a way of describing how the runtime or memory usage of an algorithm grows as the input size grows.

*   **O(1) - Constant Time:** The best. The algorithm takes the same amount of time regardless of the input size. (e.g., getting an item from a dictionary by its key).
*   **O(log n) - Logarithmic Time:** Extremely fast. The runtime grows very slowly as the input size (n) increases. (e.g., Binary Search).
*   **O(n) - Linear Time:** Good. The runtime grows linearly with the input size. (e.g., Linear Search).
*   **O(n^2) - Quadratic Time:** Gets slow quickly. The runtime grows by the square of the input size. (e.g., Bubble Sort).

Understanding Big O is crucial. It's how you can tell if the algorithm you've chosen will be fast enough to handle your data.

---

**Your Task for Today:**

This is a conceptual task to connect these ideas to the real world.

1.  **Choose the right Data Structure:** For each of the following scenarios, which data structure would you choose (Array, Dictionary, Linked List, Tree) and why?
    *   Storing the players on a basketball team, ranked by points scored.
    *   Storing the contact information for all your friends, so you can look them up by name.
    *   Modeling the command structure of an army.

2.  **Choose the right Algorithm:** For each scenario, which algorithm would be most appropriate?
    *   You have a phone book (which is sorted by last name) and you need to find someone's number.
    *   You are at a party and need to find your friend, but you have no idea where they are in the house.

Thinking about these trade-offs is the essence of algorithm and data structure design.
