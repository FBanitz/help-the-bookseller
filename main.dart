import 'haskell.dart';
import 'string_extension.dart';

String stockSummary(List<String> lstOfArt, List<String> lstOf1stLetter) {
  if (lstOfArt.isEmpty || lstOf1stLetter.isEmpty) {
    return "";
  }

  final Set<String> setOf1stLetter = lstOf1stLetter.toSet();

  Map<String, int> output = {};

  for (String categoryCode in setOf1stLetter) {
    output[categoryCode] = 0;
    for (String art in lstOfArt.where(
      (element) => element.categoryCode == categoryCode,
    )) {
      output[categoryCode] = output[categoryCode]! + art.quantity!;
    }
  }

  return toHaskell(output);
}
