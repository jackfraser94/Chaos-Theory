# Chaos-Theory
Chaos theory function created for MATLAB (Octave GUI) 

## Overview

Chaos theory is the mathematical study of nonlinear systems, not all nonlinear systems are chaotic, but all chaotic systems are nonlinear. There are three classifications that make up the chaos theory, the first characteristic that it must be sensitive to initial conditions, this is a direct observation of the rounding that Edward Lorenz made on his Lorenz attractor, the small rounding error that manifested into a completely different system. The second characteristic is that it must be topologically mixing, this means that the system is continuously evolving over time, overlapping, and changing its dynamic. The third characteristic is that it must have dense periodic orbits, in many chaotic systems the chaos is a subset, meaning that it is attracted to a certain position, but not specifically finalising at that given position, the third characteristic is also known as the strange attractor, this was a prime example of the Lorenz attractor. Lorenz gave three equations that outline the workings;

<p align="center">
  dx/dt=σ(y-x)
</p> 
<p align="center">
  dy/dt=ρx-xz-y
</p>
<p align="center">
  dz/dt=xy-βz
</p> 

A common set of values that make up these equations, and make up the Lorenz attractor are (σ = 10), (ρ = 28), (β = 8/3) (Paul Bourke 1997).

Strange attractors can be formed in many ways, much like the Mandelbrot set, variation with complex numbers can manipulate different attractors (Glenn Elert 2018). The Lorenz attractor is a prime example of what a strange attractor is, the attractor forms two (butterfly) wing like structures, the central position of these wings are the strange attractors, with the particles not actually ending in that position, rather, just orbiting. Chaotic systems are unpredictable, and even though they form these organized like attractors, there is still no way to accurately predict how the system will end up, because of the first characteristic of a chaotic system. 

The logistic map is a primary example of what and how a chaotic system works, the system works through bifurcation, and shows how in a small interval a system can become unpredictable with small manipulations. The logistic map is usually shown through a biological stand point, given by the equation:

x_(n+1)=λx_n (1-x_n )

(Geoff Boeing 2015)

With lambda (λ) being the fertility of a species, identified through the interval [0 4], and xn being the initial population of the species, given through the interval [0 1]. The logistic map has many structures embedded throughout the chaotic component, this plot shows how chaos can be a subset of a system, having predictable components and chaotic components, and also showing the strange attractors involved within. 

Knowing what randomness is, it allows us to distinguish between that and chaotic behaviour, randomness has no distinct characteristics, it follows none of the rules that make up chaos, as shown in the logistic map and the Lorenz attractor, which has geometrical patterns, strange attractors, and is topologically mixing. A random system may follow just one of these characteristics, but it will not be distinguishable. 

## Program Description

The program initially displays some information about the chaotic and random systems that are involved within the program, it then proceeds to ask the user to which program they would like to interact with, the main control primarily uses if statements based on the user input, the large portions of the program are done by the sub functions. The user can choose between two chaotic systems, which are the Lorenz attractor which highlights strange attractors in the chaos theory, and the logistic map, which highlights bifurcation in the chaos theory, both have distinctive patterns that will be used to show how the chaos theory works. Another sub function is the random sub function which is used as a comparison model to prove that chaos and randomness are two different characteristics. Embedded in the main control function though is the comparison aspect of the program, this is the part of the program that plots side by side a chaotic system, and a random system, with similar characteristics so that the user can see the key characteristics of both systems.

## Sub-functions

- Lorenzattractor.m

The Lorenz attractor sub function is used in this program to show the Lorenz attractor, to be able to play with the initial variables and see how differently the outcome can be. If the user opts for the Lorenz attractor they can specify if the program plots the Lorenz attractor, or if the user wants to change certain aspects of the plot. This sub function also has a sub function of its own, as exercise 8.2 outlines for solving nonlinear equations.

- Logisticmap.m

The logistic map sub function serves the same purpose as the Lorenz attractor, the user can define initial values for the population and fertility, and see if the population survives, balances out at a certain point(s). Or as the Lorenz attractor sab function the user can opt to see a visual of what the logistic map looks like between the accepted intervals, and in turn seeing the chaotic pattern it forms.

- Random.m

The purpose of this function is to show the difference between random systems and chaotic systems, these three sub functions have the same properties of interactivity, but show different aspects of the way things are predicted and forecasted. 

- Comparison.m

The final sub function in this program is not an interactive component, it simply plots a chaotic system next to a random system, with similar parameters to show the key distinctions between the two.






