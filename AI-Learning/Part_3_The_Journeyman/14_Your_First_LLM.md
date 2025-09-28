# Day 14: The Modern Toolkit - Your First LLM

**Level:** 2 (Journeyman)

**Objective:** To use the Hugging Face `transformers` library to download and interact with a pre-trained Large Language Model (LLM).

---

## The Age of Pre-training

Training a large Transformer model from scratch is a monumental task. It requires vast amounts of data (a significant portion of the internet) and millions of dollars worth of computational power. It is not something an individual or most companies can do.

Instead, the modern workflow is based on **pre-training**. A major lab (like Google, OpenAI, or Meta) invests the resources to train a massive **foundation model**. They then release this model to the public.

We can then use this powerful, pre-trained model for our own tasks. This is a form of **transfer learning**—transferring the knowledge from a huge, general model to our specific problem.

## The Toolkit: Hugging Face

**Hugging Face** is a company and an open-source community that has become the central hub for modern AI. Their `transformers` library makes it incredibly easy to download, use, and share thousands of pre-trained models.

**Your Task:** Install the `transformers` library. Because different models have different dependencies, we will install the version for TensorFlow.

Open your terminal and run:
`pip install "transformers[tf-cpu]"`

## The Pipeline: The Easiest Way to Use a Model

The `pipeline` function in the `transformers` library is the simplest way to use a pre-trained model for a specific task. You tell it the task you want to do, and it handles all the complexity of downloading the model, pre-processing the input, and formatting the output.

Let's try a few common tasks.

### 1. Sentiment Analysis

This is a classification task: is a piece of text positive or negative?

```python
from transformers import pipeline

# Create a sentiment analysis pipeline
# This will download a default model fine-tuned for this task
classifier = pipeline("sentiment-analysis")

# Analyze a positive sentence
result_pos = classifier("This movie is a masterpiece. The acting was superb.")
print(f"Positive review: {result_pos}")

# Analyze a negative sentence
result_neg = classifier("I was so bored throughout the entire film. A complete waste of time.")
print(f"Negative review: {result_neg}")
```

### 2. Zero-Shot Classification

This is a more advanced task where you can specify the labels you want to classify the text into, even if the model was never trained on those specific labels. This is where the general knowledge of LLMs shines.

```python
from transformers import pipeline

# Create a zero-shot classification pipeline
classifier = pipeline("zero-shot-classification")

# Define your own candidate labels
my_labels = ["politics", "education", "business", "technology"]

text = "The government passed a new law today to increase funding for public schools."

result = classifier(text, candidate_labels=my_labels)
print(f"\nText: '{text}'")
print(f"Result: {result}")
```

### 3. Text Generation

Here, we use a model to generate text based on a starting prompt. This is what powers chatbots and creative writing tools.

```python
from transformers import pipeline

# Create a text generation pipeline
# We can specify a smaller, faster model like gpt2
generator = pipeline("text-generation", model="gpt2")

# Generate text
# `max_length` is the total length of the output
# `num_return_sequences` is how many different versions to generate
prompt = "In a shocking discovery, scientists found a new species of unicorn living in"

results = generator(prompt, max_length=50, num_return_sequences=3)

print(f"\nPrompt: '{prompt}...'")
for i, result in enumerate(results):
    print(f"Result {i+1}: {result['generated_text']}")
```

### 4. Masked Language Modeling

This is one of the core training objectives for many LLMs (like BERT). The model is given a sentence with a word masked out, and its job is to predict the missing word.

```python
from transformers import pipeline

# Create a fill-mask pipeline
unmasker = pipeline("fill-mask")

# Use the special <mask> token
text = f"The capital of France is {unmasker.tokenizer.mask_token}."

results = unmasker(text)

print(f"\nText: '{text}'")
for result in results:
    print(result)
```

---

**Your Task for Today:**

1.  Create a new file named `day14.py`.
2.  Choose any two of the pipeline examples above and put them in your file.
3.  Run the script. The first time you run it, it will take some time to download the pre-trained models.
4.  **Experiment!**
    *   For sentiment analysis, try writing a sentence that is neutral or sarcastic. How does the model handle it?
    *   For zero-shot classification, invent your own set of labels and write a sentence to test it.
    *   For text generation, try a different prompt. What kind of text does the model generate?

Today you have wielded the power of a state-of-the-art Large Language Model. You have seen how pre-trained models can be easily adapted to a variety of tasks. This is the fundamental workflow of the modern AI practitioner.
