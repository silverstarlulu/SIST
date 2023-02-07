package spring;

import java.util.Arrays;
import java.util.List;
import java.util.Random;
import java.util.stream.IntStream;
import java.util.stream.Stream;

class Ex14_0{
	public static void main(String[] args) {
//		List<Integer> list=Arrays.asList(1,2,3,4,5);
//		Stream<Integer> intStream=list.stream();		//list를 스트림으로 변환
//		intStream.forEach(System.out::print);
//		
//		intStream=list.stream();						//스트림이 닫혔으므로 다시 생성하여 forEach
//		intStream.forEach(System.out::print);
		
//		Stream<String> strStream = Stream.of("a","b","c");  //가변인자
//		strStream.forEach(System.out::print);				//가변인자 출력
//		
//		System.out.println();
//		
//		Stream<String> strStream1 = Stream.of(new String[] {"a","b","c","d"});  //배열 1
//		strStream1.forEach(System.out::print);		//배열 1 출력
//		
//		System.out.println();
//		
//		String[] strArr=new String[] {"a","b","c","d","e"};
//		Stream<String> strStream2 = Stream.of(strArr);		//배열 2
//		Stream<String> strStream3 = Arrays.stream(strArr);	//배열 3
//		
//		strStream2.forEach(System.out::print);	//배열 2 출력
//		System.out.println();
//		strStream3.forEach(System.out::print);	//배열 3 출력
//		
//		System.out.println();
//		
//		int[] intArr = {1,2,3,4,5};
//		IntStream intStream = Arrays.stream(intArr);		//배열 4 (기본형 스트림)
////		intStream.forEach(System.out::print);				//배열 4 출력
////		System.out.println("count="+intStream.count());
//		System.out.println("sum="+intStream.sum());			//count, sum, avg 모두 가능
//		
//		System.out.println();
//		
//		Integer[] intArr1 = {1,2,3,4,5};
//		Stream<Integer> intStream1 = Arrays.stream(intArr1);	//배열 5 (객체 스트림)
////		intStream1.forEach(System.out::print);					//배열 5 출력
//		System.out.println("count="+intStream1.count());		//개수 출력 -> sum, avg는 불가
		
		IntStream intStream=new Random().ints();
		intStream.limit(5).forEach(System.out::println);

		System.out.println();
		
		IntStream intStream1=new Random().ints(5);
		intStream1.forEach(System.out::println);

		System.out.println();
		
		IntStream intStream2=new Random().ints(5,10);
		intStream2.limit(5).forEach(System.out::println);
		
		
		
		
	}
}