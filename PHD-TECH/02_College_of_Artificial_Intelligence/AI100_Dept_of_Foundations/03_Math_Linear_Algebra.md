# AI101, Day 3: Math Part 1 - The Language of Space

**College:** Artificial Intelligence
**Department:** Foundations
**Level:** Beginner

**Objective:** To develop an intuitive understanding of the core concepts of Linear Algebra (vectors and matrices) and why they are the fundamental language of AI.

---

## Why Math? And Why This Way?

AI is applied mathematics. There is no escaping this. However, you do not need to be a mathematician to be an AI practitioner. Your goal is not to write proofs, but to build intuition.

We will approach this not as a formal math class, but as a language class. We are learning the language that computers use to "see" and manipulate data in space.

## 1. The Vector: A Point in Meaning-Space

Forget the physics definition of a vector (magnitude and direction). In AI, it's simpler and more profound:

**A vector is a list of numbers that represents the location of a concept in a high-dimensional "meaning-space."**

Imagine a 2D space. We can represent a concept like "fruit" with two numbers:
*   `sweetness` (from 1 to 10)
*   `size` (from 1 to 10)

In this space:
*   A `grape` might be the vector `[9, 2]` (very sweet, small size).
*   A `watermelon` might be the vector `[7, 9]` (less sweet, large size).
*   A `zucchini` (which is technically a fruit) might be `[1, 5]` (not sweet, medium size).

We can now do math on these concepts!

```python
import numpy as np # numpy is the fundamental library for numerical operations in Python

grape = np.array([9, 2])
watermelon = np.array([7, 9])
zucchini = np.array([1, 5])

# We can calculate the "distance" between concepts.
distance_grape_to_watermelon = np.linalg.norm(grape - watermelon)
distance_grape_to_zucchini = np.linalg.norm(grape - zucchini)

print(f"Distance between grape and watermelon: {distance_grape_to_watermelon:.2f}")
print(f"Distance between grape and zucchini: {distance_grape_to_zucchini:.2f}")
# Output shows that grape is "closer" in meaning to watermelon than to zucchini.
```

**The Leap to High Dimensions:**
Now, imagine we don't just have two features, but 300. Maybe one for `is_red`, one for `grows_on_tree`, one for `has_seeds`, etc. We can no longer visualize this space, but the math is the same. This is what an AI does. It turns words, images, and concepts into high-dimensional vectors called **embeddings**.

*   The word "king" might be a 300-number vector.
*   The word "queen" will be a vector that is very *close* to "king" in that 300-dimensional space.

## 2. The Matrix: A Transformation of Space

If a vector is a point in space, **a matrix is an action that transforms that space.** It can rotate it, stretch it, or squish it.

A matrix is just a grid of numbers (a list of lists).

```python
# A 2x2 matrix
rotation_matrix = np.array([
    [0, -1],
    [1,  0]
])

# Our original 'grape' vector
grape = np.array([9, 2])

# We apply the transformation by performing a "dot product"
rotated_grape = np.dot(rotation_matrix, grape)

print(f"Original grape vector: {grape}")
print(f"Rotated grape vector: {rotated_grape}") # Output: [-2, 9]
```

**The AI Connection:**
A neural network is, at its heart, a series of matrices (called **weight matrices**). When you feed a vector (your input data) into a neural network, it is multiplied by a series of matrices. The network *learns* the correct numbers for these matrices so that they transform the input space in a way that solves your problem.

For example, a neural network trained to classify fruit might learn a matrix that transforms the space so that all the "sweet" fruits end up in one region of the space, and all the "savory" fruits end up in another. The act of "learning" is the act of finding the right numbers for these transformation matrices.

---

**Your Task for Today:**

1.  Make sure you have `numpy` installed. In your terminal, run: `pip install numpy`.
2.  Create a file `day3_ai.py`.
3.  Define two concepts you care about as 2D vectors. For example, `cat = np.array([8, 3])` where the dimensions are `cuteness` and `independence`.
4.  Define a third concept that is either similar to the first or the second.
5.  Calculate the distance between them, just like in the example, and print the results. See if the distances match your intuition.

Your goal is not to become a linear algebra expert. It is to grasp this core idea: **AI represents concepts as points in a high-dimensional space and uses matrices to cleverly transform that space.**
