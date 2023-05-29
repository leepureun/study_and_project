package algorithm.study.pureun.programmers;

import java.util.Arrays;

/**
 * 프로그래머스 - A로 B만들기
 *
 * @link https://school.programmers.co.kr/learn/courses/30/lessons/120886
 */
public class Prg_120886 {

	public static void main(String[] args) {
		Prg_120886 sol = new Prg_120886();
		int ans = sol.solution("olleh", "hello");
		System.out.println(ans);

	}

	public int solution(String before, String after) {
		int answer = 0;
		char[] beforeC = before.toCharArray();
		char[] afterC = after.toCharArray();

		Arrays.sort(beforeC);
		Arrays.sort(afterC);

		String beS = new String(beforeC);
		String afS = new String(afterC);

		if (beS.equals(afS)) {
			return 1;
		} else
			return 0;
	}

	//같은 문장이라면 어떠한 형태라도 결과 값이 같을테니 비교하기 쉽게 정렬을 해서 비교한다.
	//처음에 생각한 종복된 글자의 갯수는 예외처리가 너무 복잡했음
	//보통 다른사람들도 문자열자체에서 지우는 것으로 문제를 해결함
}
