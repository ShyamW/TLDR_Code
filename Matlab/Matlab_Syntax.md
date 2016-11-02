##  MATLAB SYNTAX GUIDE 
| by Shyam Thiagarajan |

### Comments
```matlab
        % This is a single line comment
        
        %{
        This is a
        multiline comment
        %}
```
---
### Basic Operators and Variable Syntax
```matlab
        variable = 5;
        variable = 1 + 4;
        variable = 5 - 1;
        variable = 5 * 1;
        variable = 100 / 20;
        variable = 5^1;
        variable = sqrt(25);
        variable = 3.145926;
        approx = 3;
```
---
### Strings
Note: single quotes are always used for strings
```matlab
        name = 'John';
```
---
### Input
ask user for name, store in variable name
```matlab
        name = input('What is your Name')
```
load data from file into matrix
```matlab
        data = load('data.dat')     
```
---
### Output
prints string in ()
```matlab
        disp('printed');
        disp(name);
```
print string and variable and nextline
```matlab
        fprintf('printed %s \n', 'name');
```
prints 'Pi is 3.14 and can be approximated with 3'
```matlab
        fprintf('Pi is %.3f and can be approximated with %d\n', pi, approx);
```
---
### Table Output
To print table header
```matlab
        fprintf('time \t temperature\n')
```
To print row of data
```matlab
        fprintf('3.3 \t 300\n')
```
---
### Row Vectors (arrays)
Empty vector
```matlab
        vector = []; 
```
[1 2 3 4]
```matlab
        vector = [1 2 3 4];
        vector = [1, 2, 3, 4];
        vector = linspace(1,4,4)
        vector = (1:1:4); 
```
accessing 2nd element from vector
```matlab
        element = vector(2); % returns 2
```
---
### Column Vectors (vertical arrays)
transpose row vector
```matlab
        vector = vector';
```
initialize column vector
```matlab
        vector = [1;2;3;4];
```
acessing 3rd element from vector
```matlab    
        element = vector(3); 
```
---
### Matrices (2d arrays)
make [1 2 3; 4 5 6]
```matlab      
        matrix = [1, 2, 3; 4, 5, 6];
        first = linspace(1,3,3);
        second = (4:1:6);
        matrix = [first; second];
```
access second row, first column of matrix
```matlab 
        element = matrix(2,1); 
```
Squares each element in the matrix; dot operator forces Matlab to do calculations on each element.
```matlab 
        matrix = matrix.^2; 
```
Accesses the third element in the matrix (third row, first column)
```matlab 
        third = matrix(3); 
```
---
### Booleans
```matlab
        iKnowSomeMatlab = true; % note, any number other than 0 is true
        iKnowAllMatlab = false; % note, any number not zer0 is true
        gonnaBeFalse = 1 < 5 && 5 < 1;
        gonnaBeTrue = 1 > 10 || 1 > 0;
        gonnaBeTrue = ~false;
```
---
### Simple Branching
```matlab
        if true
            disp('printed');
        end
```    
```matlab    
        if false
            disp('not printed');
        end
```    
```matlab    
        if -100
            disp('printed, only zero is false');
        end
 ```       
 ```matlab       
        if 5
            disp('printed, only zero is false');
        end
```        
```matlab        
        if 0
            disp('Not Printed, Zero is false');
        end
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
                disp('Not Printed, since line 101 true');
            end
        else
            disp('Not Printed since line 102 true');
        end
```
---
### Looping
The following loop displays 0 1 2 3 4 5 6 7 8 9
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
### Plotting 
Initialize Data
```matlab
        time = (0:1:10);
        temperature = (300:10:400);
        sound = linspace(400,300,11);
        wind = [0 3 7 9 9.1 9.9 9.9 9.9 9.9 10 10];
        water = [0 10 50 100 400 20 40 50 20 40 60];
```
Plot temperature data
```matlab
        plot(time, temperature, 'x'); % scatter with x
        hold on; % I have more stuff to plot
```
Plot sound data
```matlab
        plot(time, sound, 'o'); % scatter with o
        hold on;
```    
Plot wind data
```matlab
        plot(time, wind, '-r') % connected red line
        hold on;
```    
Plot water data
```matlab
        plot(time, water, '-b') % connected blue line
```
Add axis, titles, and legend
```matlab
        xlabel('Time (in seconds)');
        ylabel('ALOT OF STUFF');
        title('Title');
        legend('temp','sound', 'wind', 'water'); % notice, same order as plotted
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
