import 'package:test/test.dart';

import '../string_extension.dart';

void main() {
  group('HelpTheBookSeller extension - ', () {
    test('categoryCode', () {
      final String actual = "AHBKD 26".categoryCode;
      final String matcher = 'A';
      expect(actual, matcher);
    });
    test('quantity()', () {
      final int? actual = "AHBKD 26".quantity;
      expect(actual.runtimeType, int);
      final int matcher = 26;
      expect(actual, matcher);
    });
  });
}
