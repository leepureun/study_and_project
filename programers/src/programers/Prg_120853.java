package algorithm.study.pureun.programmers;

/**
 * 프로그래머스 - 컨트롤 제트
 *
 * @link https://school.programmers.co.kr/learn/courses/30/lessons/120853
 */
public class Prg_120853 {

	public static void main(String[] args) {
		Prg_120853 sol = new Prg_120853();
		int ans = sol.solution("10 Z 20 Z 1");
		System.out.println(ans);

	}

	public int solution(String s) {
		int answer = 0;

		String[] temp = s.split(" ");

		for (int i = 0; i < temp.length; i++) {
			if (temp[i].charAt(0) == 90) {
				answer -= Integer.parseInt(temp[i - 1]);
				continue;
			}

			answer += Integer.parseInt(temp[i]);
		}
		return answer;
	}

}
