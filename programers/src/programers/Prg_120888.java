package algorithm.study.pureun.programmers;

import java.util.LinkedList;

/**
 * 프로그래머스 - 중복된 문자 제거
 *
 * @link https://school.programmers.co.kr/learn/courses/30/lessons/120888
 */
public class Prg_120888 {

	public static void main(String[] args) {
		Prg_120888 sol = new Prg_120888();
		String ans = sol.solution("people");
		System.out.println(ans);

	}
	
	public String solution(String my_string) {
        String answer = "";
        
        //char 형태의 리스트
        char[] ch = my_string.toCharArray();
        LinkedList<Character> list = new LinkedList<Character>();
        
        //리스트의 순서대로 저장
        for(int i = 0; i <ch.length; i++) {
        	list.add(ch[i]);
        }
        
        for(int i = list.size(); i > 0; i--) {
        	for(int j = list.size(); j > 0 ; j-- ) {
        		if(list.get(i).equals(list.get(j))) {
        		list.remove(list.get(j));	
        		}
        	}
        }
        
        

      
        
        return answer;
    }

}
