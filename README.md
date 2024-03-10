# Overview
This project utilizes SDL2, Flex, and Bison to make a basic clone of the LOGO programming language. LOGO utilizes "turtle graphics", where various movement commands produce line/vector graphics.
- SDL2 is a library that allows graphics creation.
- Flex is a lexical analyzer generator that creates scanners to recognize lexical patterns (syntax) and create tokens off of the input given. This allows us to create a grammar and specify actions based on the syntax pattern.
- Bison is a parser generator that reads the tokens given from Flex to determine if the syntax conforms to the grammar and if so, carry out a specific action.

# Commands
- ```penup```: Stop pen from drawing on screen. Allows you to move the position without leaving a line.
- ```pendown```: Allow pen to draw again.
- ```move DOUBLE```: Move the pen a specified distance in the direction it is facing.
- ```color DOUBLE DOUBLE DOUBLE```: Change the color of the pen to a color in RGB format.
- ```turn DOUBLE```: Rotate the pen a specified degree value.
- ```goto DOUBLE DOUBLE```: Change the pen's position to a specified X and Y value.
- ```where```: Prints the pen's current coordinates to the console.
- ```clear```: Remove all drawings from the display.
- ```print STRING```: Display given string to the console.
- ```save STRING```: Save the drawing to given file path.
- ```end```: Quit the program.
## Variables
Variables can be created by specifying any letter A-Z followed by ```$=``` and the value to be assigned (ex. ```A$=5```). To use a variable, you specify the letter assigned followed by ```$``` (ex. ```A$```).
Variables are able to be used for all commands that take arguments.
## Operators
Addition, Subtraction, Multiplication, and Divsion are able to be used as variables and arguments.
