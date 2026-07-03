# 1. Use Stack for Build Management

*   **Status:** Accepted
*   **Date:** 2024-10-27

## Context

A Haskell project requires a build tool to manage dependencies, compile the code, and run tests. The two primary choices in the ecosystem are `cabal-install` and `Stack`.

*   `cabal-install` is the older, more established tool that interacts directly with the Hackage package repository.
*   `Stack` is a newer tool built on top of Cabal that provides a more curated and reproducible build experience by using "snapshots" (sets of packages known to compile together).

## Decision

We will use **Stack** for this project.

The `stack new` command will be used to generate the initial project skeleton, and all subsequent building, testing, and dependency management will be handled through the `stack` CLI.

## Consequences

*   **Pros:**
    *   **Reproducibility:** The `stack.yaml` file pins the exact compiler version and package set (via LTS Haskell snapshots), ensuring that the project will build deterministically now and in the future.
    *   **Ease of Setup:** Stack automatically downloads and manages the correct GHC version, simplifying the initial setup for new developers.
    *   **Curated Package Sets:** LTS snapshots provide a stable base of packages that are known to work well together, reducing dependency conflicts ("Cabal hell").
*   **Cons:**
    *   **Less Flexibility:** Using packages outside of a snapshot requires adding them to `extra-deps`, which can sometimes be more complex than Cabal's default exploratory approach.
    *   **Filesystem Overhead:** The `.stack-work` directory can be large as it contains its own copy of GHC and package caches.
