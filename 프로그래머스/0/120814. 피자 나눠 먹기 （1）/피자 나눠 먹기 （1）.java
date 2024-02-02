class Solution {
    public int solution(int n) {
        boolean bl = 1 <= n && n <= 100;
        int answer = 0;
        
        if (bl) {
            answer = (int) Math.ceil((double)n / 7);
        }
        
        return answer;
    }
}