import 'dart:io';

void main() {
  //TODO (dart User Input)
  print('#dart User Input');
  //! ادخال بيانات من المستخدم
  String? yourNameUser =
      stdin.readLineSync(); //لازم استدعي المكتبة الموجود فيها الكود
  print('Hello $yourNameUser');
  // هيطلع ايرور لو ماكتبتش علامة استفهام لان ماينفعش اخزن متغير منوع استرنج نول في متغير نوعه استرنج
  // عشان كده لازم احط علامة الاستفهام بعد نوع المتغير
  //? وده معناه ان المتغير ده ممكن يكون فاضي

  String yourPassUser = stdin.readLineSync()!;
  print('Hello $yourPassUser');
  //و ممكن نحط علامة التعجب بعد المتغير
  //? وده معناه ان المتغير ده مش ممكن يكون فاضي
}
