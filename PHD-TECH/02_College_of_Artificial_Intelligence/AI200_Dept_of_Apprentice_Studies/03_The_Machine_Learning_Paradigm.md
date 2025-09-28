# AI201, Day 3: The Learning Paradigm

**College:** Artificial Intelligence
**Department:** Apprentice Studies
**Level:** Intermediate

**Objective:** To understand the fundamental paradigm shift of Machine Learning: creating systems that learn patterns from data rather than being explicitly programmed with rules.

---

## The Problem with Rules

Yesterday, we saw the power and limitations of Classical AI. The core problem was that for many real-world tasks, like identifying a cat in a photo, the rules are impossibly complex to write down.

Take a look at these two images:

![Cat 1](https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Persian_Cat_in_a_basket.jpg/1024px-Persian_Cat_in_a_basket.jpg)
![Cat 2](https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/A_cat_from_a_low_angle.jpg/1024px-A_cat_from_a_low_angle.jpg)

A human can instantly identify both as cats. But a rule-based system would fail. The lighting, angle, breed, and background are completely different. There is no simple set of `IF-THEN` rules that can capture the abstract concept of "cat-ness."

## The Paradigm Shift: Learning from Examples

Machine Learning (ML) flips the problem on its head.

*   **Classical AI:** A programmer writes the **rules** to process **data** and get **answers**.
*   **Machine Learning:** A programmer provides the **data** and the **answers**, and the machine learns the **rules** for itself.

Instead of trying to define "cat-ness" with rules, we show the machine 100,000 pictures labeled "cat" and 100,000 pictures labeled "not a cat." The machine's job is to figure out the statistical patterns that differentiate the two groups.

The result is a **model**. A model is not a set of explicit rules, but a complex mathematical function (as we learned, a series of matrix transformations) that has been trained to map a given input (an image) to a given output (a probability, like `P(cat) = 0.98`).

## The Three Families of Machine Learning

Machine Learning is a vast field, but almost every method falls into one of three main families.

### 1. Supervised Learning

This is the most common type of ML. It's called "supervised" because you act as a teacher, providing the model with a labeled dataset.

*   **The Data:** The data has been "answered" for the model. Each image is labeled "cat" or "not cat." Each email is labeled "spam" or "not spam." Each house has its price listed.
*   **The Goal:** To learn a mapping from the input to the output. `f(input) -> output`.
*   **Analogy:** Studying for a test using a textbook that has both questions and answers.
*   **Types of Problems:**
    *   **Classification:** The output is a category (e.g., `cat`, `dog`, `spam`).
    *   **Regression:** The output is a continuous number (e.g., the price of a house, the temperature tomorrow).

### 2. Unsupervised Learning

In unsupervised learning, you don't provide the answers. You give the model a large amount of unlabeled data and ask it to find the hidden structure on its own.

*   **The Data:** Raw, unlabeled data. A collection of 1 million news articles, a database of customer purchases, a set of images.
*   **The Goal:** To find the inherent patterns or groupings in the data.
*   **Analogy:** Being given a giant library of books and being asked to sort them into genres without knowing what the genres are called.
*   **Types of Problems:**
    *   **Clustering:** Grouping similar data points together (e.g., grouping customers with similar purchasing habits).
    *   **Dimensionality Reduction:** Finding a more compact representation of the data (e.g., summarizing 300 survey questions into 5 key personality traits).

### 3. Reinforcement Learning

Reinforcement Learning (RL) is about training an **agent** to operate in an **environment**. The agent learns by trial and error, receiving **rewards** or **punishments** for its actions.

*   **The Data:** There is no initial dataset. The agent generates its own data by interacting with the environment.
*   **The Goal:** To learn a **policy**—a strategy for choosing actions that maximize its total cumulative reward over time.
*   **Analogy:** Training a dog. You don't show it a manual. You give it a treat (reward) when it sits, and you say "No!" (punishment) when it chews the furniture.
*   **Types of Problems:**
    *   **Game Playing:** An AI learns to play chess by being rewarded for winning and punished for losing.
    *   **Robotics:** A robot learns to walk by being rewarded for moving forward and punished for falling down.

---

**Your Task for Today:**

Categorize the following AI problems. For each one, decide if it is best suited for Supervised, Unsupervised, or Reinforcement Learning, and explain your reasoning.

1.  Predicting the stock market price of a company tomorrow based on the last 10 years of its price history.
2.  Analyzing all the text of Shakespeare to discover the recurring themes and topics he wrote about.
3.  Training a drone to autonomously navigate a complex obstacle course as fast as possible.
4.  Going through your personal photo library and automatically grouping photos of the same person together.
5.  Building a system that reads a handwritten ZIP code on an envelope and identifies the digits.

Understanding which family a problem belongs to is the first and most important step in solving it with Machine Learning.
