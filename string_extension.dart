extension HelpTheBookSeller on String {
  String get categoryCode => split('').first;
  int? get quantity => int.tryParse(split(' ')[1]);
}
