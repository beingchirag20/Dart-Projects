/* Mini-Project: Student Grading System */

import 'dart:io';

void main()
{
  print('Enter the required Details');
  print('---------------------------');
  String? student_name;
  int? student_roll;

  print('Enter Student Name:');
  student_name = stdin.readLineSync();
  print('Enter Student Roll:');
  student_roll = int.parse(stdin.readLineSync()!);
  print('---------------------------');

  int? Statistics;
  int? DotNet;
  int? Java;
  int? Tableu;
  int? Python;

  print('Enter marks scored in Statistics:');
  Statistics = int.parse(stdin.readLineSync()!);
  print('Enter marks scored in DotNet:');
  DotNet = int.parse(stdin.readLineSync()!);
  print('Enter marks scored in Java:');
  Java = int.parse(stdin.readLineSync()!);
  print('Enter marks scored in Tableu:');
  Tableu = int.parse(stdin.readLineSync()!);
  print('Enter marks scored in Python:');
  Python = int.parse(stdin.readLineSync()!);

  int ? total = Statistics + DotNet + Java + Tableu + Python;
  print('$student_name has scored $total marks');
  double? percentage = (total / 500) * 100;
  print('$student_name has acquired $percentage %');
  String ? Grade;
  if(percentage >= 80)
  {
    Grade = 'A';
    print(Grade);
  }
  else if(percentage >= 60)
  {
    Grade = 'B';
    print(Grade);
  }
  else if(percentage >= 40)
  {
    Grade = 'C';
    print(Grade);
  }
  else 
  {
    Grade = 'FAIL';
    print(Grade);
  }

  print('-------------FINAL REPORT--------------');
  print('Student Name: $student_name\n Student Roll No: $student_roll\n Total Marks Scored: $total marks\n Percentage: $percentage%\n Grade: $Grade');
}