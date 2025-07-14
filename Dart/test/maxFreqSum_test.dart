import 'package:test/test.dart';
import 'package:leetcode/maxFreqSum.dart';

void main() {
  group('maxFreqSum', () {
    late Solution solution;

    setUp(() {
      solution = Solution();
    });

    test('should return sum of max vowel and non-vowel frequencies', () {
      // hello: vowels e(1), o(1) -> max=1; non-vowels h(1), l(2) -> max=2; sum=3
      expect(solution.maxFreqSum('hello'), 3);
    });

    test('should handle string with repeated vowels', () {
      // aeiou: vowels a(1), e(1), i(1), o(1), u(1) -> max=1; no non-vowels -> max=0; sum=1
      expect(solution.maxFreqSum('aeiou'), 1);
    });

    test('should handle string with repeated consonants', () {
      // bcdfg: no vowels -> max=0; non-vowels all freq=1 -> max=1; sum=1
      expect(solution.maxFreqSum('bcdfg'), 1);
    });

    test('should handle mixed case letters', () {
      // Hello: vowels e(1), o(1) -> max=1; non-vowels H(1), l(2) -> max=2; sum=3
      expect(solution.maxFreqSum('Hello'), 3);
    });

    test('should handle complex example', () {
      // programming: vowels o(1), a(1), i(1) -> max=1; non-vowels p(1), r(2), g(2), m(2), n(1) -> max=2; sum=3
      expect(solution.maxFreqSum('programming'), 3);
    });

    test('should handle repeated characters', () {
      // aaabbb: vowels a(3) -> max=3; non-vowels b(3) -> max=3; sum=6
      expect(solution.maxFreqSum('aaabbb'), 6);
    });

    test('should handle "successes" example', () {
      // successes: vowels u(1), e(3) -> max=3; non-vowels s(4), c(2) -> max=4; sum=7
      expect(solution.maxFreqSum('successes'), 6);
    });

    test('should handle "aeiaeia" example', () {
      // aeiaeia: vowels a(3), e(2), i(2) -> max=3; no non-vowels -> max=0; sum=3
      expect(solution.maxFreqSum('aeiaeia'), 3);
    });
  });
}
