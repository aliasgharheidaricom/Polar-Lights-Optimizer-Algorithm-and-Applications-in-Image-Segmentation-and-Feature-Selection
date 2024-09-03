# Polar lights optimizer: Algorithm and applications in image segmentation and feature selection
![PLO Poster]([polar lights optimizer (PLO) image.jpeg](https://github.com/aliasgharheidaricom/Polar-Lights-Optimizer-Algorithm-and-Applications-in-Image-Segmentation-and-Feature-Selection/blob/main/polar%20lights%20optimizer%20(PLO)%20image.jpeg))  <!-- Replace with your actual image path -->

## Overview
Polar Lights Optimization (PLO) is a metaheuristic algorithm inspired by the aurora phenomenon. The algorithm models the motion of high-energy particles influenced by Earth's magnetic field to balance local exploitation and global exploration. PLO incorporates gyration motion, aurora oval walk, and particle collision strategies, proving effective in solving complex optimization problems, including image segmentation and feature selection.

## Installation Instructions
1. **Prerequisites:**
   - MATLAB (R2017b or later recommended)

2. **Clone the repository:**
   ```bash
   git clone https://github.com/yourusername/PLO.git
   cd PLO
   ```

## Usage
To run the PLO algorithm, use the following MATLAB function:

```matlab
[Best_pos, Bestscore, Convergence_curve] = PLO(N, MaxFEs, lb, ub, dim, fobj)
```

### Parameters:
- `N`: Number of particles in the swarm.
- `MaxFEs`: Maximum number of function evaluations.
- `lb`: Lower bound of the solution space.
- `ub`: Upper bound of the solution space.
- `dim`: Dimension of the solution space.
- `fobj`: Objective function handle.

### Example:
```matlab
N = 30; % Number of particles
MaxFEs = 10000; % Maximum function evaluations
lb = -10; % Lower bound
ub = 10; % Upper bound
dim = 2; % Dimension of the problem
fobj = @(x) sum(x.^2); % Objective function (e.g., sphere function)

[Best_pos, Bestscore, Convergence_curve] = PLO(N, MaxFEs, lb, ub, dim, fobj);
```

## Method
### Description
PLO is inspired by the aurora phenomenon, which involves the interaction of solar wind particles with Earth's magnetic field, creating a luminous display. The algorithm simulates this process using two main strategies:
1. **Gyration Motion:** Models the spiraling motion of particles around magnetic field lines, focusing on local exploitation of the solution space.
2. **Aurora Oval Walk:** Mimics the formation of auroral ovals, facilitating global exploration of the solution space.

### Key Components
1. **Initialization:** 
   - Generate an initial population of particles within the bounds of the solution space.
   - Evaluate the fitness of each particle.

2. **Main Loop:**
   - Update the velocity and position of each particle using gyration motion and aurora oval walk strategies.
   - Apply a particle collision strategy to escape local optima.
   - Update fitness and keep track of the best solution.

3. **Gyration Motion:**
   - Simulates the centripetal force experienced by particles as they move along magnetic field lines.
   - Accounts for atmospheric damping effects on particle motion.

4. **Aurora Oval Walk:**
   - Uses Levy flight to simulate the elliptical movement of particles around the auroral oval.
   - Adjusts exploration based on geomagnetic activity and atmospheric conditions.

5. **Particle Collision:**
   - Allows particles to randomly collide and change their trajectories, aiding in escaping local optima.

## Pseudocode
Here’s a high-level pseudocode of the PLO algorithm:

```
Initialize population X with random positions within bounds [lb, ub]
Evaluate fitness of each particle in X
Sort particles based on fitness
Set Bestpos and Bestscore to the best particle and its fitness

While number of function evaluations (FEs) < MaxFEs
    Calculate global mean position X_mean
    Calculate weights w1 and w2 for gyration and aurora oval strategies

    For each particle i in the population
        Update velocity V[i] using gyration and aurora oval strategies
        Update position X_new[i] based on V[i]
        
        If particle collides (based on probability)
            Apply collision strategy to X_new[i]
        
        Ensure X_new[i] is within bounds [lb, ub]
        Evaluate fitness of X_new[i]
        If fitness of X_new[i] < fitness of X[i]
            Update position X[i] to X_new[i]
            Update fitness of X[i]

    Sort particles based on fitness
    Update Bestpos and Bestscore if a better solution is found
    Increment FEs

Return Bestpos and Bestscore
```


## Contributing
Contributions are welcome! Please see our [Contributing Guidelines](CONTRIBUTING.md) for more details on how to contribute to the project.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## References
- **PLO Source Code and Documentation:** [Aliasghar Heidari](http://www.aliasgharheidari.com/PLO.html)
- **Main Paper:** Chong Yuan, Dong Zhao, Ali Asghar Heidari, Lei Liu, Yi Chen, Huiling Chen. "Polar Lights Optimizer: Algorithm and Applications in Image Segmentation and Feature Selection," Neurocomputing - 2024.

## Contact Information
For inquiries or support, contact:
- Chong Yuan: [yc18338414794@163.com](mailto:yc18338414794@163.com)
- Dong Zhao: [zd-hy@163.com](mailto:zd-hy@163.com)
- Ali Asghar Heidari: [aliasghar68@gmail.com](mailto:aliasghar68@gmail.com)
- Huiling Chen: [chenhuiling.jlu@gmail.com](mailto:chenhuiling.jlu@gmail.com)

## Citation
If you use this code in your research, please cite the following paper:
- Chong Yuan, Dong Zhao, Ali Asghar Heidari, Lei Liu, Yi Chen, Huiling Chen. "Polar Lights Optimizer: Algorithm and Applications in Image Segmentation and Feature Selection," Neurocomputing - 2024.

## Comparison with Other Optimization Methods
You can compare PLO with other recent optimization methods:
- [PLO 2024](http://www.aliasgharheidari.com/PLO.html)
- [FATA 2024](http://www.aliasgharheidari.com/FATA.html)
- [ECO 2024](http://www.aliasgharheidari.com/ECO.html)
- [AO 2024](http://www.aliasgharheidari.com/AO.html)
- [PO 2024](http://www.aliasgharheidari.com/PO.html)
- [RIME 2023](http://www.aliasgharheidari.com/RIME.html)
- [INFO 2022](http://www.aliasgharheidari.com/INFO.html)
- [RUN 2021](http://www.aliasgharheidari.com/RUN.html)
- [HGS 2021](http://www.aliasgharheidari.com/HGS.html)
- [SMA 2020](http://www.aliasgharheidari.com/SMA.html)
- [HHO 2019](http://www.aliasgharheidari.com/HHO.html)
