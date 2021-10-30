# Union Types and Sealed Classes

## Union

Union is a value that may have any of several representations or formats within the same position in  memory. That consist of a variable that may hold such a data structure. A union type definition will specify which of a number of permitted primitive types may be stored in its instances.

- in union there is only one value at any given time
- do not explicitly keep track of which member of the union is currently in use

### Difference between union and structure

A union is a class all of whose data members are mapped to the same address within its object. The size of an object of a union is, therefore, the size of its largest data member. Great space efficiency but sometimes comes at a great cost of safety

## Tagged Union

- in Swift enums works as tagged unions
- also called: a variant, variant record, choice type, discriminated  union, disjoint union, sum type or coproduct

Tagged union is a data structure used to hold a value that could take on several different, but fixed, types. Only one of the types can be in use at any one time, and a tag explicitly which one is in use

### Advantages

- all accesses are safe, and compiler can even check that all cases are handled
- saves storage

## Sealed classes

Sealed classes and interfaces represent restricted class hierarchies that provide more control over inheritance. All direct subclasses of a sealed class are known at compile time. No other subclasses may appear after a module with sealed class is compiled.

The same works for sealed interfaces and their implementations: once a module with a sealed interface is compiled, no new implementations can appear

In some sense, sealed classes are similar to enum classes: the set of values for an enum type is also restricted, but each enum constant exist only as a single instance, whereas a subclass of a sealed class can have multiple instances, each with its own state

## Pattern Matching

A pattern represents the structure of a single value or a composite value. For example, the structure of a tuple (1, 2) is a comma-separated list of two elements. Because patterns represent the structure of a value rather than any one particular value, you can match them with a variety of values. For instance, the pattern (x, y) matches the tuple (1, 2) and any other two-element tuple. In addition to matching a pattern with a value, you can extract part or all of a composite value and bind each part to a constant or variable name
