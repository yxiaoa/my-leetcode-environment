namespace Solution
{
    public partial class Solution
    {
        public int MinMoves(int[] nums)
        {
            int max = 0;
	    foreach (var num in nums)
	    {
	        if (num > max) max = num;
	    }
            int sum = 0;
	    foreach (var num in nums)
	    {
	        sum += max - num;
	    }
            return sum;
        }
    }
}
