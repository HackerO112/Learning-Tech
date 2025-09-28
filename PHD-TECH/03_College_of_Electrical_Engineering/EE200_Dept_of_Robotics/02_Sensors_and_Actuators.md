# EE201, Day 2: The Senses and Muscles - Sensors & Actuators

**College:** Electrical Engineering
**Department:** Robotics
**Level:** Intermediate

**Objective:** To understand the different types of sensors (a robot's senses) and actuators (a robot's muscles) that allow a robot to perceive and interact with the physical world.

---

## The Interface to the World

A robot, like any intelligent agent, needs to be able to perceive its environment and act upon it. In robotics, this is accomplished through **sensors** and **actuators**.

*   **Sensors:** Devices that measure a physical quantity and convert it into an electrical signal the robot's computer can understand.
*   **Actuators:** Devices that take an electrical signal and convert it into a physical action (usually motion).

## 1. The Senses: Common Robotic Sensors

A robot's perception of the world is only as good as its sensors.

### Proprioceptive Sensors: The Inner Ear
These sensors measure the internal state of the robot itself.

*   **Encoders:** The most common type. They are attached to the shaft of a motor and measure how much it has rotated. By counting the rotations, the robot can know the exact angle of its joints, which is crucial for kinematics.
*   **Inertial Measurement Units (IMUs):** These are the "inner ear" of the robot. They usually contain:
    *   An **accelerometer** to measure linear acceleration (changes in speed and direction).
    *   A **gyroscope** to measure angular velocity (how fast it is spinning).
    *   Often a **magnetometer** to measure orientation relative to the Earth's magnetic field (a compass).
    IMUs are essential for drones, self-driving cars, and even your phone to know their orientation in space.

### Exteroceptive Sensors: The Eyes and Ears
These sensors measure the state of the external environment.

*   **Proximity Sensors:**
    *   **Infrared (IR):** Emits a beam of infrared light and measures the reflection. Simple, cheap, and good for basic obstacle detection.
    *   **Ultrasonic:** Emits a high-frequency sound pulse and measures the time it takes for the echo to return. Works like a bat's sonar.

*   **Cameras:** The richest source of data. Provides a 2D image of the world. This data is processed using **Computer Vision** (a subfield of AI) to recognize objects, navigate, and understand scenes.

*   **LiDAR (Light Detection and Ranging):**
    *   **How it works:** A LiDAR unit spins rapidly, sending out thousands of laser beams per second. It measures the precise time it takes for each beam to reflect off an object, creating a detailed, 3D "point cloud" map of the environment.
    *   **Why it matters:** LiDAR is the primary sensor for most self-driving cars because it provides a direct, accurate measurement of distance and shape, which is much more reliable than trying to infer depth from a 2D camera image.

## 2. The Muscles: Common Robotic Actuators

Actuators are what make a robot move. The vast majority of actuators are electric motors.

### Electric Motors

*   **DC Motors:** The simplest type. You apply a voltage, and they spin. The speed is proportional to the voltage. They are cheap and easy to use but offer no position control. Often used for the wheels on a simple robot.

*   **Servo Motors:** These are special motor assemblies that are essential for robotics. A servo is a DC motor combined with a **gearbox** (to increase torque) and a **position sensor** (an encoder) and a small **controller circuit**. 
    *   **How it works:** You don't just tell a servo to spin; you tell it what **angle** to go to (e.g., "go to 90 degrees"). The internal controller circuit automatically runs a PID feedback loop to move the motor to that exact angle and hold it there, even against external forces. This makes them ideal for robotic joints.

*   **Stepper Motors:** These motors move in discrete "steps." You can command them to move a precise number of steps (e.g., "move 200 steps," which might correspond to one full revolution). They are very precise for position control but can be less powerful than servos. Often used in 3D printers and CNC machines.

### Other Actuators

*   **Solenoids:** A coil of wire that creates a magnetic field when current flows through it. Usually used to push or pull a small pin. Good for simple actions like locking a door.
*   **Hydraulic/Pneumatic Actuators:** Use pressurized fluid (oil for hydraulics, air for pneumatics) to move large, heavy pistons. Used for industrial robots that need to lift immense weights.

## The Full Loop

Now we can see the full robotics loop in action:

1.  **Perception:** The robot's **sensors** (e.g., a camera and LiDAR) capture data about the environment.
2.  **Processing:** The robot's computer (e.g., a microcontroller or a more powerful processor) runs an AI model to process this data and make a decision. This involves kinematics and control theory.
3.  **Action:** The computer sends a command (an electrical signal) to an **actuator** (e.g., a servo motor in a joint).
4.  The actuator moves, changing the state of the robot and the environment.
5.  The loop repeats, creating a continuous cycle of perception and action.

---

**Your Task for Today:**

1.  **Sensor Inventory:** Look around the room you are in. Identify at least three devices that contain a sensor. What does it sense? (e.g., a thermostat has a temperature sensor, a smoke detector has a smoke particle sensor, your phone has a camera, microphone, and IMU).
2.  **Actuator Inventory:** Identify at least two devices that contain an actuator. What does it move? (e.g., the vibration motor in your phone, the motor that spins the fan in your computer, the lock on a door).
3.  **Design a Simple Robot:** On paper, design a very simple robot to solve a specific problem (e.g., a robot that automatically waters a plant). What sensors would it need? What actuators would it need? Describe the logic of its control loop.

Understanding the hardware that connects a robot to the world is essential for building systems that can operate outside of a pure simulation.
