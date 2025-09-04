export function recoverOrder(order: number[], friends: number[]): number[] {
	return order.filter(num => friends.includes(num));
};
