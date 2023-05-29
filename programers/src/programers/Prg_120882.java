package algorithm.study.pureun.programmers;

import java.util.Arrays;

/**
 * 프로그래머스 - 등수 매기기
 *
 * @link https://school.programmers.co.kr/learn/courses/30/lessons/120882
 */
public class Prg_120882 {

	public static void main(String[] args) {
		Prg_120882 sol = new Prg_120882();
		int[][] num = { { 80, 70 }, { 90, 50 }, { 40, 70 }, { 50, 80 } };
		int[] ans = sol.solution(num);
		System.out.println(Arrays.toString(ans));

	}

	public int[] solution(int[][] score) {
		int[] answer = new int[score.length];
		int index = 0;
		double[] temp = new double[score.length];

		for (int i = 0; i < score.length; i++) {
			temp[i] = ((score[i][0]) + score[i][1]) / 2.0;
		}

		for (int i = 0; i < score.length; i++) {

			int rank = score.length;
			for (int j = 0; j < score.length; j++) {
				if (i == j) {
					continue;
				}

				if (temp[i] >= temp[j]) {

					rank--;
				}

			}
			answer[index] = rank;
			index++;

		}
		return answer;
	}
}