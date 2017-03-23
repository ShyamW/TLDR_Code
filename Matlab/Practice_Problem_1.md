## Directions
##### Write a program that does exactly the following

 * Load data from (data.txt)[https://github.com/ShyamW/TLDR_Code/tree/master/Matlab]
 * Ask the user for a number, either 1 or 2 (we will call this choice)
 * Replace all elements of the choice column with choice, leaving the other column untouched
 	- There are many ways to do this. Try doing this with a for loop, a while loop, and with no loops (hardest).
 * Print the data to the screen (it is a nx2 matrix), use fprintf()
	- print neatly as you would handwrite write a matrix
 * Create a vector called time from 0 to 10 with number of elements equal to the number of elements in the choice column. 	
      - ex: if data is 2x3 matrix, time=[0,5,10].
 * Plot the choice column vs time.
 
    - this an an opportunity to see all the different plotting possibilities: red, blue, green, black, scatter, dotted, line, etc

---
##### Sample Input:

data = [1 2; 3 4; 5 6];

choice = 2


##### Sample Output:
    	
    1 2
	3 2
   	5 2
---

##### Sample Input:

data = [3 5; 7 9];

choice = 1


##### Sample Output:	
    	
	1 5
   	1 9
