CXX = g++
CXXFLAGS = -Wall -Werror

LIB_SOURCES = calculator.cpp
LIB_OBJECTS = $(LIB_SOURCES:.cpp=.o)
LIBRARY = libcalculator.a

EXECUTABLE = calculator_app

all: $(LIBRARY) $(EXECUTABLE)

$(LIBRARY): $(LIB_OBJECTS)
	ar rcs $@ $^

$(EXECUTABLE): main.cpp $(LIBRARY)
	$(CXX) $(CXXFLAGS) -o $@ $^ -I.

clean:
	rm -f $(LIBRARY) $(LIB_OBJECTS) $(EXECUTABLE)
