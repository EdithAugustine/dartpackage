import 'dart:io';

// Interface definition
abstract class Animal {
  void makeSound();
}

// Parent class
class Mammal {
  void eat() {
    print('Mammal is eating');
  }
}

// Child class inheriting from Mammal and implementing Animal interface
class Dog extends Mammal implements Animal {
  @override
  void makeSound() {
    print('Woof woof!');
  }

  // Method overriding
  @override
  void eat() {
    print('Dog is eating');
  }
}

void main() {
  // Creating an instance of Dog
  Dog dog = Dog();

  // Using overridden method
  dog.eat();

  // Using method from interface
  dog.makeSound();

  // Initializing data from a file
  File file = File('data.txt');
  List<String> lines = file.readAsLinesSync();

  // Printing lines from the file
  print('Data from file:');
  for (String line in lines) {
    print(line);
  }
}
