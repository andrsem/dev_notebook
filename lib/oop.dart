// -----------Introduction to OOP-------------



// ___________________
//    Encapsulation
// ___________________

// Hide data inside a class so anything outside cannot interact with it unless we want this behavior using getters and setters

// Using getters and setters is good practice because they can validate data using some conditions before using it or making a change

// It's generally best to not allow external classes to directly edit an object's attributes

// Encapsulation:
// - keeps the programmer in control of access to data
// - prevents the program from ending up in any strange or unwanted states



// ___________________
//    Abstraction
// ___________________

// Abstraction refers to only showing essential details and keeping everything else hidden

// Quite similar to encapsulation

// This is very important when working on program incrementally focusing on one class, finish it then go to the next one 

// Its best to think about your program in terms of interface and implementation

// The interface refers to the way sections of code can communicate with one another. This typically is done through methods. The implementation of methods should be hidden inside class

// Creating an interface through witch classes can interact ensures that each piece can be individually developed



// ___________________
//    Inheritance
// ___________________

// Inheritance is the principle that allows classes to derive from other classes 
// Subclass inherits properties and methods from its parent superclass

// Access modifiers in dart public and private "_". There is also protected in other languages
// public you can access from everywhere
// private you can access only within a class
// protected you can access within a class and all its subclasses



// ___________________
//    Polymorphism
// ___________________

// Polymorphism describes methods that are able to take on many forms  

// Dynamic polymorphism occurs during runtime
// The methods share the same name but have different implementation. E.g. implementation in subclasses overrides that of the superclass

// Static polymorphism occurs during compile-time
// Its when multiple methods with the same name but different arguments are defined in same class. This is method overloading ---In Dart every method must have unique name. There is no method overloading in dart---