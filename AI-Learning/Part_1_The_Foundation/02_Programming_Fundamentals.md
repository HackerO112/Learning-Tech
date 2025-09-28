# Day 2: Programming as Applied Logic

**Level:** 0 (Beginner)

**Objective:** To understand the fundamental building blocks of programming (variables, data structures, and control flow) not as syntax, but as tools for executing logical ideas.

---

## The Core Idea: Instructions for a Literal Mind

An AI, or any computer, is a perfectly literal-minded servant. It does *exactly* what you tell it to do, not what you *want* it to do. Programming is the art of creating unambiguous, logical instructions.

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

**Key Data Types:**
*   **Integer (`int`):** Whole numbers (e.g., `10`, `-5`).
*   **Float (`float`):** Numbers with decimal points (e.g., `3.14`, `-0.001`).
*   **String (`str`):** Text, enclosed in quotes (e.g., `"Hello, World"`).
*   **Boolean (`bool`):** Represents truth or falsehood (`True` or `False`). This is the bedrock of logic.

## 2. Data Structures: Organizing Information

If variables are nouns, data structures are the shelves and filing cabinets you use to organize them.

**The List (`list`): An Ordered Collection**
Use a list when the order of items matters.

```python
# A list of steps in a process.
rocket_launch_sequence = ["Perform system checks", "Begin fuel loading", "Initiate countdown", "Main engine start", "Liftoff"]

# We can access items by their position (index), starting from 0.
first_step = rocket_launch_sequence[0]  # "Perform system checks"
final_step = rocket_launch_sequence[-1] # "Liftoff"

print(f"The first step is: {first_step}")
```

**The Dictionary (`dict`): A Labeled Collection**
Use a dictionary when you want to store and retrieve data by a specific name (a "key").

```python
# A dictionary representing a specific celestial object.
# The keys are strings, the values can be any data type.
planet_data = {
    "name": "Mars",
    "mass_kg": 6.4171e23,
    "has_atmosphere": True,
    "moons": ["Phobos", "Deimos"]
}

# We access data by its key, not by its position.
mass = planet_data["mass_kg"]
moons = planet_data["moons"]

print(f"The mass of {planet_data['name']} is {mass} kg.")
```

## 3. Control Flow: Making Decisions

This is where logic truly comes alive. Control flow statements allow your program to execute different instructions based on whether a condition is `True` or `False`.

**The `if` Statement: The Basic Decision**

```python
# A boolean variable representing a condition.
is_raining = True

if is_raining == True:
    print("Remember to bring an umbrella.")
else:
    print("Enjoy the clear skies.")
```

**The `for` Loop: Repeating an Action**
A `for` loop allows you to perform the same action on every item in a collection.

```python
# We can iterate through our list from before.
for step in rocket_launch_sequence:
    print(f"Current step: {step}...")

print("All steps completed.")
```

---

**Your Task for Today:**

1.  Create a new file named `day2.py`.
2.  Create a dictionary to represent your favorite movie. It should include keys for `title`, `director`, `year`, and a list of `main_actors`.
3.  Write a `for` loop that iterates through the list of actors and prints each one's name.
4.  Write an `if` statement that checks if the movie was released before the year 2000 and prints a different message depending on the result.

This exercise will solidify your understanding of how to store, organize, and make logical decisions about data. This is the fundamental skill upon which all AI is built.
