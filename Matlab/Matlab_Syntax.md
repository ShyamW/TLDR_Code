##  MATLAB SYNTAX GUIDE 
| by Shyam Thiagarajan |
### Comments
    % This is a single line comment

    %{
    This is a
    multiline comment
    %}

### Basic Operators and Variable Syntax
    variable = 5;
    variable = 1+4;
    variable = 5 * 1;
    variable = 100 / 20;
    variable = 5^1;
    variable = sqrt(25);
    variable = 3.145926;
    approx = 3;


### Strings
Note: single quotes are always used for strings

    name = 'John';  



### Input
ask user for name, store in variable name

    name = input('What is your Name')
load data from file into matrix

    data = load('data.dat')     


### Output
    disp('printed');
    disp(name);
print string and variable and nextline

    fprintf('printed %s \n', 'name'); 
prints 'Pi is 3.14 and can be approximated with 3'
    
    fprintf('Pi is %.3f and can be approximated with %d\n', pi, approx);


### Table Output
To print table header

    fprintf('time \t temperature\n')
To print row of data

    fprintf('3.3 \t 300\n')


### row vectors (arrays)
Empty vector

    vector = []; 

[1 2 3 4]

    vector = [1 2 3 4];
    vector = [1, 2, 3, 4];
    vector = linspace(1,4,4)
    vector = (1:1:4); 

accessing 2nd element from vector

    element = vector(2); % returns 2


### column vectors (n dimensional arrays)
transpose row vector

    vector = vector';

initialize column vector

    vector = [1;2;3;4];
    
acessing 3rd element from vector
    
    element = vector(3); % returns 3

### Matrices (2d arrays)
make [1 2 3; 4 5 6]
     
    matrix = [1, 2, 3; 4, 5, 6];
    first = linspace(1,3,3);
    second = (4:1:6);
    matrix = [first; second];

access first row, first column of matrix

    element = matrix(1,1); % accesses first row, first column in above matrix


### booleans
    iKnowSomeMatlab = true; % note, any number other than 0 is true
    iKnowAllMatlab = false; % note, any number not zer0 is true
    gonnaBeFalse = 1<5 && 5<1;
    gonnaBeTrue = 1>10 || 1>0;
    gonnaBeTrue = ~false;


### simple branching

    if true
        disp('printed');
    end


    if false
        disp('not printed');
    end


    if -100
        disp('printed, only zero is false');
    end
    
    
    if 5
        disp('printed, only zero is false');
    end
    
    
    if 0
        disp('Not Printed, Zero is false');
    end


### if, elif, else branching
if is checked first, else checked last

    magicNumber = 7;
    if magicNumber == 8
        disp('Not Printed');
    elseif magicNumber == 6
        disp('Not Printed');
    else
        disp('Printed');
    end


### Complex branching
    if (1<2 && ~5<1) || 0
        if 1<9 || 9>10
            disp('Printed');
        elseif 1<9
            disp('Not Printed, since line 101 true');
        end
    else
        disp('Not Printed since line 102 true');
    end


### Looping
The following loop displays 0 1 2 3 4 5 6 7 8 9

    for i=0:1:9
        disp(i)
    end

A simple countdown: prints 3 2 1

    countDown = 3;
    while(countDown > 0)
       disp(countDown);
       countDown = countDown - 1;
    end


### nested looping
displays the matrix to the screen

    a=[1 2 3; 4 5 6; 7 8 9];
    for i=1:1:3
      for j=1:1:3
        element = a(i,j);
        fprintf(' %d ', element);
      end
      fprintf('\n')
    end


### Plotting 
Plots temperature, sound, wind, and water vs time

    time = (0:1:10);
    temperature = (300:10:400);
    sound = linspace(400,300,11);
    wind = [0 3 7 9 9.1 9.9 9.9 9.9 9.9 10 10];
    water = [0 10 50 100 400 20 40 50 20 40 60];
    plot(time, temperature, 'x'); % scatter with x
    hold on; % I have more stuff to plot
    plot(time, sound, 'o'); % scatter with o
    hold on;
    plot(time, wind, '-r') % red line
    hold on;
    plot(time, water, '-b') % blue line
    xlabel('Time (in seconds)');
    ylabel('ALOT OF STUFF');
    title('Title');
    legend('temp','sound', 'wind', 'water');


### Functions
    mean = calcVectorMean([1,2], 2);    % calling mean function
    dispVector([1 2 3]);    % calling disp vector function
    
    function mean = calcVectorMean(v, n)
        mean = sum(v)/n;
    end
    
    function dispVector(v)
        for i=1:1:length(v)
            fprintf('% i ', v(i))
        end
        fprintf('\n')
    end
