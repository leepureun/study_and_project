package algorithm.study.pureun.programmers;

import java.util.Arrays;

/**
 * 프로그래머스 - k의 개수
 *
 * @link https://school.programmers.co.kr/learn/courses/30/lessons/120887
 */
public class Prg_120887 {

	public static void main(String[] args) {
		Prg_120887 sol = new Prg_120887();
		int ans = sol.solution(10, 50, 5);
		System.out.println(ans);

	}

	public int solution(int i, int j, int k) {
		int answer = 0;
		int[] src = new int[j - i + 1];
		int index = 0;

		for (int num = i; num <= j; num++) {
			src[index] = num;
			index++;
		}

		System.out.println(Arrays.toString(src));

		String ch = Arrays.toString(src);
		String temp = String.valueOf(k);
		String[] tg = ch.split(temp);

		answer = tg.length - 1;

		return answer;
	}

}
