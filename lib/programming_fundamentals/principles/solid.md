# SOLID Principles

## Single Responsibility Principle SRP

- cohesion
- single focus

Every class should have responsibility over a single part of the functionality provided by the software

- the responsibility should be entirely encapsulated by the class
- all its methods should be narrowly aligned with that responsibility
- a class should have only one job

SRP is about limiting the impact of change by designing [loosely coupled](../../oop/fundamental_oop_concepts.md#coupling) classes that are [highly cohesive](../../oop/fundamental_oop_concepts.md#cohesion)

## Open Closed Principle

Classes and methods should be open for extension and closed for modification. General idea of OCP is to write the code in such manner, that you will be able to add new functionality without changing the existing code

- prevents situations in which a change to one of your classes also requires you to adopt all depending changes
- reduces [tight coupling](../../oop/fundamental_oop_concepts.md#coupling)
- use interfaces they are closed for modification
- interfaces introduce an additional level of abstraction which enables [loose coupling](../../oop/fundamental_oop_concepts.md#coupling)

Open closed principle summarizes goals of ISP and LSP

- ISP segregates the interface. Keeps the class closed for further modifications
- LSP assures that subclasses are extensions of a superclass. Creates classes that  are open for extension

## Liskov Substitution Principle LSP

Objects of a superclass can be replaceable with objects of its subclasses without breaking the application. Subtype objects can replace supertype objects without affecting functionality inherited from supertype

- requires the objects of your subclasses to behave in the same way as the objects of your superclass
- every subclass should be able to replace its superclass
- methods which use a superclass type must be able to work with the subclass without any issues

An overridden method of a subclass needs to accept the same input parameter values as the method of the superclass

- do not implement any stricter validation rules on input parameters that are implemented by the parent class
- the return value of a method of the superclass needs to comply with the same rules as the superclass methods return value
- in order to follow LSP the subclass must enhance functionality, but not reduce functionality

## Interface Segregation Principle ISP

Clients should not be forced to depend upon interfaces that they do not use

- a client should not implement an interface if it doesn't use a method in that interface
- happens mostly when an interface contains more than one functionality, and the client needs only one functionality and not the other

The goal of the ISP is to reduce the side effects and frequency of required changes by splitting the software into multiple, independent parts. Design an interface based on clients needs

## Dependency Inversion Principle

The goal is to reduce dependencies on concrete class. Depend on abstraction

- entities must depend on abstractions and not on concretions
- abstractions should not depend upon details
- details should depend upon abstractions
- high-level classes must not depend on low-level classes
- both high-level and low-level classes should depend upon abstraction
