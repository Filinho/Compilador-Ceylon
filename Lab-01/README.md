# Lab-01: Lexical Parser

This folder contains the first stage of the Ceylon compiler: the lexical parser.

## Overview
The lexical parser reads Ceylon source code and generates tokens, which are used as input for the next compilation steps.

## Main Files
- `compil-lab1-solucao-A-ivanderlei-mendes-silva-filho.jj`: JavaCC grammar file that defines the lexer and tokens for Ceylon source code. Use this file to generate the lexical parser.
- `compil-lab1-amostra-B-ivanderlei-mendes-silva-filho.ceylon`: Example Ceylon source code to be used as input for testing the lexer.
- `CeylonLexer.java`: Generated Java file for the lexer (after running JavaCC).
- `tokens.txt`: Output file with generated tokens (if applicable).

## How to Generate and Run the Lexer
1. Make sure you have JavaCC installed.
2. Run JavaCC to generate the lexer:
   ```sh
   javacc compil-lab1-solucao-A-ivanderlei-mendes-silva-filho.jj
   ```
3. Compile the generated Java files:
   ```sh
   javac CeylonLexer.java
   ```
4. Run the lexer with the example Ceylon file:
   ```sh
   java CeylonLexer compil-lab1-amostra-B-ivanderlei-mendes-silva-filho.ceylon
   ```
5. The output will be a list of tokens printed to the terminal.

## Notes
- Make sure to install any required dependencies before running the script.
- This stage only performs lexical analysis; syntax and code generation are handled in later stages.
