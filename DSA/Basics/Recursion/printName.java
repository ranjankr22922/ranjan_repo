//Print name n times

class HelloWorld {
    static int count = 0;
    public static void hi(){
        if(count == 5) return;
        else{
        System.out.println(count+1 + ". Ranjan");    //print "Ranjan" 5 times
        count++;
        hi();
        }
    }
    public static void main(String[] args) {
        hi();
    }
}
---------------------------------------------------
import java.util.Scanner;

class HelloWorld {
    public static void f(int i, int n){
        if(i>n) return;
        else{
        System.out.println("Ranjan");
        f(i+1,n);
        }
    }
    
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        f(1,n);
    }
}
