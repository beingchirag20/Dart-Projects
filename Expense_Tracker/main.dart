import 'dart:io';

class Expense{
  String category;
  String description;
  double amount;

  Expense(this.category, this.description, this.amount);

  @override
  String toString() {
    return 'Category: $category, Description: $description, Amount: $amount';
  }
}

  List<Expense> expenses = [];

  //Function to add expense
  void addExpense()
  {
    print('\nEnter expense category(E.g: Food, Travel, Luxury)');
    String category = stdin.readLineSync()!;

    print('\nDescribe your expense in short)');
    String description = stdin.readLineSync()!;

    print('\nDescribe your expense amount)');
    double amount = double.parse(stdin.readLineSync()!) ?? 0;

    if(amount <= 0)
    {
      print('Invalid amount');
    }

    expenses.add(Expense(category, description, amount));
    print('Expense added successfully');
  }

  //Function to view expense
  void viewExpense()
  {
    if(expenses.isEmpty)
    {
      print('No expenses added');
    }

    print('\n-----All Expenses-----');
    for(var expense in expenses)
    {
      print(expense);
    }
  }

  //Function to filter expenses
  void filterExpense()
  {
    print('\nEnter category to filter');
    String category = stdin.readLineSync()!;


    List<Expense> filteredCategory = expenses.where((expense) => expense.category == category).toList();

    if(filteredCategory.isEmpty)
    {
      print('\nNo expenses fo category found');
      return;
    }
    print('\n-----Filtered Expenses-----');
    for(var expense in filteredCategory)
    {
      print(expense);
    }
  }

  //Calculate total expense
  void calculateTotalExpense()
  {
    double total = 0;
    for(var expense in expenses)
    {
      total += expense.amount;
      print('\nTotal Expenses: $total');
    }
  }

  void main()
  {
    while(true){
      print('\n1. Add Expense');
      print('2. View All Expenses');
      print('3. Filter Expenses');
      print('4. Calculate Total Expense');
      print('5. Exit');
      print('Enter your choice');
      String choice = stdin.readLineSync()!;

      switch (choice) {
        case '1':
          addExpense();
          break;
        case '2':
        viewExpense();
        break;
        case '3':
        filterExpense();
        break;
        case '4':
        calculateTotalExpense();
        break;
        case '5':
        print('Thankyou');
        return;
        default:
        print('Invalid Choice');
      }
    }
  }