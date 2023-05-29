package algorithm.study.pureun.programmers;

/**
 * 프로그래머스 - 영어가 싫어요
 *
 * @link https://school.programmers.co.kr/learn/courses/30/lessons/120894
 */
public class Prg_120894 {

	public static void main(String[] args) {
		Prg_120894 sol = new Prg_120894();
		long ans = sol.solution("onetwothree");
        System.out.println(ans);
		
	}
	
	public long solution(String numbers) {
        long answer = 0;
        
        numbers = numbers.replace("zero", "0");
        numbers = numbers.replace("one", "1");
        numbers = numbers.replace("two", "2");
        numbers = numbers.replace("three", "3");
        numbers = numbers.replace("four", "4");
        numbers = numbers.replace("five", "5");
        numbers = numbers.replace("six", "6");
        numbers = numbers.replace("seven", "7");
        numbers = numbers.replace("eight", "8");
        numbers = numbers.replace("nine", "9");
        
        answer = Long.parseLong(numbers);
        return answer;
    }
    // 너무 복잡하게 생각했음 그냥 문자열 자체를 수정하고 숫자로 나오니까 롱으로 형변환하면 
	// 간단하게 해결가능 
	// 이전에 생각한 하나씩 뽑아서 판단하는 것은 비효율적 쉬운방향으로 생각을 먼저 해볼것
	
	
}
