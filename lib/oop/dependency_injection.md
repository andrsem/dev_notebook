# Dependency Injection

DI is providing the object that an object needs instead of having it construct them itself

- it allows the creation of dependent objects outside of a class and provides those objects to a class through different ways:

1. constructor injection
2. setter injection

A client who wants to call some services should not have to know how to construct those services. Instead, the client delegates to an external code (the injector)

The client is not aware of the injector

The injector passes the services to the client. Services might exist or be constructed by the injector itself

This means the client doesn't need to know about the injector, how to construct the services or even which services it is actually using

The client only needs to know the interfaces of the services

- if class creates an instance of another class it cannot be used and tested  independently from this class. This is called __hard dependency__
