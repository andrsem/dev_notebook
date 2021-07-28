void main() {
  final fixedLengthList = List<int>.filled(6, 0);
  fixedLengthList[0] = 34;
  fixedLengthList[1] = 20;
  fixedLengthList[2] = 59;
  fixedLengthList[3] = 7;
  fixedLengthList[4] = -34;
  fixedLengthList[5] = 90;

  int index = -1;
  // linear time complexity O(n)
  for (var i = 0; i < fixedLengthList.length; i++) {
    if (fixedLengthList[i] == 7) {
      index = i;
      break;
    }
  }
  print('index = $index');
}
