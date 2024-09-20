import java.util.Scanner;

public class arr_str{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // int[] marks = new int[20];       // 1D Array
        // marks[0] = 97;  //phy
        // marks[1] = 85;  //chem
        // marks[2] = 90;  //eng
        // System.out.println(marks);  //gives garbage value
        // System.out.println(marks[0]);   

        // for (int i=0; i<3; i++){
        //     System.out.println(marks[i]);
        // }
        // int mark[] = {89,78,58};
        // System.out.println(mark[0]);

        // int size = sc.nextInt();
        // int num[] = new int[size];

        // //Input
        // for(int i=0; i<size; i++){
        //     num[i] = sc.nextInt();
        // }

        // //Output
        // for (int i=0; i<size; i++){
        //     System.out.println(num[i]);
        // }


        //Take an array from user and search for an element x in the array and return its index.[LINEAR SEARCH]
   
        // int size = sc.nextInt();
        // int[] num = new int[size];

        // for(int i=0; i<size; i++){
        //     num[i]=sc.nextInt();
        // }

        // int x = sc.nextInt();

        // for(int i=0; i<num.length; i++){
        //     if(num[i]==x){
        //         System.out.println("X found at index : "+i);
        //     }
        // }


        // int[][] num = new int[3][5];     //2D Array

        // int rows = sc.nextInt();
        // int cols = sc.nextInt();

        // int[][] num = new int[rows][cols];

        // //input
        // for(int i=0; i<rows; i++){
        //     for(int j=0; j<cols; j++){
        //         num[i][j] = sc.nextInt();
        //     }
        // }

        // //output
        // for(int i=0; i<rows; i++){
        //     for(int j=0; j<cols; j++){
        //         System.out.print(num[i][j]+" ");
        //     }
        //     System.out.println();
        // }


        // Take a matrix as input from user & Search for a given number 'x' and print its index.

        // int rows = sc.nextInt();
        // int cols = sc.nextInt();

        // int nums[][] = new int[rows][cols];

        // //Input
        // for(int i=0; i<rows; i++){
        //     for(int j=0; j<cols; j++){
        //         nums[i][j] = sc.nextInt();
        //     }
        // }

        // int x = sc.nextInt();

        // //Output
        // for(int i =0; i<rows; i++){
        //     for(int j=0; j<cols; j++){
        //         if (nums[i][j]==x){
        //             System.out.println("Element found at index : " + i + ", " + j);
        //         }
        //     }
        // }


        //String
        // Strings are immutable

        // String name = "Ranjan Kumar"; //String Declaration
        // String name = sc.nextLine();
        // System.out.println(name);

        //Concatenation
        // String fname = "Ranjan";
        // String lname = "Kumar";
        // String fullname = fname + " " + lname;
        // System.out.println(fullname);
        // System.out.println(fullname.length());  //length

        // //charAt

        // for(int i=0; i<fullname.length(); i++){
        //     System.out.println(fullname.charAt(i));
        // }

        //Compare

        // s1 > s2 : +ve value
        // s1 = s2 : 0
        // s1 <s2 : -ve value

        // s1 = hello, s2 = cello : 'hello' is greater because 'h' is greater than 'c'.

        // String name1 = "Ranjan";
        // String name2 = "Ranjan";

        // if(name1.compareTo(name2)==0){
        //     System.out.println("Strings are Equal");
        // }
        // else{
        //     System.out.println("Strings are not Equal");
        // }

        // if (name1 == name2){
        //     System.out.println("Strings are Equal");
        // }else{
        //     System.out.println("Strings are not Equal");
        // }

        // if(new String("Ranjan") == new String("Ranjan")){    //Not Equal
        //     System.out.println("Strings are Equal");
        // }else{
        //     System.out.println("Strings are not Eqaul"); 
        // }

        //Substring

        // String sentence = "My name is Ranjan";
        // String name = sentence.substring(11, sentence.length());
        // System.out.println(name);                //Ranjan
        // String sentence1 = "Ranjan Kumar";
        // String name1 = sentence1.substring(0, 6);
        // System.out.println(name1);               //Ranjan
        // String name2 = sentence1.substring(7);
        // System.out.println(name2);               //Kumar

        // String Builder

        // StringBuilder sb = new StringBuilder("Ranj");
        // System.out.println(sb);                         //Ranj
        // System.out.println(sb.charAt(0));         //R
        // sb.setCharAt(2,'a');
        // System.out.println(sb);                         //Raaj 
        // sb.insert(0, 'Y');
        // System.out.println(sb);                         //YRaaj
        // sb.delete(0,1);
        // System.out.println(sb);                         //Raaj

        // StringBuilder sb = new StringBuilder("H");
        // sb.append('i');     //str=str+i
        // sb.append('i');     //str=str+i
        // System.out.println(sb);     //Hii
        // System.out.println(sb.length());

        //Reverse a String using StringBuilder
        StringBuilder sb = new StringBuilder("hello");
        
        for(int i=0; i<sb.length()/2; i++){

            int front = i;
            int back = sb.length()-1-i;

            char frontChar = sb.charAt(front);
            char backChar = sb.charAt(back);

            sb.setCharAt(front, backChar);
            sb.setCharAt(back, frontChar);
        }
        System.out.println(sb);
        sc.close();
    }
}
