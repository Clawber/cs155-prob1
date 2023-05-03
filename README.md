# EASY Pseudocode Tokenizer

A tokenizer for the EASY language from Prof. Quiwa's Data Structures book. Created using flex (fast lexical analyzer)

## Project Structure
The main logic of the tokenizer is located within the easy.lex file. Test cases are located inside the /test_cases directory. Other files/folders can be ignored.

## Getting Started

### Dependencies

* Need to have ```flex``` and ```gcc``` installed.
* Having ```make``` is optional, but will help speed up the compilation process


## Compilation using make
1. After cloning the project, go to the root directory of the project.
2. Use make to compile the easy.flex file into an a.out file

```sh
make
```

## Compilation without make
1. Go to the root directory of the project.
2. Execute these commands, to compile the easy.lex file into an a.out file
```sh
lex easy.lex
gcc lex.yy.c
```

## Using the Program (Linux)
After compiling easy.lex into the a.out file, EASY programs can be tokenized using the following procedure:

1. Save the EASY program as a .easy file
2. We can use the piping operator (<) to feed the .easy file to the tokenizer. For example, in order to tokenize a file named test.easy, we can execute the following

```sh
./a.out < test.easy
```

The output of the tokenizer will be displayed in the terminal.

## Acknowledgments

This project was made as a requirement for a Compilers Class (CS 155)

Aside from class materials, the following resources were used in creating the project

* A portion of the flex code was based on "Writing a simple Compiler on my own - Lexical Analysis using Flex" by drifter1
https://steemit.com/programming/@drifter1/writing-a-simple-compiler-on-my-own-lexical-analysis-using-flex