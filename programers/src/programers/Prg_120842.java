package algorithm.study.pureun.programmers;

import java.util.Arrays;

/**
 * 프로그래머스 - 2차원으로 만들기
 *
 * @link https://school.programmers.co.kr/learn/courses/30/lessons/120842
 */
public class Prg_120842 {

	public static void main(String[] args) {
		Prg_120842 sol = new Prg_120842();
		int[] num = new int[] { 1, 2, 3, 4, 5, 6, 7, 8 };
		int[][] ans = sol.solution(num, 2);
		System.out.println(Arrays.toString(ans));

	}

	public int[][] solution(int[] num_list, int n) {
		int[][] answer = new int[num_list.length / n][n];
		int cnt = 0;

		for (int i = 0; i < num_list.length / n; i++) {
			for (int j = 0; j < n; j++) {
				answer[i][j] = num_list[cnt];
				cnt++;
			}
		}
		return answer;
	}
	//목차를 밖으로 뺴서 사용하는 것은 확실히 익숙해진듯 

}
