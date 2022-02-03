# Compilation, Interpretation, and Hybrid

## Compilation

The compilation is basically a conversion of human-understandable source code into machine code that computers can understand and execute. After compilation, we have 2 files source file and binary file for certain CPU architecture. Binary is sent to the user.

Compilation takes place prior to running. Compilation produces native executable

### Compilation Pros

- compiled code is fast
- source code privacy

### Compilation Cons

- not cross-platform. Need to create separate binaries for Mac, Win, Linux. And within the platforms need to create CPU specific binaries
- requires compiling step

### Compilation stages

1. Preprocessing - cutting + pasting. E.g. pastes libraries contents into a file which imports them
2. Compiling - generates optimized assembly code:
    1. Read the source
    2. Check for correctness
    3. Convert source code into IR language (Intermediate representation language)
    4. Optimize IR
    5. Convert IR into assembly
3. Assembly - assembler converts assembly code into machine/binary code
4. Linking - merges all the binary code into an executable file. Links functions declaration with function definition

*Assembly languages: x86, ARM, MIPS, RISC-V

## Interpretation

Compilation newer takes place. The interpreter interprets source code and produces desired results. No conversion to machine code occurs

Interpreters translate source code line by line into machine code. Read line 1, translate line 1, execute line 1...

Source code is sent to the user which executes it with an interpreter program on the fly

### Interpretation Pros

- Cross-platform. The programmer needs to distribute only 1 file instead of 20
- No extra compilation step. Easier to debug

### Interpretation Cons

- Public source code
- Slower

## Intermediate/Hybrid Compile+Interpret

### Pure JIT

JIT compilation (Just In Time) is a Hybrid between normal compilation (AOT ahead of time) and interpretation. Compilation takes place as the program is running. Source code is converted on the fly to machine code.

### Intermediate representation

1. Compile to intermediate language IL or bytecode
2. Send to client
3. Client perform JIT compilation or run bytecode directly

## Dart specific

Dart's compiler technology lets you run code in different ways:

- __Native platform__: for apps targeting mobile and desktop devices. Dart includes Dart VM with JIT compilation and AOT compiler for producing machine code
- __Web platform__: for apps targeting web. Dart includes both development time compiler (dartdevc) and production time compiler (dart2js). Both compilers translate Dart into JavaScript

As a summary for both Native and Web platforms, we have a development and production toolchain.

- The development toolchain offers fast incremental development and stateful hot reload.
- The production toolchain offers the fastest native output and smallest runtime

### Dart runtime

Runtime describes software/instructions that are executed while your program is running, especially those instructions that you did not write explicitly but are necessary for the proper execution of your code. Low-level languages like C have very small if any runtime.

Regardless of which platform you use or how you compile your code, executing the code requires a Dart runtime. Dart’s runtime is ever-present, both in debug and release modes. This runtime is responsible for the following critical tasks:

- Memory management. Dart's runtime includes a garbage collector for allocating and deallocating memory
- Enforcing Dart type system. Most type checks in Dart are static (compile-time), but some are dynamic (runtime) like by using the cast operator
- Managing isolates. The Dart runtime controls the main isolate (where code normally runs) and any other isolates that the app creates

On native platforms, the Dart runtime is automatically included inside self-contained executables and is part of the Dart VM provided by the _dart run_ command

### Dart VM

[Introduction to Dart VM](https://mrale.ph/dartvm/)
[Dart docs](https://dart.dev/tools/dart-compile)

Dart VM is a collection of components for executing Dart code natively.

- Runtime system. With garbage collection
- Core libraries native methods. (Probably written in C++)
- Development experience components. Debugging, profiling, hot-reload
- JIT and AOT compilation pipelines
- Interpreter
- ARM simulators

Dart VM is a virtual machine in the sense that it provides an execution environment for a high-level programming language, however, it does not imply that Dart is always interpreted or JIT-compiled when executing on Dart VM. For example, Dart code can be compiled into machine code using Dart VM AOT pipeline and then executed within a stripped version of the Dart VM, called __precompiled runtime__, which does not contain any compiler components and is incapable of loading Dart source code dynamically.

#### Dart VM can execute apps in 2 ways

- From source by using JIT/AOT compiler
- From snapshot (jit, aot, kernel snapshots)

##### Execution from source

###### With JIT compiler

1. Source
2. Common Front End (CFE)
3. Kernel binary (.dill file) - intermediary language (IL)
4. Dart VM. Optimization on the go during runtime

###### With AOT compiler

1. Source
2. Common Front End (CFE)
3. Kernel binary (.dill file) - intermediary language (IL)
4. Type flow analysis
5. Optimized kernel binary (.dill file) - intermediary language (IL)
6. Dart VM. Optimization is done before runtime

##### Execution from snapshot

- Kernel snapshot is a portable, intermediate representation of the source code. Requires dart VM to compile it
- AOT snapshot is an architecture-specific file containing the source code compiled to machine code, but no Dart runtime
- JIT snapshot is an architecture-specific file with an intermediate representation of all source code, plus an optimized representation of the source code that is executed during a training run of the program. JIT-compiled code can have faster peak performance than AOT code if the training data is good.
