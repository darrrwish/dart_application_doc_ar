import 'dart:io';

void main() {
  //! for loop
  //عارف عدد تكرار
  //?(initialization; condition; incrementing/decrementing){الكود اللي هيتنفذ}
  for (int i = 0; i < 5; i++) {
    print("Hello World $i");
  }

  //! for in loop
  //عايز تمر على كل عناصر مجموعة او مصفوفة
  //? for (var item in collection) {الكود اللي هيتنفذ}
  for (var i in [1, 2, 3, 4, 5]) {
    print("Hello World $i");
  }

  //! for each loop
  //عايز تمر على كل عناصر مجموعة او مصفوفة
  //? collection.forEach((item) {الكود اللي هيتنفذ});
  [1, 2, 3, 4, 5].forEach((item) {
    print("Hello World $item");
  });

  //! while loop
  //مش عارف عدد تكرار بس هتعمتد على شرط معين
  //? while (condition) {الكود اللي هيتنفذ}
  int i = 0;
  while (i < 5) {
    print("Hello World $i");
    i++;
  }

  //! Do while loop
  // زي ال while بس هتنفذ الكود مرة واحدة على الأقل قبل ما تشوف الشرط
  //? do {الكود اللي هيتنفذ} while (condition)
  int j = 0;
  do {
    print("Hello World $j");
    j++;
  } while (j < 5);

  //! break and continue
  //? break; // هتخرج من اللوب على طول
  //? continue; // هتخلي اللوب يكمل من غير ما ينفذ الكود اللي بعده
  for (int i = 0; i < 10; i++) {
    if (i == 3) {
      continue; // هتخلي اللوب يكمل من غير ما ينفذ الكود اللي بعده
    }

    if (i == 5) {
      break; // هتخرج من اللوب لو i == 5
    }
    print("Hello World $i"); // هتطبع Hello World 0, 1, 2, 4
  }

  ///////////////////////////////////////////////////////
  //* conditionless for loop
  print('enter a number: ');
  int number = int.parse(stdin.readLineSync()!);
  int x = 0;
  for (;;) {
    //conditionless for loop
    // هتستخدمها لو عايز تخرج من اللوب بناء على شرط معين مش عارفه من الأول
    if (x == number) {
      break;
    }
    print("$x");
    x++;
    //icrementing/decrementing
  }

  /////////
  // نطلب من المستخدم إدخال رقم
  print('Enter a number1: ');
  // نقرأ المدخلات من المستخدم ونحولها إلى عدد صحيح
  // علامة ! تعني أننا متأكدين أن القيمة لن تكون null
  int number1 = int.parse(stdin.readLineSync()!);
  int x1 = 0; // نبدأ العد من الصفر

  //* حلقة for بدون شروط - تعمل إلى ما لا نهاية
  for (;;) {
    // نتحقق إذا وصلنا للرقم الذي أدخله المستخدم
    if (x1 == number1) {
      break; // نخرج من الحلقة إذا تحقق الشرط
    }
    // نطبع قيمة x الحالية
    print("$x1");
    // نزيد قيمة x بمقدار 1 في كل تكرار
    x++;
  }
  ///////////////////////////////////////////////////////
  //* nested loops
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      print("Hello World $i $j");
    }
  }

  /////////////////////////////////////////////////////////////
  //? return; // هترجع من الدالة اللي انت فيها
  //? label: // هتستخدمها مع break و continue علشان تحدد اللوب اللي عايز تخرج منه أو تكمل فيه
  //? labeled break; // هتخرج من لوب معين
  //? labeled continue; // هتخلي اللوب يكمل من غير ما ينفذ الكود اللي بعده في لوب معين
}
