class HelloWorld {
    public static void hi(){
        System.out.println("Hello");
        hi();
    }
    
    public static void main(String[] args) {
        hi();
    }
}

//Segmentation Error - Stack Overflow(out of memory)

class HelloWorld {
    static int count = 0;
    public static void hi(){
        System.out.println(count);
        count++;
        hi();
    }
    
    public static void main(String[] args) {
        hi();
    }
}

------------------------------------------------------

class HelloWorld {
    static int count = 0;
    public static void hi(){
        if(count == 3) return;
        else{
        System.out.println(count);
        count++;
        hi();
        }
    }
    
    public static void main(String[] args) {
        hi();
    }
}
