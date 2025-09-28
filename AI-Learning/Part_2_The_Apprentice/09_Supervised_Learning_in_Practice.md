# Day 9: Your First Model - Supervised Learning in Practice

**Level:** 1 (Apprentice)

**Objective:** To build, train, and evaluate your first supervised machine learning model using the Scikit-learn library. You will also understand the fundamental trade-off between underfitting and overfitting.

---

## From Theory to Practice

Today, we move from concepts to code. We will build a simple **classifier**. Our goal is to train a model that can look at a set of measurements for a flower and predict which species of iris it belongs to. We will use the famous "Iris dataset," which is a classic starting point for machine learning.

## 1. The Toolkit: Scikit-learn

**Scikit-learn** is the most popular and important machine learning library in Python (besides the deep learning frameworks we'll see later). It provides easy-to-use tools for all the fundamental ML tasks.

**Your Task:** Install Scikit-learn. Open your terminal and run:
`pip install scikit-learn`

## 2. The Workflow: A Step-by-Step Guide

Every supervised learning problem follows the same basic workflow.

### Step 1: Load the Data
First, we need our labeled dataset. The Iris dataset is so common that it's built right into Scikit-learn.

```python
from sklearn.datasets import load_iris

# Load the dataset
iris = load_iris()

# The data is stored in a dictionary-like object
X = iris.data  # The flower measurements (features)
y = iris.target # The flower species (labels/answers)

print(f"Features (first 5 rows):\n{X[:5]}")
print(f"Labels (first 5 rows): {y[:5]}")
print(f"Species names: {iris.target_names}")
```

### Step 2: Split the Data
This is a critical step. We cannot evaluate our model on the same data we used to train it. That would be like giving a student the answers to a test before they take it. 

We split our data into a **training set** (which the model learns from) and a **testing set** (which we use to evaluate its performance on unseen data).

```python
from sklearn.model_selection import train_test_split

# Split data into 80% for training and 20% for testing
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)
```

### Step 3: Choose and Train the Model
We will use a simple but powerful classification model called a **Logistic Regression** classifier. Don't worry about the math behind it for now. Just think of it as a machine that learns a line (or a plane in higher dimensions) to separate the different classes of data.

```python
from sklearn.linear_model import LogisticRegression

# 1. Create an instance of the model
model = LogisticRegression(max_iter=200)

# 2. Train the model on the training data
# The .fit() method is where the learning (gradient descent) happens!
model.fit(X_train, y_train)

print("Model trained successfully!")
```

### Step 4: Evaluate the Model
Now, we use our testing set—the data the model has never seen before—to see how well it performs.

```python
from sklearn.metrics import accuracy_score

# Make predictions on the test data
y_pred = model.predict(X_test)

# Compare the model's predictions to the actual answers
accuracy = accuracy_score(y_test, y_pred)

print(f"Model predictions: {y_pred}")
print(f"Actual answers:    {y_test}")
print(f"Accuracy: {accuracy * 100:.2f}%")
```
If everything runs correctly, you should see an accuracy of 100%! (This is rare and happens because the Iris dataset is very simple).

## 3. The Fundamental Trade-Off: Overfitting vs. Underfitting

Your goal as an ML practitioner is to find a model that is not too simple and not too complex.

*   **Underfitting:** Your model is **too simple**. It fails to capture the underlying patterns in the training data. It performs poorly on both the training data and the testing data. (Imagine trying to fit a straight line to a complex curve).
*   **Overfitting:** Your model is **too complex**. It learns the training data *too well*. It memorizes the noise and random fluctuations in the training data instead of the general pattern. It performs perfectly on the training data but poorly on the unseen testing data.

![Overfitting vs Underfitting](https://scikit-learn.org/stable/_images/sphx_glr_plot_underfitting_overfitting_001.png)

This is the central challenge in supervised learning. A good model **generalizes** well. It learns the true underlying pattern from the training data and can apply that pattern successfully to new, unseen data.

---

**Your Task for Today:**

1.  Create a new file named `day9.py`.
2.  Put all the code snippets from today's lesson into that file.
3.  Run the file from your terminal: `python day9.py`.
4.  Ensure you get the output at each step and understand what it represents.
5.  **Experiment:** Change the `test_size` in `train_test_split` from `0.2` to `0.5`. What happens to the accuracy? Why? Change the `random_state` to a different number. What happens? Why?

Today, you have bridged the gap from theory to practice. You have performed the fundamental workflow of supervised machine learning.

```