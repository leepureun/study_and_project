package algorithm.study.pureun.programmers;

/**
 * 프로그래머스 - 외계어 사전
 *
 * @link https://school.programmers.co.kr/learn/courses/30/lessons/120869
 */
public class Prg_120869 {

	public static void main(String[] args) {
		Prg_120869 sol = new Prg_120869();
		String[] t1 = { "z", "d", "x" };
		String[] t2 = { "moos", "zdx", "smm", "sunmmo", "som" };
		int ans = sol.solution(t1, t2);
		System.out.println(ans);

	}

	public int solution(String[] spell, String[] dic) {
		int answer = 0;
		int cnt = 0;

		for (int i = 0; i < dic.length; i++) {
			cnt = 0;

			for (int j = 0; j < spell.length; j++) {
				if (dic[i].equals("")) {
					continue;
				}
				String temp = dic[i];
				dic[i] = dic[i].replace(spell[j], "");
				if (temp.equals(dic[i])) {
					continue;
				}
				cnt++;
				temp = dic[i].replace(spell[j], "");
				if (dic[i].equals("") && cnt == spell.length) {
					return answer = 1;

				} else {
					answer = 2;
				}
			}
		}

		return answer;
	}

}
