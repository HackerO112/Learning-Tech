# CS201, Day 3: The Global Application - Web Development

**College:** Computer Science
**Department:** Software Engineering
**Level:** Intermediate

**Objective:** To understand the fundamental components of a modern web application, including the frontend, backend, and database, and how they interact.

---

## The World's Operating System

The web browser has become a universal application platform. Understanding how to build for the web is one of the most valuable skills for a technologist. A modern web application is a complex system with three main parts.

## 1. The Frontend: What the User Sees

The frontend is the part of the application that runs in the user's web browser. It is responsible for the user interface (UI) and user experience (UX).

**The Three Languages of the Frontend:**

*   **HTML (HyperText Markup Language):** Defines the **structure and content** of the page. It is the skeleton. You use HTML tags to define headings, paragraphs, images, buttons, and forms.
    *   *Example:* `<p>This is a paragraph.</p>`
*   **CSS (Cascading Style Sheets):** Defines the **presentation and style** of the page. It is the clothing and appearance. You use CSS to define colors, fonts, layouts, and animations.
    *   *Example:* `p { color: blue; font-size: 16px; }`
*   **JavaScript:** Defines the **interactivity and behavior** of the page. It is the nervous system. You use JavaScript to handle user events (like clicks), fetch data from the backend, and dynamically update the page without needing to reload it.

**Modern Frontend Frameworks:**
Building a complex UI from scratch with just these three languages is difficult. Most modern development uses a **frontend framework** to manage this complexity.

*   **Examples:** React, Angular, Vue.
*   **What they do:** They allow you to build your UI as a set of reusable **components**. For example, you could create a `<UserProfile>` component that contains all the HTML, CSS, and JavaScript needed to display a user's profile picture and name. You can then reuse this component throughout your application.

## 2. The Backend: The Engine Room

The backend is the part of the application that runs on a **server**. It is responsible for the core logic, data processing, and communication with the database.

**The Backend's Core Responsibilities:**

*   **Handling Requests:** It listens for incoming requests from the frontend (as we discussed on Day 5 of Core Principles).
*   **Business Logic:** It executes the core logic of the application. For an e-commerce site, this would be things like processing payments, managing inventory, and calculating shipping costs.
*   **Authentication & Authorization:** It handles user login, verifying that a user is who they say they are (authentication) and that they have permission to perform a certain action (authorization).
*   **Communicating with the Database:** It is the only part of the system that is allowed to talk directly to the database.

**The API (Application Programming Interface):**
The frontend and backend communicate via an **API**, most commonly a **REST API** over HTTP.

*   The frontend sends an HTTP request to a specific URL on the backend (e.g., `GET /api/users/123`).
*   The backend processes the request, retrieves the data from the database, and sends it back in a structured format, usually **JSON (JavaScript Object Notation)**.

**Backend Frameworks:**
Just like the frontend, backend development is done using frameworks that simplify the process of building APIs.
*   **Examples:** Node.js with Express (JavaScript), Django or FastAPI (Python), Ruby on Rails (Ruby), Spring (Java).

## 3. The Database: The Memory

The database is where the application's data is stored persistently.

**Two Main Types of Databases:**

### SQL (Relational) Databases
*   **Examples:** PostgreSQL, MySQL, SQL Server.
*   **How they work:** They store data in highly structured **tables** with pre-defined columns and data types. The tables can be linked to each other (e.g., a `users` table and an `orders` table, linked by a `user_id`).
*   **The Language:** You interact with them using **SQL (Structured Query Language)**.
*   **When to use them:** When your data is highly structured and consistency is critical (e.g., financial transactions, user records).

### NoSQL (Non-Relational) Databases
*   **Examples:** MongoDB, Redis, Cassandra.
*   **How they work:** They are a broad category of databases that do not use the rigid table structure of SQL. They might store data as JSON-like documents (MongoDB), as key-value pairs (Redis), or in other ways.
*   **When to use them:** When your data is less structured, when you need to scale to massive amounts of traffic, or for specific use cases like caching (Redis).

## The Full Picture: A User Login

1.  **User:** Enters their username and password into a form (HTML) in their browser and clicks "Login".
2.  **Frontend (JavaScript):** An event listener on the button captures the click. It gathers the username and password and sends a `POST` request to the backend at `/api/login`.
3.  **Backend (e.g., Python/FastAPI):** The server receives the request. It takes the password, hashes it for security, and then queries the **Database**.
4.  **Database (e.g., PostgreSQL):** The database searches the `users` table for a user with the given username and matching hashed password.
5.  **Backend:** The database returns the user record (or nothing). The backend determines if the login was successful. It creates a session token and sends a success response (with the token) back to the frontend as JSON.
6.  **Frontend:** The frontend receives the success response. It stores the session token and redirects the user to their dashboard page, dynamically updating the UI to show them as logged in.

---

**Your Task for Today:**

1.  **Explore the Web:** Open your favorite website. Open the Developer Tools in your browser (usually by pressing F12 or right-clicking and selecting "Inspect").
2.  **Look at the Frontend:** Go to the "Elements" or "Inspector" tab. You are looking at the live HTML and CSS of the page. Try changing some text or a color value and see the page update in real time.
3.  **Look at the Backend Communication:** Go to the "Network" tab. Refresh the page. You will see a list of all the requests the frontend is making to the backend to fetch data, images, and other resources. Click on one of these requests and look at the "Response" tab. You will often see the raw JSON data that the backend sent.

This exercise will make the abstract three-part structure of a web application tangible and real.
