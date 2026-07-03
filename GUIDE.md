# Haskell Pathfinder Guide

Welcome to the Haskell Pathfinder! This guide is the central document for your learning journey. It will walk you through an ordered series of steps, evolving a simple command-line application into a robust, production-ready web service.

Each step introduces a new concept by demonstrating its necessity within the evolving application. You are encouraged to follow along by checking out the Git tag for each step.

---

## Step 0: Project Scaffolding & The Core Loop

*   **Git Tag:** `v0.1-core-loop` (once you complete this step)
*   **Objective:** Demystify the ecosystem and get something running.

### The Theory

Before writing complex code, we must be able to build and run simple code. This involves:

1.  **Choosing a Build Tool:** Haskell has two major build tools, `cabal-install` and `stack`. We are using Stack for this project because it provides excellent project scaffolding and reproducible builds by managing GHC (the compiler) and package versions for us.
2.  **Understanding the Project Structure:** `stack new` generates a standard project layout. The key directories are `app/` (for executables), `src/` (for library code), and `test/` (for tests). The `package.yaml` file (which generates a `.cabal` file) and `stack.yaml` file define the project's metadata, dependencies, and build plan.
3.  **The Build Cycle:** The core loop of development is `stack build` (compile), `stack exec <exe-name>` (run), and `stack test` (run tests).

### The Practice

Our goal is to create a runnable application that reads a line from the console and prints a response.

1.  **Explore the Scaffold:** Look at the files that were generated in the initial commit (`stack.yaml`, `package.yaml`, `.gitignore`).
2.  **Write the Core Loop:** Modify `app/Main.hs` to implement a simple interactive loop.
3.  **Build and Run:** Use `stack build` and `stack exec haskell-pathfinder-exe` to see your code in action.
