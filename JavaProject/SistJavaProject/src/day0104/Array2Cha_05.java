package day0104;

public class Array2Cha_05 {

	public static void main(String[] args) {
		int [][] arr;
		arr=new int[2][3];
		
		arr[0][0]=10;
		arr[0][1]=20;
		arr[0][2]=30;
		
		arr[1][0]=40;
		arr[1][1]=50;
		arr[1][2]=60;
		
		System.out.println(arr.length);		//행 개수
		System.out.println(arr[0].length); 	//0행의 열 개수
		System.out.println(arr[1].length); 	//1행의 열 개수
		
		System.out.println("**데이터 출력**");
		for(int i=0;i<arr.length;i++) {
			for(int j=0;j<arr[i].length;j++) {
				//System.out.println(arr[i][j]+"\t");
				System.out.printf("%d,%d=%2d\t",i,j,arr[i][j]);
			}
			System.out.println();
		}
		
		System.out.println();
		
		System.out.println("**2차원 배열의 값 변경 후 재출력**");
		
		arr[0][1]=5;
		arr[1][0]=9;
		arr[1][2]=6;
		
		for(int i=0;i<arr.length;i++) {
			for(int j=0;j<arr[i].length;j++) {
				//System.out.println(arr[i][j]+"\t");
				System.out.printf("%d,%d=%2d\t",i,j,arr[i][j]);
			}
			System.out.println();
		}

	}

}
