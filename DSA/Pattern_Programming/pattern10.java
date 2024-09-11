/*
Problem statement
Ninja was very fond of patterns. For a given integer ‘N’, he wants to make the N-Star Rotated Triangle.

Example:
Input: ‘N’ = 3

Output: 

*
**
***
**
*
Detailed explanation ( Input/output format, Notes, Images )
Constraints :
1  <= N <= 20
Time Limit: 1 sec
Sample Input 1:
3
Sample Output 1:
*
**
***
**
*
Sample Input 2 :
1
Sample Output 2 :
*
*/

import java.util.Scanner;

public class Solution {
    public static void nStarTriangle(int n) {
        // Write your code here
        for(int i=1; i<=2*n-1; i++){
            int stars = i;
            if(i>n){
                stars=2*n-i;
            }
            for(int j=1; j<=stars; j++){
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
