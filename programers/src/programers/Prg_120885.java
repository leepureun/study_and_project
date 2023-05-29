package algorithm.study.pureun.programmers;

import java.util.Arrays;

/**
 * 프로그래머스 - 이진수 더하기
 *
 * @link https://school.programmers.co.kr/learn/courses/30/lessons/120885
 */
public class Prg_120885 {

	public static void main(String[] args) {
		Prg_120885 sol = new Prg_120885();
		String ans = sol.solution("10", "11");
		System.out.println(ans);

	}

	public String solution(String bin1, String bin2) {
		String answer = "";
		int num1 = Integer.parseInt(bin1, 2);
		int num2 = Integer.parseInt(bin2, 2);
		int res = num1 + num2;
		answer = Integer.toBinaryString(res);
		return answer;
	}
	// 이진수 변환을 어떻게든 직접해보려했으나 실패해서 답안지를 봄
	// 코드 자체로 변환을 지원해주는 듯

}
