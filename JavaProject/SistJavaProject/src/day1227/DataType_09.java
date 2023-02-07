package day1227;

public class DataType_09 {

	public static void main(String[] args) {
		int java	= Integer.parseInt(args[0]);
		int jsp		= Integer.parseInt(args[1]);
		int spring	= Integer.parseInt(args[2]);
		
		double sum = java + jsp + spring; 
		int count = args.length;
		double avg = sum / count;
		
		System.out.printf("java = %d, jsp = %d, spring = %d\n", java, jsp, spring);
		System.out.println("총점 = " + sum);
		System.out.printf("평균 = %.2f", avg);

	}

}
