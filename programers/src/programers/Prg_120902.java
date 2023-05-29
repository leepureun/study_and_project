package algorithm.study.pureun.programmers;

/**
 * 프로그래머스 - 문자열 계산하기
 *
 * @link https://school.programmers.co.kr/learn/courses/30/lessons/120902
 */
public class Prg_120902 {

	public static void main(String[] args) {
		Prg_120902 sol = new Prg_120902();
		int ans = sol.solution("3 + 4");
		System.out.println(ans);

	}

	public int solution(String my_string) {
		int answer = 0;

		String[] temp = my_string.split(" ");

		answer = Integer.parseInt(temp[0]);

		for (int i = 1; i < temp.length; i++) {
			if (temp[i].charAt(0) == 43) {
				answer += Integer.parseInt(temp[i + 1]);
				i++;
			} else if (temp[i].charAt(0) == 45) {
				answer -= Integer.parseInt(temp[i + 1]);
				i++;
			}
		}

		return answer;
	}

}
