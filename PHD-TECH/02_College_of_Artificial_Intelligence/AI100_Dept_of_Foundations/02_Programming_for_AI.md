# AI101, Day 2: Programming as Applied Logic

**College:** Artificial Intelligence
**Department:** Foundations
**Level:** Beginner

**Objective:** To understand the fundamental building blocks of programming (variables, data structures, and control flow) specifically as they are used to manipulate data for AI.

---

## The Core Idea: Instructions for a Literal Mind

An AI, or any computer, is a perfectly literal-minded servant. It does *exactly* what you tell it to do, not what you *want* it to do. Programming is the art of creating unambiguous, logical instructions to manipulate data.

Today, we will cover the core concepts in Python that allow you to express these instructions.

## 1. Variables: The Naming of Things

A variable is a name you give to a piece of data. This is the most fundamental act of abstraction.

```python
# In this line, we are binding the data '299792458' to the name 'speed_of_light_m_s'.
# The name makes the raw number meaningful.
speed_of_light_m_s = 299792458

# We can now use the name to perform logical operations.
# The computer will substitute the name with the data it points to.
distance_to_sun_m = 149600000000
time_for_light_to_reach_earth_s = distance_to_sun_m / speed_of_light_m_s

print(f"It takes {time_for_light_to_reach_earth_s:.2f} seconds for sunlight to reach Earth.")
```

**Key Data Types for AI:**
*   **Integer (`int`) & Float (`float`):** The primary numerical types for feature data and model weights.
*   **String (`str`):** Raw text data before it is processed.
*   **Boolean (`bool`):** The basis of all logical decisions and classifications.

## 2. Data Structures: Organizing Information

In AI, data structures are chosen based on how a model will need to access and process the information.

**The List (`list`): An Ordered Sequence**
Used for sequences of data, like time-series data or the words in a sentence.

```python
# A list representing a sequence of words.
sentence = ["The", "rocket", "has", "launched", "."]

# We can access items by their position (index), starting from 0.
first_word = sentence[0]  # "The"
```

**The Dictionary (`dict`): A Labeled Collection**
Used for storing structured data with named fields, like the features for a single data point.

```python
# A dictionary representing a single data point for a model.
flower_data_point = {
    "sepal_length_cm": 5.1,
    "sepal_width_cm": 3.5,
    "petal_length_cm": 1.4,
    "petal_width_cm": 0.2
}

# We access data by its feature name (the key).
sepal_length = flower_data_point["sepal_length_cm"]
```

## 3. Control Flow: Making Decisions

Control flow allows us to process large datasets and make decisions during analysis.

**The `if` Statement: The Basic Decision**

```python
# A boolean variable representing a condition.
model_accuracy = 0.96

if model_accuracy > 0.95:
    print("Model performance is acceptable. Proceed with deployment.")
else:
    print("Model performance is below threshold. Initiate retraining.")
```

**The `for` Loop: Repeating an Action**
A `for` loop is essential for iterating through datasets.

```python
# A list of model accuracy scores from different training runs.
accuracy_scores = [0.91, 0.94, 0.92, 0.95, 0.93]

# We can iterate through the list to analyze the results.
for score in accuracy_scores:
    if score < 0.92:
        print(f"Found a low score: {score}. This run may be an outlier.")

print("Analysis complete.")
```

---

**Your Task for Today:**

1.  Create a new file named `day2_ai.py`.
2.  Create a dictionary to represent a data point for a model that predicts house prices. It should include keys for `square_footage`, `number_of_bedrooms`, `year_built`, and `has_garage` (a boolean).
3.  Create a list containing three of these house dictionaries.
4.  Write a `for` loop that iterates through your list of houses.
5.  Inside the loop, use an `if` statement to print the `square_footage` of only the houses that have a garage.

This exercise will solidify your understanding of how to programmatically store and manipulate the kind of structured data that is used to train machine learning models.
