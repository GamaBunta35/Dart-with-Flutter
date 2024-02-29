void main() {
  // Example of int data type
  int age = 25;
  print('Age: $age');

  // Example of double data type
  double height = 5.9;
  print('Height: $height feet');

  // Example of String data type
  String name = 'John Doe';
  print('Name: $name');

  // Example of List data type (dynamic array)
  List<String> fruits = ['Apple', 'Banana', 'Orange'];
  print('Fruits: $fruits');

  // Example of Map data type (key-value pairs)
  Map<String, dynamic> person = {
    'name': 'Alice',
    'age': 30,
    'isStudent': false,
  };
  print('Person: $person');

  // Testing for accuracy
  assert(age is int);
  assert(height is double);
  assert(name is String);
  assert(fruits is List<String>);
  assert(person is Map<String, dynamic>);
}
