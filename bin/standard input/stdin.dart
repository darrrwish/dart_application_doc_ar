import 'dart:io';

void main(List<String> args) {
  //TODO (all standard input) - (stdin.)
  print('stdin.');
  //! كل الدوال الخاصة بالادخال من المستخدم
  // قراءة سطر نصي من المستخدم
  String order1 = stdin.readLineSync()!;
  print(
    'order1: $order1',
  ); // ملاحظة: استخدام ! مع readLineSync يعني أنه لا يمكن أن تكون النتيجة null

  // لا يمكن استخدام echoMode و lineMode مع assignment بهذه الطريقة، فهم لتعديل السلوك فقط:
  // هنا نغير echoMode و lineMode فقط بدون محاولة تخزين قيمتهم
  stdin.echoMode = false; // تعطيل إظهار النص أثناء الكتابة (مفيد لكلمات المرور)
  print('order2: echoMode set to false');

  stdin.lineMode = false; // تعطيل الانتظار حتى إدخال السطر الكامل
  print('order3: lineMode set to false');

  // قراءة بايت واحد من الإدخال
  String order4 =
      stdin
          .readByteSync()
          .toString(); // readByteSync ترجع int لذا نحولها إلى String
  print('order4: $order4');

  // Dart لا يحتوي على دالة readCharSync، لذا سنستخدم readByteSync أو يمكننا استخدام بعض الحلول البديلة
  // مثلاً تحويل المدخلات إلى رموز حرفية
  stdout.write('Enter a character: ');
  int charByte = stdin.readByteSync();
  String order5 = String.fromCharCode(charByte); // تحويل البايت إلى حرف
  print('order5: $order5');

  
}
