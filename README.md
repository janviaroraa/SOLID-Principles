# SOLID-Principles

## Single Responsibility Principle
Each n every class you create/change should have only one responsibility

It states that every module should have only one responsibility and reason to change. SRP starts with small concrete and specific cases such as a class and/or an object having only one purpose and being used only for one thing. This principle helps you to keep your classes as clean as possible.


## Open-Closed Principle
Classes and Modules should be open for extension but closed for modification

Open for extension: You should be able to extend or change the behaviors of a class without efforts.
Closed for modification: You must extend a class without changing the implementation.

## Liskov Substitution Principle
Child classes should never break the parent class type definitions.

Functions that use pointers or references to base classes must be able to use objects of derived classes without knowing it.

## Interface Segregation Principle
Make fine grained interface that are client specific

It states that clients should not be forced to implement interfaces they don’t use. Instead of one fat interface, many small interfaces are preferred based on groups of methods, each one serving one submodule.

## Dependency Inversion Principle
High level modules should not depend on low level modules both should depend on Abstractions

High-level modules should not depend on low-level modules both should depend on Abstractions. (Abstractions should not depend upon details. Details should depend upon abstractions)
