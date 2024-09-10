void main() {
  // Data Types
  print('Data Types:');
  int myInt = 42;
  double myDouble = 3.14;
  String myString = 'Hello, Dart!';
  bool myBool = true;
  List<int> myList = [1, 2, 3, 4, 5];

  print('Integer: $myInt');
  print('Double: $myDouble');
  print('String: $myString');
  print('Boolean: $myBool');
  print('List: $myList');

  // Type Conversion
  print('\nType Conversion:');
  convertAndDisplay('123');

  // Control Flow
  print('\nControl Flow:');
  checkNumber(-5);
  checkVotingEligibility(20);
  printDayOfWeek(3);

  print('\nLoops:');
  printNumbers();

  // Combining Data Types and Control Flow
  print('\nCombining Data Types and Control Flow:');
  processNumbers([5, 15, 101]);
}

// Function to convert String to int and double
int stringToInt(String str) {
  return int.parse(str);
}

double stringToDouble(String str) {
  return double.parse(str);
}

// Function to convert int to String and double
String intToString(int value) {
  return value.toString();
}

double intToDouble(int value) {
  return value.toDouble();
}

// Function for Conversion
void convertAndDisplay(String numberStr) {
  int intValue = stringToInt(numberStr);
  double doubleValue = stringToDouble(numberStr);

  print('String "$numberStr" as int: $intValue');
  print('String "$numberStr" as double: $doubleValue');
}

// If-Else Statements
void checkNumber(int number) {
  if (number > 0) {
    print('The number is positive.');
  } else if (number < 0) {
    print('The number is negative.');
  } else {
    print('The number is zero.');
  }
}

void checkVotingEligibility(int age) {
  if (age >= 18) {
    print('Eligible to vote.');
  } else {
    print('Not eligible to vote.');
  }
}

// Switch Case
void printDayOfWeek(int day) {
  switch (day) {
    case 1:
      print('Monday');
      break;
    case 2:
      print('Tuesday');
      break;
    case 3:
      print('Wednesday');
      break;
    case 4:
      print('Thursday');
      break;
    case 5:
      print('Friday');
      break;
    case 6:
      print('Saturday');
      break;
    case 7:
      print('Sunday');
      break;
    default:
      print('Invalid day');
  }
}

// Loops
void printNumbers() {
  // For loop
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  // While loop
  int j = 10;
  while (j > 0) {
    print(j);
    j--;
  }

  // Do-while loop
  int k = 1;
  do {
    print(k);
    k++;
  } while (k <= 5);
}

// Combining Data Types and Control Flow
void processNumbers(List<int> numbers) {
  for (int number in numbers) {
    print('Number: $number');

    // Check if even or odd
    if (number % 2 == 0) {
      print('$number is even.');
    } else {
      print('$number is odd.');
    }

    // Categorize the number
    switch (number) {
      case var n when (n >= 1 && n <= 10):
        print('$number is small.');
        break;
      case var n when (n >= 11 && n <= 100):
        print('$number is medium.');
        break;
      case var n when (n > 100):
        print('$number is large.');
        break;
      default:
        print('$number is out of range.');
    }
  }
}
