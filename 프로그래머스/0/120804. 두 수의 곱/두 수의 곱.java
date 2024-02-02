class Solution {
    public int solution(int num1, int num2) {
        int answer = 0;
        
        boolean result1 = 0 <= num1 && num1 <= 100;
        boolean result2 = 0 <= num2 && num2 <= 100;
        
        if (result1 && result2) {
            answer = num1 * num2;
        }
        
        return answer;
    }
}