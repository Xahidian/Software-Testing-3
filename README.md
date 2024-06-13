# Software-Testing-3
Design tests using specification-based testing methods and execute the tests using the Robot Framework
# Overview
This repository contains the implementation and execution of various test cases for a discount function using Python and Robot Framework. The primary focus is on formulating preconditions as predicates, creating test inputs and expected outputs, and modeling the input space using an interface-based approach.

# Task 1: Predicate Formulation and Test Requirements
Preconditions as Predicate: Defined the preconditions for the discount function using predicates to ensure the bonus points are within the valid range of 1 to 10,000.
Test Requirements: Established test requirements for Predicate Coverage (PC), Clause Coverage (CC), and Correlated Active Clause Coverage (CACC) to ensure comprehensive testing.
# Task 2: Input Space Modeling and Test Creation
Interface-Based Input Modeling: Modeled the input space considering bonus_points and gold_customer parameters, with a focus on valid ranges and boundary values.
Test Case Development: Utilized Boundary Value Analysis to create test cases that cover the extremes of the input space and ensure robustness.
# Task 3: State and Transition Coverage
Coverage Goals: Aimed to achieve State Coverage and Transition Coverage by covering every state and transition within the system.
Test Path Implementation: Developed tests to traverse various paths and validate the system’s behavior in different scenarios.
# Tools and Frameworks
- Python: Leveraged Python for scripting and automating the test cases.
- Robot Framework: Employed Robot Framework for executing the test cases and validating the functionality of the discount system.
## Execution Results
- Visual Studio Code: Implemented all tests in Visual Studio Code and documented the execution results.
- Test Outcomes: Out of the total tests conducted, 3 test cases failed in Task 2, and only 1 test case failed in Task 3, indicating areas for further investigation and improvement.
- Feel free to customize this overview to better fit the specifics of your project and add any additional sections as needed for your GitHub README file. Remember to include any relevant code snippets or command instructions for users who may want to run the tests themselves.
