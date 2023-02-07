package day0118;

public class Plus {
	public static void main(String [] args) {
		int [] array={3,3,4,3,32,1,1,5,77,3};
        int max=0;
        int answer=array[0];
        int [] mode=new int[array.length];

        for(int i=0;i<array.length-1;i++){
        	mode[i]=1;
            for(int j=i+1;j<array.length;j++){
                if(array[i]==array[j]) mode[i]++;
            }
            if(mode[i]>max) {
                max=mode[i];
                answer=array[i];
            } else if(mode[i]==max) {
            	return -1;
            }
        }
        System.out.println(max);
        System.out.println(answer);
	}

}
