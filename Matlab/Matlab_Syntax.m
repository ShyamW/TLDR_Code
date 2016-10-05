%%%MATLAB SYNTAX GUIDE %% by Shyam Thiagarajan%

% This is a single line comment

%{ 
This is a 
multiline comment 
%}
    

% variable syntax and basic operators
variable = 5;
variable = 1+4;
variable = 5 * 1;
variable = 5^1;
variable = sqrt(25);
variable = 3.145926;
approx = 3;


% strings
name = 'John';


% Output
disp('printed');
disp(name);
fprintf('printed %s \n', 'name'); % print string and variable and nextline
fprintf('Pi is %.3f and can be approximated with %d\n',pi,approx);


% Table Output
fprintf('time \t temperature\n')
fprintf('3.3 \t 300\n')


% row vectors (arrays)
vector = []; % empty vector
vector = [1 2 3 4];
vector = [1, 2, 3, 4];
vector = linspace(1,10,10); % is [1 2 3 4 5 6 7 8 9 10]
vector = linspace(1,100); % returns 100 evenly spaced entries from 1 to 100
vector = (1:2:10); % returns [1 3 5 7 9]


% column vectors (n dimensional arrays)
vector = vector'; % column vector of row vector [1;3;5;7;9]
vector = [1;2;3;4]; % [1; 2; 3; 4]


% booleans
iKnowSomeMatlab = true; % note, any number greater than 0 is true
iKnowAllMatlab = false; % note, any number less than 1 is false
gonnaBeFalse = 1<5 & 5<1;
gonnaBeTrue = 1>10 || 1>0;


% simple branching
if true
    disp('printed');
end
%------------------------------------------------------------
if false
    disp('not printed');
end
%------------------------------------------------------------
if -100
    disp('printed, only zero is false');
end
%------------------------------------------------------------
if 5
    disp('printed, only zero is false');
end
%------------------------------------------------------------
if 0
    disp('Not Printed, Zero is false');
end


% if, elif, else branching
magicNumber = 7;
if magicNumber == 8
    disp('Not Printed');
elseif magicNumber == 6
    disp('Not Printed');
else
    disp('Printed');
end


% Complex branching
if 1<2 && 1<5 || 1
    if 1<9 || 9>10
        disp('Printed');
    elseif 1<9
        disp('Not Printed, since line 77 true');
    end
else
    disp('Not Printed since line 76 true');
end


%looping TBA










