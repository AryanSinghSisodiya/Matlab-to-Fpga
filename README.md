# Matlab-to-Fpga
# Quantum Circuit Simulation in MATLAB

Welcome to the **Quantum Circuit Simulation** repository! 🚀 This project implements quantum operations, gate applications, and simulations using MATLAB. It leverages custom matrix operations and fixed-point arithmetic to simulate quantum circuits with single and multi-qubit systems.

## 📂 Project Structure

| File Name                     | Description                                                                 |
|-------------------------------|-----------------------------------------------------------------------------|
| **Apply_Operator.m**         | Applies a single-qubit quantum gate to a given qubit state.                 |
| **Apply_Operator_two.m**     | Applies a two-qubit gate operation on specified qubits.                     |
| **getControlledOperator.m**  | Constructs controlled gate operators for multi-qubit systems.               |
| **getOperator.m**            | Retrieves predefined quantum gate matrices (e.g., Pauli-X, Hadamard).      |
| **initializeRegisters.m**    | Initializes quantum registers with specified states.                       |
| **matrix_complex_mults.m**   | Handles complex matrix multiplication for single-qubit gates.              |
| **matrix_complex_mults_two.m** | Handles complex matrix multiplication for two-qubit gates.              |
| **probFinal_oneQubit.m**     | Calculates the probability distribution of a single-qubit measurement.      |
| **probFinal_twoQubit.m**     | Calculates the probability distribution for two-qubit systems.             |
| **prodotto_di_kronecker.m**  | Performs the Kronecker product for multi-qubit state construction.         |
| **qc1qubit.m**               | Simulates a basic single-qubit quantum circuit.                            |
| **qc2qubit.m**               | Simulates a two-qubit quantum circuit with entanglement.                   |
| **quantumComputer_oneQubit.m** | Implements a quantum computer simulation for one-qubit systems.        |
| **quantumComputer_twoQubit.m** | Implements a quantum computer simulation for two-qubit systems.        |
| **quantumcircuit.m**         | Core function to build and simulate custom quantum circuits.               |
| **three_qubit_trial.m**      | Trial script to test quantum operations on a three-qubit register.         |
| **two_qubit_register.m**     | Sets up and initializes two-qubit registers for simulations.               |
| **README.md**                | Documentation for the repository.                                          |
| **clipboard.m**              | Utility script for copying and pasting text (auxiliary tool).              |

## 📊 Features
✨ Key capabilities of this project include:

- 🌀 **Single and Multi-Qubit Operations**: Apply standard quantum gates (e.g., Pauli-X, Hadamard) and controlled operations.
- 🧑‍🔬 **Quantum State Initialization**: Set up initial states for quantum registers with ease.
- 🔄 **Circuit Simulation**: Build and simulate custom quantum circuits involving both single and two-qubit gates.
- 📈 **Probability Measurement**: Calculate the probability distribution of measurement outcomes for quantum states.
- 🛠️ **Matrix Operations**: Efficiently handle complex matrix multiplications and Kronecker products.
- ⚙️ **Noise Modeling**: Simulate real-world quantum noise using configurable Pauli operators.

---

## 🛠️ Requirements

To run this project smoothly, you'll need:

- **MATLAB**: Version R2024(I used it)
- **Quantum Computing Basics**: Familiarity with quantum gates, circuits, and linear algebra.
- Optional: Basic knowledge of matrix operations and MATLAB scripting.

---
---

## 📄 References

This project was developed using concepts and techniques from the following paper:

> **"Project and Implementation of a Quantum Logic Gate Emulator on FPGA Using a Model-Based Design Approach"**  
>(DOI): [10.1109/ACCESS.2024.3377458](https://doi.org/10.1109/ACCESS.2024.3377458)

This paper provided the foundational methodology and model-based design approach for the quantum gate emulator implemented in this repository.

## 🤝 Contributing

We welcome contributions from the community! 🌍✨
We encourage improvements, suggestions, and bug reports. Let’s build something great together! 💡🔧

---

Thank you for checking out this project! If you found it helpful, give it a ⭐ and share your feedback! 😊

