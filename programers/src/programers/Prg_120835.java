package algorithm.study.pureun.programmers;

import java.util.Arrays;

/**
 * 프로그래머스 - 진료순서 정하기
 *
 * @link https://school.programmers.co.kr/learn/courses/30/lessons/120835
 */
public class Prg_120835 {

	public static void main(String[] args) {
		Prg_120835 sol = new Prg_120835();
		int[] num = new int[] { 3, 76, 24 };
		int[] ans = sol.solution(num);
		System.out.println(Arrays.toString(ans));

	}

	public int[] solution(int[] emergency) {
		int[] answer = new int[emergency.length];

		for (int tg = 0; tg < emergency.length; tg++) {
			int rank = 1;
			for (int i = 0; i < emergency.length; i++) {
				if (emergency[tg] > emergency[i]) {
					rank += 0;
				} else if (emergency[tg] < emergency[i]) {
					rank += 1;
				} else if (emergency[tg] == emergency[i]) {
					continue;
				}
			}
			answer[tg] = rank;
		}

		return answer;
	}

}
