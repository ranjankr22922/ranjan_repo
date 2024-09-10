/*
Problem statement
Ninja was very fond of patterns. For a given integer ‘N’, he wants to make the Reverse N-Star Triangle.

Example:
Input: ‘N’ = 3

Output: 

*****
 ***
  *
Detailed explanation ( Input/output format, Notes, Images )
Constraints :
1  <= N <= 20
Time Limit: 1 sec
Sample Input 1:
3
Sample Output 1:
*****
 ***
  *
Explanation Of Sample Input 1 :
The first row contains five stars.
The second row contains one space, followed by three stars.
The third row contains two spaces, followed by a star.
Sample Input 2 :
1
Sample Output 2 :
*
*/

import java.util.Scanner;
public class Solution {
    public static void nStarTriangle(int n) {
        // Write your code here
        for(int i=0; i<n; i++){
            //Spaces
            for(int j=0; j<i; j++){
                System.out.print(" ");
            }
            //Stars
            for(int j=0; j<2*n-2*i-1; j++){
                System.out.print("*");
            }
            System.out.println();
        }
    }

    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        nStarTriangle(n);
    }
}
