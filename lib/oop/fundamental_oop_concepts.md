# Fundamental OOP concepts

## Encapsulation

 Encapsulation is hiding or wrapping methods and attributes together into a single unit. It is the way to ensure security. It hides the data from the access of outside. Unless we want this behavior using getters and setters

 Encapsulation:

- keeps the programmer in control of access to data. Hide internal representation by using private fields
- setters are great because you can do validation

## Abstraction

 Quite similarly to encapsulation, abstraction refers to only showing essential details and keeping everything else hidden

 Applying abstraction means that each object should only expose a high-level mechanism for using it

 This is very important when working on a program incrementally focusing on one class, finish it then go to the next one

 It's best to think about your program in terms of interface and implementation

 The interface refers to the way sections of code can communicate with one another. This typically is done through methods. The implementation of methods should be hidden inside a class

 Creating an interface through which classes can interact ensures that each piece can be individually developed

## Inheritance

 Inheritance is the principle when one object acquires all the properties and behaviours of a parent object
 The subclass inherits properties and methods from its parent superclass. It provides code reusability.

## Polymorphism

 One task performs in different ways. It achieves by method overriding or method overloading depending on the language

 Method overriding - only unique methods names are allowed
 Method overloading - multiple methods with the same name but different arguments

 Dynamic polymorphism occurs during runtime
 The methods share the same name but have a different implementation. E.g. implementation in subclasses overrides that of the superclass

 Static polymorphism occurs during compile-time
 It's when multiple methods with the same name but different arguments are defined in the same class. This is method overloading. In Dart, every method must have a unique name. There is no method overloading in dart

## Object

Any entity that has state and behavior. An Actual thing built from a class

- An object can be defined as an instance of a class
- An object contains an address and takes up some space in memory

Objects can communicate without knowing the details of each other's data or code
