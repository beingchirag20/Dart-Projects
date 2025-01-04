//Mini Project : Customer Reward System 
//Topics Covered: IF ELSE, Input, Patterns
import 'dart:io';

void main()
{
  String? customer_name;
  double points = 0;
  int amount_of_shopping;

  print('Enter the name of customer :');
  customer_name = stdin.readLineSync();
  print('Thankyou $customer_name for shopping from our store');

  print('Enter the amount of shopping :');
  amount_of_shopping = int.parse(stdin.readLineSync()!);

  if(amount_of_shopping >= 50)
  {
    points = (amount_of_shopping / 50).toDouble();
    print('You have earned $points points');
  }
  else{
    int rem_amt = amount_of_shopping - 50;
    print('Shop more of rs:$rem_amt to earn reward points.');
  }
}