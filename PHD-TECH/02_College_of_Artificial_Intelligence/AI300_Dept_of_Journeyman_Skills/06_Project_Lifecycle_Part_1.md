# AI301, Day 6: The Project Begins - From Idea to Dataset

**College:** Artificial Intelligence
**Department:** Journeyman Skills
**Level:** Advanced

**Objective:** To learn the crucial first steps of any applied AI project: defining a solvable problem and then collecting, cleaning, and preparing the data.

---

## The Most Important Step

So far, we have worked with clean, pre-packaged datasets like Iris. In the real world, data is never this simple. The vast majority of an applied AI practitioner's time is not spent building models, but in the unglamorous but essential work that comes before it.

Many projects fail before a single model is ever trained because they fail at this first stage.

## Step 1: Define the Problem

This is not a technical step; it is a critical thinking step. You must translate a vague goal into a specific, solvable machine learning problem.

**The Litmus Test:** A problem is well-defined if you can clearly answer these three questions:

1.  **What is the input?** (e.g., An image of a skin lesion)
2.  **What is the output?** (e.g., A probability that the lesion is malignant)
3.  **How will you measure success?** (e.g., The model must achieve >95% accuracy and have a low false-negative rate)

**Example:**

*   **Vague Goal:** "I want to use AI to improve customer support."
*   **Well-Defined Problem:**
    *   **Input:** The full text of an incoming customer support email.
    *   **Output:** A single category label: "Billing," "Technical Support," or "Sales Inquiry."
    *   **Success Metric:** The model correctly routes 98% of incoming emails, which will be measured against a human-labeled test set.

Notice that we have just framed this as a **Supervised Classification** problem. Defining the problem correctly tells you which family of ML to use.

## Step 2: Collect the Data

Once you have a well-defined problem, you need data. This is often the hardest part.

*   **Where does it come from?** Do you have existing data (e.g., years of past support emails)? Do you need to collect it (e.g., by scraping websites or using APIs)? Do you need to create it (e.g., by paying people to label images)?
*   **How much do you need?** This is a hard question. The answer depends on the complexity of the problem. It can range from a few thousand examples for a simple fine-tuning task to billions of images for training a foundation model.
*   **What are the biases?** The data you collect is a reflection of the world. If your data is biased, your model will be biased. If you train a hiring model on data from a company that has historically only hired men, the model will learn to be biased against women. **This is a critical ethical consideration.**

## Step 3: Clean the Data

Real-world data is always messy. Always.

**Common Cleaning Tasks:**

*   **Handling Missing Values:** What do you do with a row in your dataset that is missing a user's age? Do you delete the row? Do you fill it in with the average age? Each choice has consequences.
*   **Correcting Errors:** The data might have typos, incorrect entries, or nonsensical values (e.g., a human age of 200).
*   **Removing Duplicates:** Datasets often contain repeated entries that need to be removed.
*   **Standardizing Formats:** Making sure all dates are in the same format, all text is in lowercase, etc.

This step is tedious but absolutely essential. A model trained on messy, incorrect data will produce messy, incorrect predictions. The principle is **"Garbage In, Garbage Out."**

## Step 4: Prepare the Data (Feature Engineering)

Once the data is clean, you need to transform it into the numerical format that a model can understand (vectors and matrices).

This process is called **feature engineering**.

*   **Text:** Text must be **tokenized** (split into words or sub-words) and then converted into numerical vectors (embeddings), as we discussed in Foundations and earlier in this department.
*   **Categorical Data:** Labels like "Billing" or "Sales" need to be converted into numbers. A common technique is **one-hot encoding**, where each category becomes a column in a binary vector (e.g., `Billing = [1, 0, 0]`, `Sales = [0, 1, 0]`).
*   **Numerical Data:** Numerical data often needs to be **scaled** (as we saw in Apprentice Studies) so that all features are on a similar range. This prevents features with large values (like `income`) from overpowering features with small values (like `age`).
*   **Creating New Features:** Sometimes you can create new, more useful features from the existing ones. For example, from a `date` column, you could extract the `day_of_week` or `month`, which might be more predictive.

Only after these four steps are complete can you finally move on to training the model.

---

**Your Task for Today:**

This is a planning and critical thinking day.

1.  **Choose one of the following vague goals:**
    *   "Use AI to predict the weather."
    *   "Use AI to create a personalized music recommendation system."
    *   "Use AI to detect fake news."
2.  **Define it as a specific, solvable machine learning problem.** Answer the three key questions: What is the input? What is the output? How do you measure success?
3.  **Identify the ML family.** Is your problem Supervised, Unsupervised, or Reinforcement Learning?
4.  **Brainstorm your dataset.** What data would you need to collect? Where would you get it? What potential biases might exist in that data?

This exercise is a simulation of the real first steps of any serious AI project. Mastering this process is what separates a hobbyist from a professional.
