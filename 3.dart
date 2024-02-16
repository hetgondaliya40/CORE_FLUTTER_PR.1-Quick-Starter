/*Write a Dart program to Insert, Delete, Update and View operations on the elements in an array using menu-driven programming approach.
[Dhosa, Idli, Bhajipau, Pizza]

Menu:
1. Add Food
2. Update Food
3. Delete Food
4. View Foods
5. Exit
Enter your choice: 1


Enter the food to add: dhh
dhh added.
[Dhosa, Idli, Bhajipau, Pizza, dhh]

Menu:
1. Add Food
2. Update Food
3. Delete Food
4. View Foods
5. Exit
Enter your choice: 5


Exiting the program.

1 */
import 'dart:io';

void main() {
  List<String> food = ['Dhosa', 'Idli', 'Bhajipau', 'Pizza'];

  while (true) {
    print("$food\n");
    print("Menu:");
    print("1. Add Food");
    print("2. Update Food");
    print("3. Delete Food");
    print("4. View Foods");
    print("5. Exit");

    stdout.write("Enter your choice: ");
    int choice = int.parse(stdin.readLineSync()!);
    print("\n");

    switch (choice) {
      case 1:
        stdout.write("Enter the food to add: ");
        String newFood = stdin.readLineSync()!;
        food.add(newFood);
        print("$newFood added.");
        break;

      case 2:
        stdout.write("Enter the index of the food to update: ");
        int index = int.parse(stdin.readLineSync()!);
        if (index >= 0 && index < food.length) {
          stdout.write("Enter the updated food: ");
          String updatedFood = stdin.readLineSync()!;
          food[index] = updatedFood;
          print("Food updated.");
        } else {
          print("Invalid index.");
        }
        break;

      case 3:
        stdout.write("Enter the index of the food to delete: ");
        int deleteIndex = int.parse(stdin.readLineSync()!);
        if (deleteIndex >= 0 && deleteIndex < food.length) {
          String deletedFood = food.removeAt(deleteIndex);
          print("$deletedFood deleted.");
        } else {
          print("Invalid index.");
        }
        break;

      case 4:
        print("Food List:");
        for (int i = 0; i < food.length; i++) {
          print("Food $i: ${food[i]}");
        }
        break;

      case 5:
        print("Exiting the program.");
        return;

      default:
        print("Invalid choice. Please select a valid option.");
    }
  }
}
