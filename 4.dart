void main() {
  List a = [
    [1, 2, 3],
    [6, 7, 8],
    [9, 10, 11]
  ];
  List b = [
    [12, 13, 14],
    [15, 16, 17],
    [18, 19, 20]
  ];
  List sum = [
    [0, 0, 0],
    [0, 0, 0],
    [0, 0, 0]
  ];

  int i, j;
  for (i = 0; i < 3; i++) {
    for (j = 0; j < 3; j++) {
      sum[i][j] = a[i][j] + b[i][j];
    }
    print("$sum");
  }
}
