# 🌌 **Polar Lights Optimizer: Algorithm and Applications in Image Segmentation and Feature Selection** 🌌

![License](https://img.shields.io/github/license/aliasgharheidaricom/Polar-Lights-Optimizer-Algorithm-and-Applications-in-Image-Segmentation-and-Feature-Selection)
![Code Size](https://img.shields.io/github/languages/code-size/aliasgharheidaricom/Polar-Lights-Optimizer-Algorithm-and-Applications-in-Image-Segmentation-and-Feature-Selection)
![Repo Size](https://img.shields.io/github/repo-size/aliasgharheidaricom/Polar-Lights-Optimizer-Algorithm-and-Applications-in-Image-Segmentation-and-Feature-Selection)
![Language Count](https://img.shields.io/github/languages/count/aliasgharheidaricom/Polar-Lights-Optimizer-Algorithm-and-Applications-in-Image-Segmentation-and-Feature-Selection)
![Last Commit](https://img.shields.io/github/last-commit/aliasgharheidaricom/Polar-Lights-Optimizer-Algorithm-and-Applications-in-Image-Segmentation-and-Feature-Selection)
![Issues](https://img.shields.io/github/issues/aliasgharheidaricom/Polar-Lights-Optimizer-Algorithm-and-Applications-in-Image-Segmentation-and-Feature-Selection)
![Forks](https://img.shields.io/github/forks/aliasgharheidaricom/Polar-Lights-Optimizer-Algorithm-and-Applications-in-Image-Segmentation-and-Feature-Selection)
![Stars](https://img.shields.io/github/stars/aliasgharheidaricom/Polar-Lights-Optimizer-Algorithm-and-Applications-in-Image-Segmentation-and-Feature-Selection)
![Watchers](https://img.shields.io/github/watchers/aliasgharheidaricom/Polar-Lights-Optimizer-Algorithm-and-Applications-in-Image-Segmentation-and-Feature-Selection)
![Contributors](https://img.shields.io/github/contributors/aliasgharheidaricom/Polar-Lights-Optimizer-Algorithm-and-Applications-in-Image-Segmentation-and-Feature-Selection)

<p align="center">
  <img src="https://github.com/aliasgharheidaricom/Polar-Lights-Optimizer-Algorithm-and-Applications-in-Image-Segmentation-and-Feature-Selection/blob/main/polar%20lights%20optimizer%20(PLO)%20image.jpeg" alt="PLO Poster" width="60%" />
  <br>
  <em>Polar Lights Optimizer in action</em>
</p>

## 🔍 **Overview**

**Polar Lights Optimization (PLO)** is a metaheuristic algorithm inspired by the mesmerizing aurora phenomenon. By simulating high-energy particles influenced by Earth's magnetic field, PLO achieves a balance between local exploitation and global exploration. This method is highly effective in complex optimization tasks such as image segmentation and feature selection.

## ⚙️ **Installation Instructions**

1. **Prerequisites:**
   - MATLAB (R2017b or later recommended)

2. **Clone the repository:**
   ```bash
   git clone https://github.com/yourusername/PLO.git
   cd PLO
   ```

## 🚀 **Usage**

To run the PLO algorithm, use the MATLAB function:

```matlab
[Best_pos, Bestscore, Convergence_curve] = PLO(N, MaxFEs, lb, ub, dim, fobj)
```

### **Parameters:**
- `N`: Number of particles in the swarm
- `MaxFEs`: Maximum number of function evaluations
- `lb`: Lower bound of the solution space
- `ub`: Upper bound of the solution space
- `dim`: Dimension of the solution space
- `fobj`: Objective function handle

### **Example:**
```matlab
N = 30; % Number of particles
MaxFEs = 10000; % Maximum function evaluations
lb = -10; % Lower bound
ub = 10; % Upper bound
dim = 2; % Dimension of the problem
fobj = @(x) sum(x.^2); % Objective function (e.g., sphere function)

[Best_pos, Bestscore, Convergence_curve] = PLO(N, MaxFEs, lb, ub, dim, fobj);
```

## 🧩 **Method**

### **Description**
Inspired by the aurora phenomenon, PLO models the interaction of solar wind particles with Earth's magnetic field. The algorithm utilizes:

1. **Gyration Motion**: Simulates spiraling motion around magnetic field lines.
2. **Aurora Oval Walk**: Mimics the formation of auroral ovals for global exploration.

### **Key Components**

1. **Initialization:**
   - Create an initial population of particles within the bounds.
   - Evaluate fitness.

2. **Main Loop:**
   - Update velocities and positions using gyration and aurora oval strategies.
   - Apply particle collision for escaping local optima.
   - Update fitness and track the best solution.

3. **Gyration Motion:**
   - Models centripetal force around magnetic field lines.

4. **Aurora Oval Walk:**
   - Simulates elliptical movement with Levy flight.

5. **Particle Collision:**
   - Facilitates escape from local optima through random collisions.

## 📝 **Pseudocode**

```plaintext
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

## 📜 **License**

This project is licensed under the MIT License. 

## 📚 **References**

- **PLO Source Code and Documentation:** [Ali Asghar Heidari](http://www.aliasgharheidari.com/PLO.html)
- **Main Paper:** Chong Yuan, Dong Zhao, Ali Asghar Heidari, Lei Liu, Yi Chen, Huiling Chen. "Polar Lights Optimizer: Algorithm and Applications in Image Segmentation and Feature Selection," Neurocomputing - 2024.

## 📬 **Contact Information**

For support or inquiries, reach out to:
- Chong Yuan: [yc18338414794@163.com](mailto:yc18338414794@163.com)
- Ali Asghar Heidari: [aliasghar68@gmail.com](mailto:aliasghar68@gmail.com)
- Huiling Chen: [chenhuiling.jlu@gmail.com](mailto:chenhuiling.jlu@gmail.com)

## 📑 **Citation**

If you use this code, please cite:
- Chong Yuan, Dong Zhao, Ali Asghar Heidari, Lei Liu, Yi Chen, Huiling Chen. "Polar Lights Optimizer: Algorithm and Applications in Image Segmentation and Feature Selection," Neurocomputing - 2024.

## 🔍 **Comparison with Other Optimization Methods**

Delve into how the Polar Lights Optimizer (PLO) stacks up against other cutting-edge optimization techniques:

- 🌟 [**PLO 2024**](http://www.aliasgharheidari.com/PLO.html) 
- 🚀 [**FATA 2024**](http://www.aliasgharheidari.com/FATA.html)
- 🌐 [**ECO 2024**](http://www.aliasgharheidari.com/ECO.html)
- 🔍 [**AO 2024**](http://www.aliasgharheidari.com/AO.html)
- ✨ [**PO 2024**](http://www.aliasgharheidari.com/PO.html)
- 🔬 [**RIME 2023**](http://www.aliasgharheidari.com/RIME.html)
- 📊 [**INFO 2022**](http://www.aliasgharheidari.com/INFO.html)
- 🛠️ [**RUN 2021**](http://www.aliasgharheidari.com/RUN.html)
- 🔧 [**HGS 2021**](http://www.aliasgharheidari.com/HGS.html)
- 🧩 [**SMA 2020**](http://www.aliasgharheidari.com/SMA.html)
- 🌠 [**HHO 2019**](http://www.aliasgharheidari.com/HHO.html)

Explore these methods to see how PLO compares and stands out in the field of optimization!

