package algorithm.study.pureun.programmers;

/**
 * 프로그래머스 - 잘라서 배열로 저장하기
 *
 * @link https://school.programmers.co.kr/learn/courses/30/lessons/120913
 */
public class Prg_120913 {

	public static void main(String[] args) {
		Prg_120913 sol = new Prg_120913();
		String[] ans = sol.solution("abc1Addfggg4556b", 6);

	}
	
	public String[] solution(String my_str, int n) {
        
		int answerLength = my_str.length()/n;
		if(my_str.length()%n != 0) {
			answerLength = (my_str.length()/n) +1;
		}
		String[] answer = new String[answerLength];
		
		for(int i=0; i <answer.length; i++) {
			if(i == answer.length-1 ) {
				answer[i] = my_str.substring(n*i);
				break;
			}
			
			answer[i] = my_str.substring(n*i,n*(i+1));
		}
		
        return answer;
    }

}
