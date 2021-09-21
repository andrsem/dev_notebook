# Open Closed Principle

Classes and methods should be open for extension and closed for modification. General idea of OCP is to write the code in such manner, that you will be able to add new functionality without changing the existing code

- prevents situations in which a change to one of your classes also requires you to adopt all depending changes
- reduces [tight coupling](../../oop/fundamental_oop_concepts.md#coupling)
- use interfaces they are closed for modification
- interfaces introduce an additional level of abstraction which enables [loose coupling](../../oop/fundamental_oop_concepts.md#coupling)
