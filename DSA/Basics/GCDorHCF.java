//Greatest Common Divisor or Highest Common Factor

import java.util.Scanner;

class pattern{
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        int n1 = sc.nextInt();
        int n2 = sc.nextInt();

        int count=0;
        for(int i=1; i<=n1; i++){
            if(n1%i==0 && n2%i==0){
                count=i;
            }
        }
        System.out.print(count);        
        sc.close();
    }
}
