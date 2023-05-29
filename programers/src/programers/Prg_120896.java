package algorithm.study.pureun.programmers;

/**
 * 프로그래머스 - 한 번만 등장한 문자
 *
 * @link https://school.programmers.co.kr/learn/courses/30/lessons/120896
 */
public class Prg_120896 {

	public static void main(String[] args) {
		Prg_120896 sol = new Prg_120896();
		String ans = sol.solution("hheelloo");
		System.out.println(ans);

	}

	public String solution(String s) {
		String answer = "";
		int[] arr = new int[26];
		for (int i = 0; i < 26; i++) {
			arr[i] = 0;
		}
		for (int i = 0; i < s.length(); i++) {
			arr[s.charAt(i) - 97] += 1;
		}
		for (int i = 0; i < 26; i++) {
			if (arr[i] == 1) {
				answer += (char) (i + 97);
			}
		}
		return answer;
	}

	/* 위는 유니코드를 이용해서 인덱스로 적용 이를 이용해서 그자리를 char값으로 바꾸면 그문자 자체가되게함
	 * 
	 * 내풀이는 테스트코드는 통과되나 다른걸 풀수가 없음 원인알 수 없음
	 * String answer = "";

		char[] sample = s.toCharArray();
		char[] tg = new char[1000];
		int index2 = 0;

		for (int i = 0; i < sample.length; i++) {
			char[] temp = new char[1000];
			int index = 0;
			for (int j = 0; j < sample.length; j++) {
				if (sample[i] == sample[j]) {
					temp[index] = sample[i];
					index++;
				}
			}

			if (temp[0] != temp[1]) {
				tg[index2] = temp[0];
				index2++;
			}
		}

		int index3 = 0;
		for (int i = 0; i < tg.length; i++) {
			if (tg[i] != 0) {
				index3++;
			}
		}

		char[] ans = new char[index3];
		for (int i = 0; i < ans.length; i++) {
			ans[i] = tg[i];
		}
		
		for(int i = 0; i <ans.length-1; i++) {
			if(ans[i] > ans[i+1]) {
				char temp = 0;
				temp = ans[i];
				ans[i] = ans[i+1];
				ans[i+1] = temp;
			}
		}

		answer = String.valueOf(ans);

		return answer;
	 */
}
