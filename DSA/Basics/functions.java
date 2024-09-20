import java.util.Scanner;

public class fn {

    // public static void printMyName(){         //Function Declaration
    //     System.out.println("Ranjan Kumar");
    // }

    // public static void printMyName(String name){
    //     System.out.println(name);
    //     return;
    // }

    // public static int calculateSum(int a, int b){
    //     int sum = a + b;
    //     return sum;
    // }

    // public static int calculateProduct(int a, int b){
    //     return a*b;
    // }

    // public static void printFactorial(int n){
    //     int fact = 1;
    //     for(int i=n; i>1; i--){
    //         fact = fact * i;
    //     }
    //     System.out.println(fact);
    // }

    // public static void maxx(int a, int b){
    //     if(a>b){
    //         System.out.println(a);
    //     }else{
    //         System.out.println(b);
    //     }
    //     return;
    // }

    //pass by reference is not available in java

    // public static void passByValue(int i){
    //     System.out.println(i);      //1
    //     i++;
    //     System.out.println(i);      //2
    //     i++;
    //     System.out.println(i);      //3
    // }


    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        // int a = sc.nextInt();
        // int b = sc.nextInt();

        // printMyName();
        // String name = sc.nextLine();
        // printMyName(name);                        //Function Calling

        // int sum = calculateSum(a, b);
        // System.out.println(sum);
        // System.out.println("Product of a and b : " + calculateProduct(a, b));

        // int n = sc.nextInt();
        // printFactorial(n);

        // maxx(a, b);

        // int i = sc.nextInt();
        // passByValue(i);
        // System.out.println(i);      //1, 'i' will not change because the passed value would be a copy.
        sc.close();
    }
}
