public class Main {
    public static void main(String[] args) {
        if (args.length == 2) {
            try {
                int a = Integer.parseInt(args[0]);
                int b = Integer.parseInt(args[1]);
                int result = multiply(a, b);
                System.out.println(result);  // This will print the result for testing in GitHub Actions
            } catch (NumberFormatException e) {
                System.out.println("Please provide two integers.");
            }
        } else {
            System.out.println("Test application");
        }
    }

    public static int multiply(int a, int b) {
        return a * b;
    }
}