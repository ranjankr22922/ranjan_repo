import java.util.Scanner;

public class dsa{

    // public static void printName(){
    //     System.out.println("Ranjan");
    // }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        // System.out.println("Enter Age");
        // int age = sc.nextInt();
        // System.out.println(age);

    /*  IF ELSE
        if(age<18){
            System.out.println("Not Eligible for the job");
        }
        else if(age >=18){
            System.out.println("Eligible for job");
        }
        else if(age>=55 && age<=57){
            System.out.println("Eligible for job but Retirement soon");
        }
        else if(age>57){
            System.out.println("Retirement Time");
        } */

    /*  if(age<18){
            System.out.println("Not Eligible for the Job");
        }
        else if(age<=57){
            System.out.print("Eligible for Job");
            if(age>=55){
                System.out.println(", but retirement soon.");
            }
        }
        else{
            System.out.println("Retirement Time");
        } */

        // ARRAYS

        // float[]  arr = {1,2,3,4,5};      //1D Array
        // arr[4] += 2;
        // System.out.println(arr[4]);     //7.0

        // int[][] arr = new int[3][5];     //2D Array
        // arr[0][1] = 45;
        // System.out.println(arr[0][1]);     //45
        // System.out.println(arr[0][0]);     //0

        //STRING
        // String str = "Ranjan";
        // System.out.println(str);                    //Ranjan
        // System.out.println(str.charAt(0));    //R

        //LOOPS
        //for loop
        // for(int i=5; i>0; --i){
        //     System.out.println("Hello" + i);
        // }

        // while loop
        // int i=0;
        // while(i<5){
        //     System.out.println(i*2);
        //     i++;
        // }

        // do-while loop
        // int i=6;
        // do {
        //     System.out.println(i);    
        //     i++;        
        // } while (i<5);
        // System.out.println(i);

        //FUNCTIONS
        //Increases readability & Code reusability.

        // printName();
        sc.close();
    }
}
