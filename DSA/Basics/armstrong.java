/*
An Armstrong number is a number that is equal to the sum of its own digits each raised to the power of the number of digits.
*/

import java.util.Scanner;

class pattern{
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();

        int duplicate = n;
        int lastDigit = 0;
        int sum = 0;

        int numDigit = String.valueOf(n).length();      //String.valueOf(n) converts Int into String
        while (n>0) {
            lastDigit = n%10;
            sum += Math.pow(lastDigit, numDigit);
            n=n/10;
        }
        if(sum==duplicate){
            System.out.println("True");
        }else{
            System.out.println("False");
        }
        sc.close();
    }
}
