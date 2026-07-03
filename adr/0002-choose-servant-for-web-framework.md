# 2. Choose Servant for Web Framework

*   **Status:** Accepted
*   **Date:** 2024-10-27

## Context

When exposing the application as a service, a web framework is required to handle HTTP requests, routing, and response generation. The Haskell ecosystem offers several choices, including:

*   **Scotty:** A lightweight, simple framework inspired by Ruby's Sinatra. It is easy to get started with.
*   **Spock:** Another lightweight framework with a focus on type safety for routing.
*   **Servant:** A powerful, type-level framework that allows you to specify an entire API as a Haskell type.

## Decision

We will use **Servant** for the web service portion of this project (Step 3).

The primary goal of this project is to learn advanced Haskell. Servant is an exemplary library in this regard. It heavily uses type-level programming (Type Families, GADTs) to provide strong, compile-time guarantees about the API.

## Consequences

*   **Pros:**
    *   **Maximum Type Safety:** The API is a type. If the code compiles, the handlers are guaranteed to match the API specification. This prevents common errors like typos in routes, missing query parameters, or mismatched JSON response bodies.
    *   **Free Client Generation:** The API type can be used to automatically generate client functions for TypeScript, Python, and other languages.
    *   **Excellent Learning Vehicle:** It serves as a practical motivation for learning the advanced GHC extensions covered in Step 4 of the learning path.
*   **Cons:**
    *   **Steeper Learning Curve:** The type-level machinery can be intimidating for newcomers compared to the simple function-oriented approach of Scotty.
    *   **More Verbose:** Defining the API type can be more verbose initially than just writing handler functions.
