
import 'dart:math';

void main() {
  Product computer = Product('lenovo', 12000, 15);
  print(computer.getTotal(12000, 15));
}

// Создайте класс "Круг" (Circle), у которого есть свойства радиус и цвет. Реализуйте методы для получения этих свойств.
class Circle {
  String radius;
  String colour;
  Circle(this.radius, this.colour);
  void getRadius() {
    print('$radius');
  }

  void getColour() {
    print('$colour');
  }
}

// Создайте класс "Студент" (Student), у которого есть свойства имя, возраст и средний балл. Реализуйте методы для получения  этих свойств.

class Student {
  String name;
  int age;
  List ball;
  Student(this.name, this.age, this.ball);
  void getName() {
    print('$name');
  }

  void getAge() {
    print('$age');
  }

  void getBall() {
    int count = 0;
    for (int i = 0; i < ball.length; i++) {
      ball[i] += count;
    }
    print('$count');
  }
}

// Создайте класс "Автомобиль" (Car), у которого есть свойства марка, модель и год выпуска. Реализуйте методы для получения  этих свойств.

class Car {
  String marka;
  String model;
  int year;
  Car(this.marka, this.model, this.year);
  void getMark() {
    print('$marka');
  }

  void getModel() {
    print('$model');
  }

  void getYear() {
    print('$year');
  }
}

// Создайте класс "Книга" (Book), у которого есть свойства название, автор и год издания. Реализуйте методы для получения этих свойств.

class Book {
  String name;
  String author;
  int year;
  Book(this.name, this.author, this.year);
  void getName() {
    print('$name');
  }

  void getAuthor() {
    print('$author');
  }

  void getYear() {
    print('$year');
  }
}

// Создайте класс "Прямоугольник" (Rectangle), у которого есть свойства ширина и высота. Реализуйте методы для получения  этих свойств, а также методы для вычисления площади и периметра.

class Rectangle {
  double shirina;
  double height;
  Rectangle(this.height, this.shirina);
  double getPer(double shirina, double height) {
    double per = 2 * shirina + 2 * height;
    return per;
  }

  double getPl(double shirina, double height) {
    double pl = shirina * height;
    return pl;
  }
}

// Создайте класс "Банковский счет" (BankAccount), у которого есть свойства номер счета, баланс и владелец. Реализуйте методы для получения этих свойств, а также методы для внесения и снятия денег.

class BankAccount {
  int chset;
  int balance;
  String owner;
  BankAccount(this.owner, this.balance, this.chset);
  int getChset(int chset) {
    return chset;
  }

  int getBalance(int balance) {
    return balance;
  }

  String getOwner(String owner) {
    return owner;
  }

  void getIn() {
    print('Сколько денег вы хотите внести?');
  }

  void getOut() {
    print('Сколько денег вы хотите снять?');
  }
}

// Создайте класс "Товар" (Product), у которого есть свойства название, цена и количество. Реализуйте методы для получения этих свойств, а также метод для вычисления общей стоимости товара (умножение цены на количество).

class Product {
  String name;
  int cost;
  int quantity;
  Product(this.name, this.cost, this.quantity);

  int getTotal(int cost, int quantity) {
    int c = cost * quantity;
    return c;
  }

  void getName() {
    print('$name');
  }

  void getCost() {
    print('$cost');
  }

  void getQuan() {
    print('$quantity');
  }
}

// Создайте класс "Сотрудник" (Employee), у которого есть свойства имя, должность и зарплата. Реализуйте методы для получения этих свойств, а также метод для увеличения зарплаты на определенный процент.

class Employee {
  String name;
  String title;
  int salary;
  Employee(this.name, this.title, this.salary);
}

// Создайте класс "Треугольник" (Triangle), у которого есть свойства длина сторон. Реализуйте методы для получения этих свойств, а также метод для вычисления площади треугольника по формуле Герона.

class Triangle {
  double a;
  double b;
  double c;

  Triangle(this.a, this.b, this.c);

  double sideA() {
    return a;
  }

  double sideB() {
    return b;
  }

  double sideC() {
    return c;
  }

  double area() {
    double s = (a + b + c) / 2;
    return sqrt(s * (s - a) * (s - b) * (s - c));
  }
}
// Создайте класс Автомобиль с полями марка и год. Затем создайте дочерний класс ЛегковойАвтомобиль, который наследует Автомобиль и переопределяет метод описание() для возвращения описания легкового автомобиля.

