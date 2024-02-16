/*Write a Dart program to to print all negative elements in an array.

ENTER ANY NUMBER
2
NUMBER IS POSITIVE

 */
import 'dart:io';

void main() {
  int n;

  print("ENTER ANY NUMBER");
  n = int.parse(stdin.readLineSync()!);

  if (n > 0) {
    print("NUMBER IS POSITIVE");
  } else {
    print("NUMBER IS NAGATIVE");
  }
}
