package algorithm.study.pureun.programmers;

/**
 * 프로그래머스 - 공 던지기
 *
 * @link https://school.programmers.co.kr/learn/courses/30/lessons/120843
 */
public class Prg_120843 {

	public static void main(String[] args) {
		Prg_120843 sol = new Prg_120843();
		int[] num = new int[] { 1, 2, 3, 4, 5, 6 };
		int ans = sol.solution(num, 5);
		System.out.println(ans);

	}

	public int solution(int[] numbers, int k) {
		int answer = numbers[2 * (k - 1) % numbers.length];

		return answer;
	}
	
	/* 엣지케이스가 생김 완벽하게 해결못함
	 * public int solution(int[] numbers, int k) {
		int answer = 0;
		int th = 1;

		for (int i = 0; th <= k; i++) {

			if (i + 1 == numbers.length) {
				i = 0;
				th++;
				answer = numbers[i];
				continue;

			} else if (i == numbers.length) {
				i = 1;
				th++;
				answer = numbers[i];
				continue;
			}
			answer = numbers[i];

			i++;
			th++;

		}

		return answer;
	}
	 * 
	 * 
	 * 
	 * */

}
