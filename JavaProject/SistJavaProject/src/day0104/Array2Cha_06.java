package day0104;

public class Array2Cha_06 {

	public static void main(String[] args) {
		//배열 선언, 할당, 초기화 
		
		int [][]arr={{23,30},{1,5,8},{10,20,30,40}};
		
		System.out.println("총 행 갯수: "+arr.length);
		System.out.println("0번행의 열 갯수: "+arr[0].length);
		System.out.println("1번행의 열 갯수: "+arr[1].length);
		System.out.println("2번행의 열 갯수: "+arr[2].length);
		
		for(int i=0;i<arr.length;i++) {
			for(int j=0;j<arr[i].length;j++) {
				System.out.printf("[%d][%d]=%d\t",i,j,arr[i][j]);
			}
			System.out.println();
		}
		
		for(int []a:arr) {
			for(int num:a) {
				System.out.print(num+"\t");
			}
			System.out.println();
		}
	}

}
