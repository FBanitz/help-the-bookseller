import 'package:test/test.dart';

import '../haskell.dart';

void main() {
  group('toHaskell() - ', () {
    test('transform', () {
      final String actual = toHaskell({
        'F': 56,
        'S': 23,
        'P': 16,
        'A': 52,
        'M': 85,
      });
      final String matcher =
          '(F : 56) - (S : 23) - (P : 16) - (A : 52) - (M : 85)';
      expect(actual, matcher);
    });
  });
}
