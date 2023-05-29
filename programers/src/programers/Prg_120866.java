package algorithm.study.pureun.programmers;

import java.util.Arrays;

/**
 * 프로그래머스 - 안전지대
 *
 * @link https://school.programmers.co.kr/learn/courses/30/lessons/120866
 */
public class Prg_120866 {

	public static void main(String[] args) {
		Prg_120866 sol = new Prg_120866();
		int[][] boom = { { 0, 0, 0, 0, 0 }, 
				         { 0, 0, 0, 0, 0 }, 
				         { 0, 0, 0, 0, 0 }, 
				         { 0, 0, 1, 1, 0 },
				         { 0, 0, 0, 0, 0 } };
		int ans = sol.solution(boom);
		System.out.println(ans);

	}

	public int solution(int[][] board) {
		int[][] boomBoard = new int[board.length][board[0].length];
		for (int i = 0; i < board.length; i++) {
			for (int j = 0; j < board[i].length; j++) {
				if (board[i][j] == 1)
					checkExplosion(i, j, boomBoard);
			}
		}

		int count = 0;
		for (int[] array : boomBoard) {
			for (int value : array) {
				if (value == 0)
					count++;
			}
		}
		return count;
	}

	static void checkExplosion(int x, int y, int[][] boomBoard) {
		// 좌표값0
		int explosionX;
		int explosionY;
		int[] aroundX = { 0, -1, -1, -1, 0, 0, 1, 1, 1 };
		int[] aroundY = { 0, -1, 0, 1, -1, 1, -1, 0, 1 };
		for (int i = 0; i < 9; i++) {
			explosionX = x + aroundX[i];
			explosionY = y + aroundY[i];
			if (explosionX < boomBoard.length && explosionY < boomBoard.length)
				if (explosionX >= 0 && explosionY >= 0)
					boomBoard[explosionX][explosionY] = 1;
		}
	}
	
	
	/* 처음 내가 제출한 것 예외처리를 못함
	 * 
	 * public int solution(int[][] board) {
        int answer = 0;
        
        //============================
        int[][] target = new int[board.length*board.length][2];
        int bCnt = 0;
        int index = 0;
        for(int i =0; i < board.length; i++) {
        	for(int j = 0; j < board.length; j++) {
        		if(board[i][j] == 1) {
        			target[index][0] = i;
        			target[index][1] = j;
        			index++;
        		}
        	}
        }
       
        //===============================
        for(int j = 0; j < index; j++) {
       
        	board[target[j][0]-1][target[j][1]] = 1;
        	board[target[j][0]-1][target[j][1]-1] = 1;
        	board[target[j][0]-1][target[j][1]+1] = 1;
        	
        	board[target[j][0]][target[j][1]] = 1;
        	board[target[j][0]][target[j][1]-1] = 1;
        	board[target[j][0]][target[j][1]+1] = 1;
        	
        	board[target[j][0]+1][target[j][1]] = 1;
        	board[target[j][0]+1][target[j][1]-1] = 1;
        	board[target[j][0]+1][target[j][1]+1] = 1;
        
        }
        
        //===============================
        
        for(int i =0; i < board.length; i++) {
        	for(int j = 0; j < board.length; j++) {
        		if(board[i][j] == 1) {
        			
        			bCnt++;
        		}
        	}
        }
        System.out.println(Arrays.toString(board[4]));
        return answer = (board.length*board.length)-bCnt ;
    }
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 * */

}