class Car1 {
  String brand;
  int year;

  Car1(this.brand, this.year);

  void description() {
    print("Brand: $brand, Year: $year");
  }
}

class PassengerCar extends Car1 {
  PassengerCar(super.brand, super.year);

  @override
  void description() {
    print("Passenger Car - Brand: $brand, Year: $year");
  }
}

// Создайте класс Фрукт с полем название. Затем создайте класс Яблоко, который наследует Фрукт и переопределяет метод вкус() для возвращения описания вкуса яблока.

class Fruit {
  String name;
  Fruit(this.name);

  String taste() {
    return "Taste of the fruit.";
  }
}

class Apple extends Fruit {
  Apple(super.name);

  @override
  String taste() {
    return "Apples are sweet and crisp.";
  }
}

// Создайте класс Животное с полями имя и возраст. Затем создайте класс Собака, который наследует Животное и переопределяет метод голос() для возвращения звука, который издает собака.

class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  void sound() {
    print("Some sound");
  }
}

class Dog extends Animal {
  Dog(super.name, super.age);

  @override
  void sound() {
    print("Woof! Woof!");
  }
}

// Создайте класс Товар с полями название и цена. Затем создайте класс Продукт, который наследует Товар и переопределяет метод описание() для возвращения описания продукта.

class Produc1t {
  String name;
  double price;

  Produc1t(this.name, this.price);

  void description() {
    print("Name: $name, Price: $price");
  }
}

class FoodProduct extends Produc1t {
  FoodProduct(super.name, super.price);

  @override
  void description() {
    print("Food Product - Name: $name, Price: $price");
  }
}

// Создайте класс Фигура с полями цвет и площадь. Затем создайте класс Круг, который наследует Фигура и переопределяет метод площадь() для вычисления площади круга.

class Shape {
  String color;

  Shape(this.color);
  double area() {
    return 0.0;
  }
}

class Circle1 extends Shape {
  double radius;

  Circle1(super.color, this.radius);

  @override
  double area() {
    return pi * radius * radius;
  }
}

// Создайте класс Сотрудник с полями имя и зарплата. Затем создайте класс Менеджер, который наследует Сотрудник и переопределяет метод вывестиИнформацию() для вывода информации о менеджере.

class Employee1 {
  String name;
  double salary;

  Employee1(this.name, this.salary);

  void displayInfo() {
    print("Name: $name, Salary: $salary");
  }
}

class Manager extends Employee1 {
  Manager(super.name, super.salary);

  @override
  void displayInfo() {
    print("Manager - Name: $name, Salary: $salary");
  }
}

// Создайте класс Здание с полем адрес. Затем создайте класс Дом, который наследует Здание и переопределяет метод типЗдания() для указания, что это дом.

class Build {
  String adress;
  String type;
  Build(this.adress, this.type);
  String typeOfBuild(String type) {
    return type;
  }
}

class Home extends Build {
  Home(super.adress, super.type);
  String typeOfBuild(String type) {
    return type;
  }
}

// Создайте класс Овощ с полем название. Затем создайте класс Морковь, который наследует Овощ и переопределяет метод цвет() для возвращения цвета моркови.

class Vegetables {
  String name;
  String colour;
  Vegetables(this.name, this.colour);
  String getColour(String color) {
    return color;
  }
}

class Morkov extends Vegetables {
  Morkov(super.name, super.colour);
  String getColour(String color) {
    return color;
  }
}

// Создайте класс МузыкальныйИнструмент с полем название. Затем создайте класс Гитара, который наследует МузыкальныйИнструмент и переопределяет метод звук() для воспроизведения звука гитары.

class MusicalInstrumental {
  String name;
  MusicalInstrumental(this.name);
  void getMusic() {
    print('Музыка музыкального инструмента');
  }
}

class Guitar extends MusicalInstrumental {
  Guitar(super.name);
  @override
  void getMusic() {
    print('Тру тру');
  }
}

// Создайте класс Организм с полем имя. Затем создайте класс Человек, который наследует Организм и переопределяет метод приветствие() для приветствия человека и вывода его имени и возраста.
class Organism {
  String name;
  int age;
  Organism(this.name, this.age);
  String greetings() {
    String hello = 'hello';
    return hello;
  }
}

class Human extends Organism {
  Human(super.name, super.age);
  @override
  String greetings() {
    String helloDeutch = 'hallo';
    return helloDeutch;
  }
}
