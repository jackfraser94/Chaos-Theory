# Chaos-Theory
Chaos theory function created for MATLAB (Octave GUI) 

**Originally created as a university project, I have since added/removed some content**


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

<p align="center">
x_(n+1)=λx_n (1-x_n )
</p>
<p align="right">
(Geoff Boeing 2015)
</p> 

With lambda (λ) being the fertility of a species, identified through the interval [0 4], and xn being the initial population of the species, given through the interval [0 1]. The logistic map has many structures embedded throughout the chaotic component, this plot shows how chaos can be a subset of a system, having predictable components and chaotic components, and also showing the strange attractors involved within. 

Knowing what randomness is, it allows us to distinguish between that and chaotic behaviour, randomness has no distinct characteristics, it follows none of the rules that make up chaos, as shown in the logistic map and the Lorenz attractor, which has geometrical patterns, strange attractors, and is topologically mixing. A random system may follow just one of these characteristics, but it will not be distinguishable. 

## Program Description

The program initially displays some information about the chaotic and random systems that are involved within the program, it then proceeds to ask the user to which program they would like to interact with, the main control primarily uses if statements based on the user input, the large portions of the program are done by the sub functions. The user can choose between two chaotic systems, which are the Lorenz attractor which highlights strange attractors in the chaos theory, and the logistic map, which highlights bifurcation in the chaos theory, both have distinctive patterns that will be used to show how the chaos theory works. Another sub function is the random sub function which is used as a comparison model to prove that chaos and randomness are two different characteristics. Embedded in the main control function though is the comparison aspect of the program, this is the part of the program that plots side by side a chaotic system, and a random system, with similar characteristics so that the user can see the key characteristics of both systems.

## Functions

- Lorenzattractor.m

The Lorenz attractor sub function is used in this program to show the Lorenz attractor, to be able to play with the initial variables and see how differently the outcome can be. If the user opts for the Lorenz attractor they can specify if the program plots the Lorenz attractor, or if the user wants to change certain aspects of the plot. This sub function also has a sub function of its own, as exercise 8.2 outlines for solving nonlinear equations.

<p align="center">
![lorentz](https://github.com/jackfraser94/Chaos-Theory/assets/24208519/cd4502c1-4412-44f9-bd63-9e49b1b9d89d)
</p>  

A visualisation of the lorentz attractor, you can obviously do more with a plot like this, have it move from the initial conditions and illustrate the butterfly effect. However, the illustration stands as a simple showcase of how to obtain the final product.

- Logisticmap.m

The logistic map (bifurcation) sub function serves the same purpose as the Lorenz attractor, the user can define initial values for the population and fertility, and see if the population survives, balances out at a certain point(s). Or as the Lorenz attractor sab function the user can opt to see a visual of what the logistic map looks like between the accepted intervals, and in turn seeing the chaotic pattern it forms.

<p align="center">
![logisticmap](https://github.com/jackfraser94/Chaos-Theory/assets/24208519/1a55a2b9-3e97-4e60-8226-fa3d67b85365)
</p>  

The plot from this function shows the bifurcation, of course the results can be varied by altering the initial conditons, the number of iterations etc...

### Later added functions after modifying the original project.  

- Mandelbrot Set
The Mandelbrot set is a complex fractal defined by iterating the equation 

<p align="center">
z = z^2 + c
</p>  

where c is a complex parameter, and visualizing the points that remain bounded within a certain threshold.

- Driven Van der Pol Oscillator

The driven Van der Pol oscillator is a non-linear system exhibiting complex oscillatory behavior, described by the equation

<p align="center">
$\ddot{x} - \mu (1 - x^2) \dot{x} + x = A \cos(\omega t)$
</p>  

where $\mu$ represents nonlinearity and A and $\omega$ are the amplitude and frequency of the external driving force.


## Files

- `maincontrol.m`: Main control script for the program. **Removed**
- `lorenzattractor.m`: Subfunction for simulating the Lorenz attractor.
- `logisticmap.m`: Subfunction for simulating the logistic map.
- `mandelbrot.m`: Subfunction for simulating a random system.
- `vanderpol.m`: Subfunction for comparing chaotic and random systems.

## Usage

1. Place all `.m` files in the same directory.
2. Run `maincontrol.m` in Octave to start the program.

## Testing Subfunctions

Each subfunction can be run independently for testing:

- `lorenzattractor`
- `logisticmap`
- `randomsystem`
- `compare`

## References

- Peter Dizikes (2011). When the Butterfly Effect Took Flight. Retrieved from https://www.technologyreview.com/s/422809/when-the-butterfly-effect-took-flight/
- Jonathan Borwein (2012) Explainer: What is Chaos Theory. Retrieved from http://theconversation.com/explainer-what-is-chaos-theory-10620
- Encyclopaedia Britannica (2018) Chaos Theory. Retrieved from https://www.britannica.com/science/chaos-theory
- Stephen Wolfram (2002) A New Kind of Science. Retrieved from https://www.wolframscience.com/reference/notes/971c
- William Graham (2014) Nature is Both Ordered and Chaotic. Retrieved from http://www.freshvista.com/2014/natures-tangled-web-is-both-ordered-and-chaotic/
- Kyle Hill (2013) Nietzsche’s Butterfly: An Introduction to Chaos Theory. Retrieved from https://www.nature.com/scitable/blog/student-voices/nietzsches_butterfly_an_introduction_to
- Adam Kucharski (2013) Forecasting the Chaos of Tornadoes. Retrieved from https://theconversation.com/forecasting-the-chaos-of-tornadoes-14573
- Luke Mastin (2010) 19th Century Mathematics – Poincare. Retrieved from http://www.storyofmathematics.com/19th_poincare.html
- Physics Central (2018) Chaos Rules. Retrieved from http://physicscentral.com/explore/action/chaos.cfm
- Meg Rosenberg (2018) Tag Archives: chaos theory. Retrieved from http://oceans.mit.edu/tag/chaos-theory
- Chaosmath (2018) The Butterfly Effect. Retrieved from http://www.chaos-math.org/en/chaos-vii-strange-attractors
- Glenn Elert (2018) Strange and Complex. Retrieved from https://hypertextbook.com/chaos/strange/
- Geoff Boeing (2015) Chaos Theory and the Logistic Map. Retrieved from http://geoffboeing.com/2015/03/chaos-theory-logistic-map/
- Paul Bourke (1997) The Lorenz Attractor in 3D. Retrieved from http://paulbourke.net/fractals/lorenz/
