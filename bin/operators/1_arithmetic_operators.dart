import 'dart:math';

void main() {
  //TODO (Arithmetic operators)
  print('#Arithmetic operators');
  //!  العمليات الحسابية البسيطة
  print('العمليات الحسابية');
  int a = 10, b = 5;
  print(a + b); // 15
  print(a - b); // 5
  print(a * b); // 50
  print(a / b); // قسمة (نتيجتها تكون double)
  print(a ~/ b); // قسمة صحيحة (النتيجة تكون int، وتقوم بإهمال الكسر)
  print(a % b); // باقي القسمة (المتبقي بعد القسمة)
//! advanced operations 
  print('Exponentiation: ${pow(a, b)}');    // 7. الأس
  print('Square Root: ${sqrt(a)}');        // 8. الجذر التربيعي
  print('Cube Root: ${pow(a, 1 / 3)}');   // 9. الجذر التكعيبي
  int n = 4;
  print('Nth Root: ${pow(a, 1 / n)}');   // 10. الجذر النوني

 






 
}
