void main() {
  //TODO (comparison operators)
  //! مقارنة المتغييرات
  print('#1 comparison operators');
  int a = 1, b = 2, c = 3;
  print(a == b); // لو الشرط اتحقق هيرجع بترو
  print(a != b); // لو الشرط اتحقق هيرجع بفولس
  print(a > b); // لو الشرط اتحقق هيرجع بترو
  print(a < b); // لو الشرط اتحقق هيرجع بترو
  print(a >= b); // لو الشرط اتحقق هيرجع بترو
  print(a <= b); // لو الشرط اتحقق هيرجع بترو
  print(a == b && b < c); //لازم يكون الشرطين صح - و
  print(a == b || b < c); //لو الشرطين صح او واحد بس صح - او
  print(a == b ? '✔' : '❌'); //عبارة شرطية مختصرة تُسمى التعبير الثلاثي (Ternary Expression)
  //----------------------------
  print('#2 comparison operators');
  int ahmedAge = 24, dinaAge = 23;
  bool isAhmedOlder = ahmedAge > dinaAge;
  print(isAhmedOlder); //true
  //----------------------------
  print(ahmedAge > dinaAge); //*بدل ماتخزنها في متغير و تحجز مساحة في الذاكرة
}
