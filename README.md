# Beryllium
 This is getting excessive. YET ANOTHER ESOLANG.

## Syntax
 The syntax of Beryllium is as follows:
 - There is only ***1*** memory cell (AKA the stack).
 - Statements are almost always 2 or 3 characters long and separated by spaces.
 - The only statement that isn't 2 or 3 chars long is the ```!``` statement. It terminates the program.
 - All other statements must follow a strict protocol and must be split into 3 parts. Take this one for instance: <br><br>
    ```
    2+H
    ```
   This statement has a command group of ```2``` (IO), a command of ```+``` (Print Str) and an argument of ```H```. This prints ```H```. The other commands are shown in this table:

   Command | Group 1 (Stack)      | Group 2 (IO)
   --------|----------------------|------------------------------
   \+      | Increase the stack   | Prints any non-Integer (the 3rd character)
   \*      | Sets the stack value | Prints any Integer (the 3rd character)
   \-      | Reduce the stack     | Prints the value of the stack

 - When using the ```2+``` command, ```-``` and ```_``` as arguments print newline and space respectively

### Just for Fun
 Look: ***b***e***ry***lli***u***m
 
 R - U - B - Y spells ruby and beryllium is coded in pure ruby.
