extension IntExtension on int {

  int divisibleNumbersCount() {
    int divisibleNumbersCount = 0;
    for (int i = 1; i < this; i++) {
      if (this % i == 0) {
        divisibleNumbersCount++;
      }
    }
    return divisibleNumbersCount;
  }

}