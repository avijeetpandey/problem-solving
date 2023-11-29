package gfg.array;

public class KadanesAlgorithm {
    public static void printsubarrays(int[] arr) {
        for(int i=0; i< arr.length; i++) {
            for(int j=i; j<= arr.length; j++) {
                for(int k=i; k< arr.length; k++) {
                    System.out.print(arr[k]+ "");
                }
                System.out.println();
            }
        }
    }

    public static int kadaneBruteForce(int[] arr) {
        int sum = Integer.MIN_VALUE;
        int currentSum = 0;

        for(int i=0;i< arr.length; i++) {
            for(int j=i; j<= arr.length; j++) {
                for(int k=i; k< arr.length; k++) {
                    currentSum += arr[k];
                }
                sum = Math.max(sum, currentSum);
                currentSum = 0;
            }
        }

       return sum;
    }

    public static int kadaneOptimised(int[] arr) {
       int currentSum = 0;
       int maxSum = arr[0];

       for(int i=0;i< arr.length;i++) {
           currentSum += arr[i];
           maxSum = Math.max(maxSum, currentSum);

           if(currentSum < 0) {
               currentSum = 0;
           }
       }

       return maxSum;
    }

    public static void main(String[] args) {
        int[] arr = {1,2,3,-2,5};
        int sum = kadaneOptimised(arr);

        System.out.println(sum);
    }
}
