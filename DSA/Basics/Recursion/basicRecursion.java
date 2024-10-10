class HelloWorld {
    public static void hi(){
        System.out.println("Hello");
        hi();
    }
    
    public static void main(String[] args) {
        hi();
    }
}

// Out of memory error
