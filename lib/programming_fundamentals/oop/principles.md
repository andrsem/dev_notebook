# Design Principles

Software design is the most important phase of the software development life cycle. Thinking about how to structure code before you start writing it as critical

Changes and updates always happen when creating software. The cost of this changes are determined based on the structure and architecture of the system.

- the more time you put into designing a resilient and flexible architecture, the more time will save in the future when changes arise
- good design, plans and makes it easier to add new features and handle changing requirements

Regression - something was working and after some time someone changed something and this stops working

## SOLID Principles

### Single Responsibility Principle SRP

- cohesion
- single focus

Every class should have responsibility for a single part of the functionality provided by the software

- the responsibility should be entirely encapsulated by the class
- all its methods should be narrowly aligned with that responsibility
- a class should have only one job

SRP is about limiting the impact of change by designing [loosely coupled](../../oop/fundamental_oop_concepts.md#coupling) classes that are [highly cohesive](../../oop/fundamental_oop_concepts.md#cohesion)

### Open Closed Principle

Classes and methods should be open for extension and closed for modification. The general idea of OCP is to write the code in such a manner, that you will be able to add new functionality without changing the existing code

- prevents situations in which a change to one of your classes also requires you to adopt all depending changes
- reduces [tight coupling](../../oop/fundamental_oop_concepts.md#coupling)
- use interfaces they are closed for modification
- interfaces introduce an additional level of abstraction which enables [loose coupling](../../oop/fundamental_oop_concepts.md#coupling)

Open closed principle summarizes goals of ISP and LSP

- ISP segregates the interface. Keeps the class closed for further modifications
- LSP assures that subclasses are extensions of a superclass. Creates classes that  are open for extension

### Liskov Substitution Principle LSP

Objects of a superclass can be replaceable with objects of its subclasses without breaking the application. Subtype objects can replace supertype objects without affecting functionality inherited from a supertype

- requires the objects of your subclasses to behave in the same way as the objects of your superclass
- every subclass should be able to replace its superclass
- methods which use a superclass type must be able to work with the subclass without any issues

An overridden method of a subclass needs to accept the same input parameter values as the method of the superclass

- do not implement any stricter validation rules on input parameters that are implemented by the parent class
- the return value of a method of the superclass needs to comply with the same rules as the superclass methods return value
- to follow LSP the subclass must enhance functionality, but not reduce the functionality

### Interface Segregation Principle ISP

Clients should not be forced to depend upon interfaces that they do not use

- a client should not implement an interface if it doesn't use a method in that interface
- happens mostly when an interface contains more than one functionality, and the client needs only one functionality and not the other

The goal of the ISP is to reduce the side effects and frequency of required changes by splitting the software into multiple, independent parts. Design an interface based on clients needs

### Dependency Inversion Principle

The goal is to reduce dependencies on concrete class. Depend on abstractions

- entities must depend on abstractions and not on concretions
- abstractions should not depend upon details
- details should depend upon abstractions
- high-level classes must not depend on low-level classes
- both high-level and low-level classes should depend upon abstraction

## KISS Keep It Simple, Stupid

Most systems work best when they are kept simple rather than making them complex. So when you are writing code your solution should not be complicated that makes a lot of time and effort to understand. If your code is simple to other developers. So always try to simplify your code using different approaches like breaking complex problem into smaller chunks or takin out some unnecessary code you have written

## DRY Don't Repeat Yourself

The goal is to reduce the repetition of code. It states that a piece of code should be implemented in just one place in the source code. You can create a common function or abstract your code to avoid repetition

## YAGNI You Aren’t Gonna Need It

Don't implement something until its necessary. Because in most of the cases you are not going to use that piece of code in future. Avoid this and save a lot of time and effort

## SoC Separation of Concerns

Partition a complicated application into different sections or domains. Each section or domain addresses separate concern or has a specific job. Each section is independent of each other - it becomes easier to maintain, update and reuse code

## Avoid Premature Optimisation

You don't need to optimize an algorithm at early stage of development. Requirements may change and possibly this optimised algorithm is no longer needed

## Law of Demeter

Also known as principle of leas knowledge. This principle divides the responsibility between classes or different units

- each unit should have only limited knowledge about others units: only units "closely" related to the current unit
- each unit should only talk to its friends. Don't talk to strangers
- only talk to your immediate friends

## Composition Over Inheritance

Objects with complex behaviours should contain instances of objects with individual behaviors. They should not inherit a class and add new behaviours

Issues with [inheritance](fundamental_oop_concepts.md#inheritance):

- inheritance hierarchy can get messy in a hurry
- less flexible for defining special-case behaviours

Composition programming is cleaner to write, easier to maintain and allows for flexibility defining behaviour

## Programming to an Interface

//TODO!

## Dependency Injection

DI is providing the object that an object needs instead of having it construct them itself

- it allows the creation of dependent objects outside of a class and provides those objects to a class through different ways:

1. constructor injection
2. setter injection
3. interface injection

A client who wants to call some services should not have to know how to construct those services. Instead, the client delegates to an external code (the injector)

The client is not aware of the injector

The injector passes the services to the client. Services might exist or be constructed by the injector itself

This means the client doesn't need to know about the injector, how to construct the services or even which services it is actually using

The client only needs to know the interfaces of the services

- if class creates an instance of another class it cannot be used and tested  independently from this class. This is called __hard dependency__

## Service Locators

It's a way to decouple the interface (abstract base class) from a concrete implementation, and at the same time allows to access the concrete implementation from everywhere in your app over the interface

## Code Smells

//TODO watch java design patterns
//TODO watch linkedin code smells course
