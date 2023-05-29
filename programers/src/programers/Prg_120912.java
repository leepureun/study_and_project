package algorithm.study.pureun.programmers;

/**
 * 프로그래머스 - 7의 개수
 *
 * @link https://school.programmers.co.kr/learn/courses/30/lessons/120912
 */
import java.util.Arrays;

public class Prg_120912 {

	public static void main(String[] args) {
		Prg_120912 sol = new Prg_120912();
		int[] num = new int[] { 7, 17, 77 };
		int ans = sol.solution(num);
		System.out.println(ans);

	}

	public int solution(int[] array) {
		int answer = 0;

		String target = Arrays.toString(array);

		for (int i = 0; i < target.length(); i++) {
			if (target.charAt(i) == 55) {
				answer++;
			}
		}
		return answer;
	}

}
