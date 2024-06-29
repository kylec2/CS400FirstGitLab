# Define the compiler and the flags
JAVAC = javac
JAVA = java
JFLAGS = -g

# Define the source files and the class files
SOURCES = $(wildcard *.java)
CLASSES = $(SOURCES:.java=.class)

# Default target
default: Main

# Rule to compile all Java files
%.class: %.java
	$(JAVAC) $(JFLAGS) $<

# Rule to run the Main class
Main: $(CLASSES)
	$(JAVA) Main

# Clean target to remove class files
clean:
	rm -f *.class
