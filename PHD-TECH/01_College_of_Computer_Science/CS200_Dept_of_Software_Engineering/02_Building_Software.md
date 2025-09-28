# CS201, Day 2: The Craft - Building Maintainable Software

**College:** Computer Science
**Department:** Software Engineering
**Level:** Intermediate

**Objective:** To understand the software development lifecycle and the core practices required to build software that is reliable, maintainable, and can be worked on by a team.

---

## From a Script to a Project

So far, most of the code we have written has been in single files or small scripts. This is fine for experiments, but it is not how real software is built.

Real software projects must be able to evolve over time, be understood by new team members, and be trusted to run reliably without constant supervision. This requires moving from simply writing code to the craft of **Software Engineering**.

Software Engineering is the set of practices and principles for building software as a team.

## The Software Development Lifecycle (SDLC)

Building software is a cycle. The most common modern approach is an **agile** methodology, which emphasizes short, iterative cycles.

1.  **Plan:** Define the requirements for the next small feature or improvement.
2.  **Design:** Sketch out the technical design. How will the new code fit into the existing system? What data structures and algorithms will be used?
3.  **Implement:** Write the code.
4.  **Test:** Write and run tests to ensure the new code works as expected and hasn't broken anything else.
5.  **Deploy:** Release the new version of the software to users.
6.  **Maintain:** Monitor the software in production, fix bugs, and gather feedback, which feeds back into the planning phase for the next cycle.

## Core Practices for Quality Software

How do we ensure the code we write is high-quality?

### 1. Version Control (Git)

We introduced this on Day 1 of the Foundation. At the professional level, it is the absolute bedrock of all software development. Every project lives in a Git repository.

*   **The Workflow:**
    1.  You create a new **branch** to work on a new feature.
    2.  You make your changes and **commit** them with clear messages explaining what you did.
    3.  When you are finished, you open a **Pull Request (PR)** to merge your changes back into the main branch.
    4.  A teammate **reviews** your code, provides feedback, and once it is approved, the PR is merged.
*   **Why it's essential:** It provides a complete history of the project, prevents team members from overwriting each other's work, and enforces a code review process.

### 2. Testing

How do you know your code works? How do you know that a new change hasn't broken an old feature? You write automated tests.

*   **Unit Tests:** These are small tests that check a single function or component in isolation. They should be fast and focused.
    *   *Example:* A test for a function `add(a, b)` would check if `add(2, 3)` returns `5`.
*   **Integration Tests:** These tests check that multiple components of your system work together correctly.
    *   *Example:* A test that checks if your application can successfully write data to and read data from the database.
*   **End-to-End (E2E) Tests:** These tests simulate a real user's workflow from start to finish.
    *   *Example:* An automated test that opens your web application in a browser, logs in a user, clicks a button, and verifies that the correct page is displayed.

A project with a strong test suite can be changed and refactored with confidence.

### 3. Dependency Management

Modern software is built on the shoulders of giants. We use hundreds of open-source libraries so we don't have to reinvent the wheel. A **dependency manager** is a tool that helps you manage these external libraries.

*   **Examples:** `pip` with `requirements.txt` (Python), `npm` with `package.json` (JavaScript), `Cargo` (Rust).
*   **What it does:** It allows you to specify the exact versions of the libraries your project depends on. This ensures that every developer on the team is using the same versions and that the project will build reliably now and in the future.

### 4. Code Style and Linting

Code must be read by humans, not just computers. A consistent code style makes the code easier to read and understand.

A **linter** is a tool that automatically checks your code for stylistic errors (e.g., incorrect indentation, lines that are too long) and common programming mistakes.

*   **Examples:** `ruff` or `pylint` for Python, `ESLint` for JavaScript.
*   **The Goal:** To enforce a consistent style across the entire project and to catch bugs before the code is even run.

## The Mindset of a Software Engineer

Beyond the tools, software engineering is a mindset.

*   **Write code for others:** Always assume someone else will have to read and maintain your code. Write clear variable names. Add comments to explain the *why*, not the *what*.
*   **Automate everything:** If you have to do a manual task more than twice, write a script to automate it. This applies to testing, deployment, and setup.
*   **Embrace simplicity:** The best solution is often the simplest one that works. Avoid unnecessary complexity.

---

**Your Task for Today:**

Let's apply these practices to our simple Python scripts.

1.  **Create a Git repository.**
    *   Create a new folder on your computer for this task.
    *   Open a terminal in that folder and run `git init`. You have just created a local Git repository.
2.  **Add a Linter to VS Code.**
    *   Install the `Ruff` extension in VS Code.
    *   Create a new Python file, `my_script.py`.
    *   Write some poorly formatted Python code (e.g., `x=   5`, with extra spaces). Notice how the linter immediately highlights the stylistic error.
3.  **Manage a Dependency.**
    *   In your terminal, run `pip install numpy`.
    *   Now, run `pip freeze > requirements.txt`. This command saves all the libraries you have installed into a file. This file can be shared with other developers to replicate your environment.
4.  **Commit your work.**
    *   In the terminal, run `git add .` to stage your new files.
    *   Run `git commit -m "Initial commit with setup and script"`. You have just saved your first version-controlled snapshot of a project.

Today, you have taken the first step from being a coder to being a software engineer. You are learning the practices that allow us to build the vast, complex, and reliable software that powers the modern world.
