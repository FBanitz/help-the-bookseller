String toHaskell(Map<String, int> input) {
  List<String> output = [];

  for (var key in input.keys) {
    final int? value = input[key];
    if (value == null) {
      throw Exception('value for the key "$key" is null');
    }

    output.add('($key : $value)');
  }
  return output.join(' - ');
}
