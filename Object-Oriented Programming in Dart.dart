import 'dart:io';

abstract class Shape {
  double area();
}

class Circle implements Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }
}

class Square extends Rectangle {
  Square(double side) : super(side, side);
}

class FileShape implements Shape {
  final String filePath;

  FileShape(this.filePath);

  @override
  double area() {
    try {
      final file = File(filePath);
      final lines = file.readAsLinesSync();
      final radius = double.parse(lines[0]);
      return Circle(radius).area();
    } catch (e) {
      print('Error reading file: $e');
      return 0;
    }
  }
}

void main() {
  final shapes = [
    Circle(5),
    Rectangle(4, 6),
    Square(3),
    FileShape('shape_data.txt'),
  ];

  for (final shape in shapes) {
    print('Area of shape: ${shape.area()}');
  }
}
