# AP201, Day 2: The Clockwork Heavens - Orbital Mechanics

**College:** Applied Physics
**Department:** Aerospace
**Level:** Intermediate

**Objective:** To understand the fundamental principles of orbital mechanics, including orbital velocity, types of orbits, and the concept of the Hohmann transfer for moving between orbits.

---

## A New Set of Rules

Yesterday, we learned about the forces that govern flight within the atmosphere. Once a spacecraft leaves the atmosphere, however, the rules change completely. Drag is gone. Lift is irrelevant. There is only one force that matters: **gravity**.

**Orbital mechanics** is the study of the motion of objects in space under the influence of gravity. It is a world described not by the complex equations of aerodynamics, but by the elegant and precise laws of Newton and Kepler.

## 1. What is an Orbit?

An orbit is a state of continuous freefall. 

Imagine you are on a very tall tower and you fire a cannonball horizontally.
*   If you fire it slowly, it will travel a short distance before gravity pulls it to the ground.
*   If you fire it faster, it will travel further before hitting the ground.
*   If you fire it at a very specific, high speed, the curvature of its fall will exactly match the curvature of the Earth. It will continuously fall *around* the Earth, never getting any closer to the ground. 

This state of perpetual falling is an **orbit**. The specific speed required to achieve this is called **orbital velocity**.

![Newton's Cannonball](https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Newton_Cannon.svg/800px-Newton_Cannon.svg.png)

An astronaut in orbit is not floating; they are falling. They feel weightless because they, their spacecraft, and everything inside it are all falling together at the same rate.

## 2. The Types of Orbits

Orbits are not all the same. Their characteristics are defined by their altitude and shape.

*   **Low Earth Orbit (LEO):**
    *   **Altitude:** A few hundred kilometers.
    *   **Characteristics:** This is where the International Space Station (ISS) and most satellites are. A spacecraft in LEO circles the Earth roughly every 90 minutes.
    *   **Uses:** Earth observation, communications constellations (like Starlink), the ISS.

*   **Geostationary Orbit (GEO):**
    *   **Altitude:** A very specific 35,786 kilometers.
    *   **Characteristics:** At this exact altitude, a satellite's orbital period is exactly 24 hours. If it is placed in an orbit above the equator, it will appear to hang motionless in the same spot in the sky from the ground.
    *   **Uses:** Telecommunications satellites, weather satellites.

*   **Highly Elliptical Orbit (HEO):**
    *   **Characteristics:** An oval-shaped orbit. The satellite moves very fast when it is close to the Earth (perigee) and very slowly when it is far away (apogee).
    *   **Uses:** Often used for communications in polar regions (which are not well-served by geostationary satellites) or for certain scientific observations.

## 3. Changing Orbits: The Hohmann Transfer

How do you get from one orbit to another? You can't just "steer" your spacecraft. You must use your engine to change your velocity in a precise way.

The most fuel-efficient way to move between two circular orbits is the **Hohmann transfer orbit**.

Imagine you are in a low circular orbit and you want to get to a higher circular orbit.

1.  **First Burn:** You fire your rocket engine in the direction of your travel. This **increases your velocity**. This doesn't push you "up"; it kicks you into a new, larger elliptical orbit. The point where you fired your engine is the perigee (lowest point) of this new orbit.
2.  **Coasting:** You coast along this elliptical transfer orbit until you reach its apogee (highest point), which is at the altitude of your desired higher circular orbit.
3.  **Second Burn:** When you reach the apogee, you fire your engine again in the direction of travel. This increases your velocity again, circularizing your orbit at the new, higher altitude.

![Hohmann Transfer](https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Hohmann_transfer_orbit.svg/800px-Hohmann_transfer_orbit.svg.png)

This is a fundamental maneuver in spaceflight, used for everything from moving a satellite to a higher orbit to sending a probe to another planet. It is a delicate, multi-step dance governed entirely by the laws of gravity.

## The Tyranny of the Rocket Equation

The biggest constraint in all of spaceflight is the **Tsiolkovsky rocket equation**. It relates the change in velocity a rocket can achieve (`delta-v`) to the mass of the rocket and its fuel.

*   **The Equation's Implication:** It is an exponential equation. To get a small increase in your final payload velocity, you need a huge increase in the amount of fuel. This is why the Saturn V rocket that sent astronauts to the Moon was over 90% fuel by mass. The vast majority of the rocket is just fuel to lift the fuel higher up.
*   This is why we build rockets in **stages**. We shed the mass of empty fuel tanks as we go, making the upper stages more efficient.

This equation governs the economics and engineering of all space travel. Overcoming its brutal constraints is the primary goal of companies developing reusable rockets (like SpaceX), which aim to eliminate the cost of throwing away the rocket stages on every launch.

---

**Your Task for Today:**

1.  **Play a Simulator:** The best way to build an intuition for orbital mechanics is to play with it. Play a game like Kerbal Space Program, or use a simpler free online orbit simulator.
2.  **Your Mission:** Your task in the simulator is to achieve a stable circular orbit around the Earth. Don't worry about rendezvous or going to the Moon. Just try to get into orbit without either crashing back to Earth or flying off into space.
3.  **Experience the Hohmann Transfer:** Once you are in a stable low orbit, try to perform a Hohmann transfer to a higher orbit. Perform a burn to raise your apogee, coast to the apogee, and then perform another burn to circularize.

There is no substitute for experiencing the counter-intuitive nature of orbital mechanics firsthand. It is a world where to go "up," you must first go "faster."
