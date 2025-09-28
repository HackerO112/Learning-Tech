# 6. Verification and Truth

This is perhaps the most critical skill for a master prompter. As we have established, an AI is fallible. It can be wrong. It can "hallucinate" facts. It can present biased information from its training data as objective truth. Your job is not to blindly trust the AI, but to actively verify its output.

There are two primary methods for this: grounding the AI in verifiable data and testing its reasoning in a simulated world.

## 6.1. Part A: Grounding in Data

This method involves forcing the AI to connect its statements to external, verifiable sources or to its own foundational data.

**Technique 1: Demand for Citations**
When the AI makes a factual claim, ask for its sources. This forces it to search for and present the information it used to construct its answer.

**Prompt:** "You stated that the global renewable energy market grew by 15% last year. Please provide citations from three different reputable sources (e.g., government reports, academic studies, major news organizations) that support this statistic."

*Note: Be aware that an AI can also hallucinate sources. Always check the links and references it provides.* 

**Technique 2: Cross-Examination**
Ask the AI to find information that *disagrees* with its own statement. This is a powerful way to uncover bias and to see a more complete picture of a topic.

**Prompt:** "You have given me three arguments for why nuclear fusion is the future of energy. Now, find the three strongest counter-arguments from reputable scientists or economists who are skeptical of fusion's viability."

**Technique 3: Data-Driven Prompting**
Instead of asking the AI a general question, provide it with the raw data yourself and ask it to perform its reasoning based *only* on that data. This grounds its response in a truth you control.

**Prompt:** "Below is a CSV file containing the last 1,000 trades for a specific stock. Do not use any outside knowledge. Based *only* on this data, perform a technical analysis. Calculate the 50-day moving average, the Relative Strength Index (RSI), and identify any potential support and resistance levels. Explain your findings."

## 6.2. Part B: The "Simulated World" Test

This is a more advanced technique for testing the AI's procedural and causal reasoning, as you astutely suggested in our conversation. Instead of asking the AI what it *knows*, you create a hypothetical scenario to test if it can accurately predict an outcome.

This turns a question into a verifiable experiment.

**The Structure:**
1.  **Establish the World:** Clearly define the initial state and the rules of a closed system.
2.  **Propose an Action:** State a specific action that will be taken within that system.
3.  **Ask for a Prediction:** Ask the AI to predict the outcome of that action based on the rules.

**Example 1: A Physics Test**

*   **Weak Prompt:** "What happens when you drop a feather and a bowling ball in a vacuum?"
*   **Simulated World Prompt:**
    ```
    **Simulated World:** We are in a perfect vacuum chamber on Earth. There is no air resistance. The force of gravity is 9.8 m/s^2.
    
    **Initial State:** A 10kg bowling ball and a 0.01kg feather are held at a height of 100 meters.
    
    **Action:** Both objects are released at the exact same moment.
    
    **Task:** Describe what an observer would see. Specifically, which object hits the ground first, or do they hit at the same time? Explain your reasoning based on the principles of physics.
    ```
    This is a better prompt because the AI cannot simply repeat a memorized fact. It must apply the *rules* of physics you provided to the *scenario* you created to arrive at the correct answer (they hit at the same time).

**Example 2: A Social/Economic Test**

*   **Weak Prompt:** "Does raising the minimum wage help or hurt the economy?"
*   **Simulated World Prompt:**
    ```
    **Simulated World:** We are analyzing a small, isolated city with 100 small businesses and 1,000 low-wage workers. The city's economy is fully self-contained.
    
    **Initial State:** The minimum wage is $10/hour. All 1,000 workers are employed.
    
    **Action:** The city government raises the minimum wage to $15/hour overnight.
    
    **Task:** Describe the most likely immediate economic consequences within this closed system. Model the behavior of both the business owners and the workers. Consider potential effects on employment levels, prices of goods, and overall economic activity *within this simulation*. Explain your reasoning based on basic economic principles.
    ```

By using verification techniques, you are shifting your role from a passive consumer of information to an active, skeptical scientist. You are creating experiments, demanding evidence, and building a more robust and reliable understanding of the truth.
