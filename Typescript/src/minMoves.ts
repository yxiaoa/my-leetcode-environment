export function minMoves(nums: number[]): number {
    let max = Math.max(...nums);
    let moves = 0;
    for (let num of nums) {
        moves += max - num;
    }
    return moves;
};
