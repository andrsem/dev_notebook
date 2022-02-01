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

JIT compilation (Just In Time) is a Hybrid between normal compilation (AOT ahead of time) and interpretation. Compilation takes place as the program is running source code is converted on the fly to machine code.

### Intermediate representation

1. Compile to intermediate language IL or bytecode
2. Send to client
3. Client perform JIT compilation or run bytecode directly
