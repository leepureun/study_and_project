package algorithm.study.pureun.programmers;

/**
 * 프로그래머스 - 가까운 수
 *
 * @link https://school.programmers.co.kr/learn/courses/30/lessons/120890
 */
public class Prg_120890 {

	public static void main(String[] args) {
		Prg_120890 sol = new Prg_120890();
		int[] num = new int[] { 2, 2, 3 };
		int ans = sol.solution(num, 1);
		System.out.println(ans);

	}

	public int solution(int[] array, int n) {
		int answer = 0;
		int num1 = 0;
		int num2 = 0;
		label1: for (int i = 1; i < 100; i++) {
			for (int j = 0; j < array.length; j++) {
				if (n + i == array[j]) {
					num1 = array[j];

					break label1;

				} else if (n == array[j]) {
					return answer = array[j];

				}
			}
		}

		label: for (int i = 1; i < 100; i++) {
			for (int j = 0; j < array.length; j++) {
				if (n - i == array[j]) {
					num2 = array[j];
					break label;
				} else if (n == array[j]) {
					return answer = array[j];

				}
			}
		}
		if (num1 == 0) {
			return answer = num2;
		} else if (num2 == 0) {
			return answer = num1;
		}

		if (num1 - n < n - num2) {
			answer = num1;
		} else {
			answer = num2;
		}

		return answer;
	}
	//보통 정렬 후에 Math.abs?메소드를 사용함

}
