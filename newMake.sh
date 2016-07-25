#!/bin/sh
echo -n "CXX = g++
TARGET = test
CXXFLAGS = -Wall -std=c++14
LIBS +=
SRCS := "> Makefile
ls *.cpp -1 |tr -d '\n' >> Makefile
echo "
OBJS := \$(SRCS:.cpp=.o)
\$(TARGET): \$(OBJS)
	\$(CXX) \$(CXXFLAGS) \$(LIBS) -o \$@ \$(OBJS)

clean:
	rm -f \$(TARGET) \$(OBJS)

run : \$(TARGET)
	./\$(TARGET)

" >> Makefile
