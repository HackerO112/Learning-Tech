# EE101, Day 1: The Flow of Power - Basic Circuit Theory

**College:** Electrical Engineering
**Department:** Electronics
**Level:** Beginner

**Objective:** To understand the three fundamental quantities of electricity (Voltage, Current, and Resistance) and how they relate to each other through Ohm's Law.

---

## The Physical Layer of Computation

We have learned about the abstract layers of software, but all computation is physical. Every `1` and `0` in your computer is represented by the presence or absence of electricity. To truly master technology, you must understand how this electricity behaves.

Electrical engineering is the study of the flow of electrical charge. The most basic building block of this field is the **circuit**.

## The Three Fundamental Quantities

Imagine electricity flowing through a pipe. This analogy helps us understand the three core concepts:

**1. Voltage (`V`): The Pressure**
*   **What it is:** Voltage is the electrical potential difference between two points. It is the "pressure" that pushes the electricity.
*   **Analogy:** The water pressure in the pipe. Higher pressure pushes the water with more force.
*   **Unit:** Volts (V).

**2. Current (`I`): The Flow Rate**
*   **What it is:** Current is the rate at which electrical charge flows past a point. It is the amount of electricity that is actually moving.
*   **Analogy:** The amount of water flowing through the pipe per second.
*   **Unit:** Amperes, or Amps (A).

**3. Resistance (`R`): The Narrowing of the Pipe**
*   **What it is:** Resistance is a measure of how much a material opposes the flow of current.
*   **Analogy:** A narrow section or blockage in the pipe that restricts the flow of water.
*   **Unit:** Ohms (Ω).

## Ohm's Law: The Unifying Equation

These three quantities are related by a simple, powerful, and fundamental equation known as **Ohm's Law**.

> **V = I * R**
> (Voltage = Current times Resistance)

This law states that the voltage across a component is directly proportional to the current flowing through it and its resistance.

Let's understand this intuitively:

*   If you keep the resistance the same and increase the voltage (increase the pressure), the current will increase (more water flows).
*   If you keep the voltage the same and increase the resistance (narrow the pipe), the current will decrease (less water flows).

## A Simple Circuit

A circuit is a closed loop that allows current to flow. The simplest possible circuit has three components:

1.  **A Power Source:** Provides the voltage (e.g., a battery).
2.  **A Load:** A component with resistance that consumes the power (e.g., a light bulb).
3.  **Conductors:** Wires with very low resistance that connect the components.

![Simple Circuit](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Simple_circuit_with_battery%2C_switch%2C_resistor_and_lamp.svg/800px-Simple_circuit_with_battery%2C_switch%2C_resistor_and_lamp.svg.png)
*(A simple circuit diagram. The battery is the voltage source, the lamp and resistor are the loads.)*

**Let's use Ohm's Law:**

*   Imagine we have a **9V battery**.
*   It is connected to a light bulb with a resistance of **3Ω**.
*   What is the current flowing through the circuit?

We can rearrange Ohm's Law: `I = V / R`

`I = 9V / 3Ω = 3A`

So, 3 Amps of current will flow through the light bulb.

## Series and Parallel Circuits

Components can be connected in two basic ways:

*   **Series:** Components are connected end-to-end in a single path. The current is the same through all components, but the voltage is split between them. The total resistance is the sum of all individual resistances.
*   **Parallel:** Components are connected on separate branches. The voltage is the same across all components, but the current is split between the branches.

Understanding this distinction is the key to designing more complex circuits.

---

**Your Task for Today:**

This is a conceptual and practical observation day.

1.  **Find a device with a battery.** Look at the battery (or its packaging). What is its voltage (V)? Common values are 1.5V (AA, AAA), 9V, or 3.7V (for lithium-ion batteries in phones).
2.  **Find a device with a power adapter.** Look at the "brick" part of the charger for your laptop or phone. It will have its output voltage and current listed (e.g., "Output: 5V / 2A"). This is the electrical pressure and flow it provides.
3.  **Solve with Ohm's Law:**
    *   If you have a 12V car battery and you connect a headlight with a resistance of 4Ω, how much current flows through it?
    *   If you measure 2A of current flowing through a 6Ω resistor, what is the voltage across it?

Today, you have learned the fundamental physics that governs all electronics. This simple law, V=IR, is the starting point for understanding everything from a light bulb to the most advanced microprocessor.
