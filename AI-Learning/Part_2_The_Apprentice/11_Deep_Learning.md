# Day 11: Going Deep - Your First Neural Network

**Level:** 1 (Apprentice)

**Objective:** To build, train, and evaluate your first deep neural network using a high-level deep learning framework (TensorFlow with Keras).

---

## The Toolkit: TensorFlow and Keras

While it's possible to build neural networks from scratch using just NumPy, it's incredibly complex. In practice, everyone uses a dedicated deep learning framework.

*   **TensorFlow:** A powerful, open-source library for numerical computation and machine learning developed by Google. It allows us to perform the massive matrix multiplications and gradient calculations needed for deep learning, especially on GPUs.
*   **Keras:** A high-level API that runs on top of TensorFlow. Keras provides a much simpler, more user-friendly way to build and train neural networks. It's like the Scikit-learn of deep learning.

**Your Task:** Install TensorFlow. Open your terminal and run:
`pip install tensorflow`

## Building a Neural Network for the Iris Dataset

Let's solve the same problem as Day 9 (classifying Iris flowers), but this time with a deep neural network. This will allow us to directly compare the workflow.

### Step 1 & 2: Load and Split the Data
This part is identical to what we did with Scikit-learn. The frameworks are designed to work together.

```python
from sklearn.datasets import load_iris
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler

# Load and split the data
iris = load_iris()
X = iris.data
y = iris.target
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# **New Step: Scale the Data**
# Neural networks perform best when the input data is scaled to have a mean of 0 and a standard deviation of 1.
scaler = StandardScaler()
X_train = scaler.fit_transform(X_train)
X_test = scaler.transform(X_test)
```

### Step 3: Define the Model Architecture
This is where Keras shines. We can define a deep neural network layer by layer, like stacking LEGO bricks.

```python
import tensorflow as tf

# We use the Sequential model, which is a simple linear stack of layers.
model = tf.keras.models.Sequential([
    # Input layer and first hidden layer. 
    # `Dense` means every neuron is connected to every neuron in the previous layer.
    # `input_shape=[4]` because we have 4 features.
    # `activation='relu'` is our non-linear activation function.
    tf.keras.layers.Dense(10, activation='relu', input_shape=[4]),

    # Second hidden layer.
    tf.keras.layers.Dense(10, activation='relu'),

    # Output layer.
    # 3 neurons because we have 3 classes of iris.
    # `softmax` is a special activation function for multi-class classification.
    # It turns the output into probabilities that sum to 1.
    tf.keras.layers.Dense(3, activation='softmax')
])

# You can print a summary of your model
model.summary()
```

### Step 4: Compile the Model
Before we can train the model, we need to configure the learning process. This is done with the `.compile()` method.

```python
model.compile(
    # `optimizer` is the specific gradient descent algorithm we will use.
    # 'adam' is a popular and effective default choice.
    optimizer='adam', 

    # `loss` is our loss function. 
    # `sparse_categorical_crossentropy` is standard for multi-class classification.
    loss='sparse_categorical_crossentropy',

    # `metrics` is a list of metrics to monitor during training.
    metrics=['accuracy']
)
```

### Step 5: Train the Model
Now we call `.fit()`, just like in Scikit-learn. An **epoch** is one full pass through the entire training dataset.

```python
# Train the model for 50 epochs
history = model.fit(X_train, y_train, epochs=50, validation_split=0.1)
```
As the model trains, you will see the loss go down and the accuracy go up with each epoch. This is gradient descent in action!

### Step 6: Evaluate the Model
Finally, we evaluate our trained model on the unseen test set.

```python
# Evaluate the model on the test set
loss, accuracy = model.evaluate(X_test, y_test)

print(f"\nTest Accuracy: {accuracy * 100:.2f}%")
```

Again, you should see a very high accuracy. We have successfully built and trained a deep neural network.

---

**Your Task for Today:**

1.  Create a new file named `day11.py`.
2.  Assemble all the code from today's lesson into this file.
3.  Run the script and observe the output. Watch the accuracy improve during training.
4.  **Experiment:**
    *   What happens if you increase the number of epochs to 100? Does the accuracy improve?
    *   What happens if you change the number of neurons in the hidden layers from 10 to 50?
    *   Try adding a third hidden layer. Does it help or hurt performance?

Today you have learned the fundamental workflow of deep learning. You can now build, train, and evaluate a neural network—the foundational skill for the most advanced applications in AI.
