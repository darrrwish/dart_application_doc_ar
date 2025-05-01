void main() {
  //TODO (if statement)
  //! جملة if -   شرح if - else if - else في Dart:
  // 1. if: تستخدم لتنفيذ كود معين إذا تحقق شرط معين.
  // 2. else if: تستخدم لتحديد شرط آخر إذا لم يتحقق الشرط الأول.
  // 3. else: تستخدم لتنفيذ كود معين إذا لم يتحقق أي من الشروط السابقة.

  print('#0 if statement');
  int a0 = 1, b0 = 2;
  if (a0 == b0) {
    print('a0 == b0'); // لو الشرط اتحقق هيرجع بترو
  }
  //----------------
  print('#1 if statement');
  int a = 1, b = 2;
  if (a == b) {
    print('a == b'); // لو الشرط اتحقق هيرجع بترو
  } else {
    print('a != b'); // لو الشرط اتحقق هيرجع بفولس
  }
  //----------------------------
  print('#2 if statement');
  int ahmedAge = 24, dinaAge = 23;
  bool isAhmedOlder = ahmedAge > dinaAge;
  if (isAhmedOlder) {
    print('ahmed is older than dina'); //true
  } else {
    print('dina is older than ahmed'); //false
  }
  //----------------------------
  print('#3 if statement');
  int a3 = 10, b3 = 20, c3 = 30;
  if (a3 > b3 && a3 > c3) {
    print('a3 is the largest number'); //false
  } else if (b3 > a3 && b3 > c3) {
    print('b3 is the largest number'); //false
  } else {
    print('c3 is the largest number'); //true
  }
  //----------------------------
  //! جملة if -   شرح if - else if - else في Dart:
  print('#4 if statement berif');
  int a4 = 10, b4 = 20;
  //condition ? doIfTrue() : doIfFalse();
  a4 > b4 ? print('a4>b4') : print('a4<b4'); // true
  // condition ? doIfTrue() : condition2 ? doIfTrue2() : doIfFalse();
  a4 < b4
      ? print('a4<b4')
      : a4 == b4
      ? print('a4==b4')
      : print('a4>b4'); // true
  // condition ? doIfTrue() : condition2 ? doIfTrue2() : condition3 ? doIfTrue3() : doIfFalse();
  a4 < b4
      ? print('a4<b4')
      : a4 == b4
          ? print('a4==b4')
          : a4 > b4
              ? print('a4>b4')
              : print('a4<b4'); // true
  //----------------------------
  print('#5 if nested statement');
  int a5 = 10, b5 = 20, c5 = 30;
  if (a5 > b5) {
    if (a5 > c5) {
      print('a5 is the largest number'); //false
    } else {
      print('c5 is the largest number'); //true
    }
  } else if (b5 > c5) {
    print('b5 is the largest number'); //false
  } else {
    print('c5 is the largest number'); //true
  }
}

