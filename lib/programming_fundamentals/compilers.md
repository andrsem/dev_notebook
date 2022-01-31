# Compilers and Interpreters

## Compilers

Compilation is basically a conversion of human understandable source code into machine code which computer can understand and execute. After compilation we have 2 files source file and binary file for certain CPU architecture. Binary is send to the user

### Compilation Pros

- compiled code is fast
- source code privacy

### Compilation Cons

- not cross platform. Need to create separate binaries for Mac, Win, Linux. And within the platforms need to create CPU specific binaries
- requires compiling step

### Compilation stages

1. Preprocessing - cutting + pasting. E.g. pastes libraries contents into a file witch imports them
2. Compiling - generates optimized assembly code:
    2.1. Read source
    2.2. Check for correctness
    2.3. Convert source code into IR language (Intermediate representation language)
    2.4 Optimize IR
    2.5. Convert IR into assembly
3. Assembly - assembler converts assembly code into machine/binary code
4. Linking - merges all the binary code into executable file. Links functions declaration with function definition

## Interpreters

### Interpretation Pros

- cross platform. Programmer need to distribute only 1 file instead of 20
- no extra compilation step. Easier to debug

### Interpretation Cons

- Public source code
- Slower

Interpreters translates source code line by line into machine code. Read line 1, translate line 1, execute line 1...

Source code is send to the user which executes it with interpreter program on the fly
