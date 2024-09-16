double toMathExpression(String str) {
  // print(str);
  var splitted = str.split(RegExp(r'[+\-/*]'));
  var operators = [];
  for (int i = 0; i < str.length; ++i) {
    if (str[i] == "+" || str[i] == "-" || str[i] == "/" || str[i] == "*") {
      operators.add(str[i]);
    }
  }
  var result = 0.0;
  for (int i = 0; i < operators.length; ++i) {
    if (operators[i] == '/') {
      result = double.parse(splitted[i]) / double.parse(splitted[i + 1]);
      operators.remove(operators[i]);
      splitted.removeRange(i, i + 2);
      splitted.insert(i, result.toString());
      i--;
    } else if (operators[i] == '*') {
      result = double.parse(splitted[i]) * double.parse(splitted[i + 1]);
      operators.remove(operators[i]);
      splitted.removeRange(i, i + 2);
      splitted.insert(i, result.toString());
      i--;
    }
  }
  for (int i = 0; i < operators.length; ++i) {
    if (operators[i] == '+') {
      result = double.parse(splitted[i]) + double.parse(splitted[i + 1]);
      operators.remove(operators[i]);
      splitted.removeRange(i, i + 2);
      splitted.insert(i, result.toString());
      i--;
    } else if (operators[i] == '-') {
      result = double.parse(splitted[i]) - double.parse(splitted[i + 1]);
      operators.remove(operators[i]);
      splitted.removeRange(i, i + 2);
      splitted.insert(i, result.toString());
      i--;
    }
  }
  return double.parse(splitted[0]);
}
