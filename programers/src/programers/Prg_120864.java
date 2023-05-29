package algorithm.study.pureun.programmers;

/**
 * 프로그래머스 - 숨어있는 숫자의 덧셈(2)
 *
 * @link https://school.programmers.co.kr/learn/courses/30/lessons/120864
 */
public class Prg_120864 {

	public static void main(String[] args) {
		Prg_120864 sol = new Prg_120864();
		int ans = sol.solution("aAb1B2cC34oOp");
		System.out.println(ans);

	}

	public int solution(String my_string) {
		int answer = 0;
		int i = 0;
		int j = 0;
		while (i < my_string.length()) {
			if (Character.isDigit(my_string.charAt(i))) {
				String num = "";
				num += my_string.charAt(i);
				j = i + 1;
				while (j < my_string.length()) {
					if (Character.isDigit(my_string.charAt(j))) {
						num += my_string.charAt(j);
						j++;
					} else {
						break;
					}
				}
				i = j + 1;
				answer += Integer.parseInt(num);
			} else {
				i++;
			}
		}
		return answer;
	}
	// Character.isDigit(my_string.charAt(i))숫자인지 체크하는 메소드인듯?
	// 이중for문과 유사하다. 즉 첫번째 인덱스로 숫자를 체크하고 숫자가 맞다면 그옆에 숫자까지 체크해서
	// String에 추가하는식 이후 끝나고나면 저장된 String을 숫자로변환해서 저장하면된다.
	// 문자열이기에 옆으로 붙여주면 자연수가 되니까 이런식으로 가능함 숫자 더하기와 다른식이 가능

}
