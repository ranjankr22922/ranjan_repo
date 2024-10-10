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
