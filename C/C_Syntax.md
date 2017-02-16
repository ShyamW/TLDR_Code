##  C SYNTAX GUIDE 
by Shyam Thiagarajan 

---
#### In This Guide:


[Comments](https://github.com/ShyamW/TLDR_Code/blob/master/Matlab/Matlab_Syntax.md#comments) || [ Basic Operators](https://github.com/ShyamW/TLDR_Code/blob/master/Matlab/Matlab_Syntax.md#basic-operators-and-variable-syntax) || [ Strings](https://github.com/ShyamW/TLDR_Code/blob/master/Matlab/Matlab_Syntax.md#strings) 
[ Input](https://github.com/ShyamW/TLDR_Code/blob/master/Matlab/Matlab_Syntax.md#input) || [Output](https://github.com/ShyamW/TLDR_Code/blob/master/Matlab/Matlab_Syntax.md#output) 
[ Arrays](https://github.com/ShyamW/TLDR_Code/blob/master/Matlab/Matlab_Syntax.md#row-vectors-arrays) ||[ 2d Arrays](https://github.com/ShyamW/TLDR_Code/blob/master/Matlab/Matlab_Syntax.md#column-vectors-vertical-arrays) 
[ Booleans and Branching (if/else)](https://github.com/ShyamW/TLDR_Code/blob/master/Matlab/Matlab_Syntax.md#booleans) || [ Loops](https://github.com/ShyamW/TLDR_Code/blob/master/Matlab/Matlab_Syntax.md#if-elseif-else-branching)
[ Functions](https://github.com/ShyamW/TLDR_Code/blob/master/Matlab/Matlab_Syntax.md#functions)

---


### Comments
```c
        // This is a single line comment
        
        /*
        This is a
        multiline comment
        */
```
---
### Basic Operators and Variable Syntax
```c
        int variable = 5;
        int variable = 1 + 4;
        int variable = 5 - 1;
        int variable = 5 * 1;
        int variable = 100 / 20;
        long long int variable = 1000000000000000000000000;
        double variable = 3.145926;
        int approx = 3;
```
---
### Strings
Note: double quotes are always used for strings
```c
        char * name = "John"; // char * in read only binary, IMMUTABLE
        char [] name = "John"; // char arary on stack, MUTABLE
        char * name = malloc(5); // malloc 12 bytes for string of 4 letters in heap, MUTABLE
```
---
### Input
ask user for name, store in variable name
```c    
        char name[];
        scanf("%s is my name", &name); // takes string from stdin 
```
load data from file into matrix
```c    
        FILE *fp = fopen("filename","r"); // opens file for reading
        fscanf(fp,"%s is my name", &name); // reads name from file
```
---
### Output
prints string in ()
```c
        printf("printed");
```
prints Harry to file
```c
        char * name = "Harry";
        FILE *fp = fopen("filename","r"); // opens file for reading
        fprintf(fp, "%s is the name", name);
```
---
### Arrays
Empty array
```c
        int array[] = {}; 
        char array[] = {};
        double array[] = {};
```
[1 2 3 4]
```c
        int array[] = {1,2,3,4};
```
accessing 2nd element from vector
```c
        int element = array[1]; % returns 2
```
---
### Matrices (2d arrays)
make [1 2 3; 4 5 6]
```c      
        int matrix[][] = { {1, 2, 3} ,{4, 5, 6} };
        // accessing first row second column
        int element = matrix[1][0];
```
---
### Booleans
```c
        short iKnowSomeMatlab = 1; % note, any number other than 0 is true
        short iKnowAllMatlab = 0; % note, any number not 0 is true
        short gonnaBeFalse = 1 < 5 && 5 < 1;
        short gonnaBeTrue = 1 > 10 || 1 > 0;
        gonnaBeTrue = ~1;
```
---
### Simple Branching
```c
        if (1) {
            printf("printed since true");
        }
```    
```c        
        if (0) {
            printf("Not Printed, Zero is false");
        }
```
 
```c    
        if (-100) {
            printf"'printed, only zero is false");
        }
 ```       
 ```c       
        if (5) {
            printf("prints something out");
        }
```        
---
### if, elseif, else branching
if is checked first, else checked last
```matlab 
        magicNumber = 7;
        if magicNumber == 8
            disp('Not Printed');
        elseif magicNumber == 6
            disp('Not Printed');
        else
            disp('Printed');
        end
```
---
### Complex branching
```matlab
        if (1 < 2 && ~(5 < 1)) || 0
            if 1 < 9 || 9 > 10
                disp('Printed');
            elseif 1<9
                disp('Not Printed, since above condition is true');
            end
        else
            disp('Not Printed since line 102 true');
        end
```
---
### Looping
The following loop displays 0 1 2 3 4 5 6 7 8 9. The loop starts at 0, steps by 1, and ends at 9
```matlab
        for i=0:1:9
            disp(i)
        end
```

A simple countdown: prints 3 2 1
```matlab
        countDown = 3;
        while(countDown > 0)
            disp(countDown);
            countDown = countDown - 1;
        end
```
---
### Nested looping
displays the matrix to the screen
```matlab
        a=[1 2 3; 4 5 6; 7 8 9];
        for i=1:1:3
            for j=1:1:3
                element = a(i,j);       % access ith row, jth column
                fprintf(' %d ', element);
            end
            fprintf('\n')
        end
```
---
### Functions
calling mean function
```matlab
        mean = calcVectorMean([1,2], 2);
```    
**mean function**
```matlab    
         function mean = calcVectorMean(v, n)
            mean = sum(v)/n;
         end
```     
calling dispVector function
```matlab 
        dispVector([1 2 3]);    % calling disp vector function
 ```    
**dispVector function**
 ```matlab
        function dispVector(v)
            for i=1:1:length(v)
                fprintf(' %i ', v(i))
            end
            fprintf('\n')
        end
 ```
