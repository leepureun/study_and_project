package algorithm.study.pureun.programmers;

/**
 * 프로그래머스 - 팩토리얼
 *
 * @link https://school.programmers.co.kr/learn/courses/30/lessons/120848
 */
public class Prg_120848 {

	public static void main(String[] args) {
		Prg_120848 sol = new Prg_120848();
		int ans = sol.solution(7);
		System.out.println(ans);

	}
	
	public int solution(int n) {
		int answer = 0;
		for (int i = 1; i <= 10; i++) {
			if (fac(i) <= n) {
				answer = i;
			}
		}
		return answer;
	}

	//재귀함수? 
	int fac(int n) {
		if (n <= 1) {
			return 1;
		} else {
			return n * fac(n - 1);
		}
	}
	
	
	/* 예외처리가 제대로 되지않은 듯 한데 어디가 문제인지를 모르니 고칠수가 없음
	 *
	 * int answer = 0;
        int num = 1;
        for(int i = 1; i <= n; i++) {
        	num = num*i;
        	if(num > n) {
        		answer = i-1;
        		break;
        	}
        } 
        return answer;
	 */

}
