# Makefile for C++ + Assembly project
# Compile with: make
# Run with: ./run

# Compiler and assembler
CXX = g++
ASM = nasm

# Flags
CXXFLAGS = -O2 -std=c++17
ASMFLAGS = -f elf64

# Output name
OUT = run

# Source files
OBJS = Prime.o findPrime.o

# Default target
all: $(OUT)

Prime: Prime.o findPrime.o
	$(CXX) $(CXXFLAGS) -o $@ $^

Prime.o: Prime.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

findPrime.o: findPrime.asm
	$(ASM) $(ASMFLAGS) $< -o $@

run-prime:
	./Prime


# Clean build files
clean:
	rm -f $(OBJS) $(OUT)


# -------------------------------
# Build and run Calculator program
# -------------------------------
CALC_OUT = calculator
CALC_OBJS = Calculator.o operation.o

# compile and connect calculator
$(CALC_OUT): $(CALC_OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $(CALC_OBJS)

Calculator.o: Calculator.cpp
	$(CXX) $(CXXFLAGS) -c Calculator.cpp -o Calculator.o

operation.o: operation.asm
	$(ASM) $(ASMFLAGS) operation.asm -o operation.o

# run calculator program
run:
	./$(CALC_OUT)

