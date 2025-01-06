import 'dart:io';

double calculateArea(String ? shape, List<double>dimensions)
{
  switch (shape) {
    case 'circle':
    return 3.14 * dimensions[0] * dimensions[0];
    case 'triangle':
    return 0.5 * dimensions[0] * dimensions[1];
    case 'rectangle':
    return dimensions[0] * dimensions[1];
    default:
    throw ArgumentError("Unknown Shape");
  }
}

void main()
{
  print('Welcome to Shape Analyzer');
  print('-------------------------');
  print('Select a shape of these 3: Circle, Triangle, Rectangle');
  print('Enter the shape name: ');
  String ? choice = stdin.readLineSync()!;
  print('Enter the dimensions of the shape separated by space: ');

  List <double> dimensions = [];
  
  switch(choice)
  {
    case 'circle':
    dimensions.add(double.parse(stdin.readLineSync()!));
    case 'triangle':
    dimensions.add(double.parse(stdin.readLineSync()!));
    dimensions.add(double.parse(stdin.readLineSync()!));
    case 'rectangle':
    dimensions.add(double.parse(stdin.readLineSync()!));
    dimensions.add(double.parse(stdin.readLineSync()!));
  }

  double area = calculateArea(choice, dimensions);
  print('The area of the shape is: $area');
}