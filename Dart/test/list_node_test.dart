import 'package:test/test.dart';
import '../lib/ListNode.dart';

void main() {
  group('ListNode', () {
    test('toArray should convert a linked list to an array', () {
      // Arrange
      ListNode node3 = ListNode(3);
      ListNode node2 = ListNode(2, node3);
      ListNode head = ListNode(1, node2);

      // Act
      List result = head.toArray(head);

      // Assert
      expect(result, [1, 2, 3]);
    });

    test('fromArray should convert an array to a linked list', () {
      // Arrange
      List input = [1, 2, 3];

      // Act
      ListNode head = ListNode().fromArray(input);

      // Assert
      expect(head.val, 1);
      expect(head.next!.val, 2);
      expect(head.next!.next!.val, 3);
      expect(head.next!.next!.next, isNull);
    });

    test('fromArray and toArray should work together', () {
      // Arrange
      List input = [4, 5, 6];

      // Act
      ListNode head = ListNode().fromArray(input);
      List result = head.toArray(head);

      // Assert
      expect(result, input);
    });
  });
}
