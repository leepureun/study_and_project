package algorithm.study.pureun.programmers;

import java.util.Arrays;
import java.util.HashSet;

/**
 * 프로그래머스 - 소인수분해
 *
 * @link https://school.programmers.co.kr/learn/courses/30/lessons/120852
 */
public class Prg_120852 {

	public static void main(String[] args) {
		Prg_120852 sol = new Prg_120852();
		int[] ans = sol.solution(10000);
		System.out.println(Arrays.toString(ans));

	}

	public int[] solution(int n) {

		HashSet<Integer> set = new HashSet<Integer>();

		int num = n;

		for (int i = 2; i <= n; i++) {

			if (n % i == 0) {
				n = n / i;

				if (i == num) {
					set.add(num);
				}

				else if ((i != 2 && i % 2 != 0) || (i != 3 && i % 3 != 0)) {

					set.add(i);
					i = 1;
				}
			}
		}

		int[] answer = new int[set.size()];

		int j = 0;
		for (int i : set) {
			answer[j] = i;

			j++;
		}

		Arrays.sort(answer); // 오름차순

		return answer;
	}

}
