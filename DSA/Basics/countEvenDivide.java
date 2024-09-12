/*
Count Digits
Difficulty: EasyAccuracy: 30.45%Submissions: 292K+Points: 2
Given a number n. Count the number of digits in n which evenly divide n. Return an integer, total number of digits of n which divides n evenly.

Note :- Evenly divides means whether n is divisible by a digit i.e. leaves a remainder 0 when divided.
 

Examples :

Input: n = 12
Output: 2
Explanation: 1, 2 when both divide 12 leaves remainder 0.
Input: n = 2446
Output: 1
Explanation: Here among 2, 4, 6 only 2 divides 2446 evenly while 4 and 6 do not.
Input: n = 23
Output: 0
Explanation: 2 and 3, none of them divide 23 evenly.
Expected Time Complexity: O(n)
Expected Space Complexity: O(1)
 

Constraints:
1<= n <=105
*/

class Solution{
    public static int evenlyDivides(int n){
        int duplicate = n;
        int count=0;
        
        while (n>0) {
            int lastDigit = n%10;
            n=n/10;

            //Avoid ZeroDivision Error
            if(lastDigit !=0 && duplicate % lastDigit == 0){
            count++;
            }
        }
        return count;
    }
}
