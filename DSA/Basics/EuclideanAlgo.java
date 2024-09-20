// gcd(a,b) = gcd(a-b, b) where a>b

import java.util.Scanner;

class pattern{
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        int a = sc.nextInt();
        int b = sc.nextInt();

        while (a>0 && b>0) {
            if(a>b){
                a=a%b;
            }
            if(b>a){
                b=b%a;
            }
        }
        if(a==0){
            System.out.println(b);
        }else{
            System.out.println(a);
        }
        sc.close();
    }
}
