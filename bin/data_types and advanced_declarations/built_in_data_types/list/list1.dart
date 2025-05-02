void main() {
  List<String> names = ["Ahmed", "Khaled", "Omar"];

  print("قيمة الـ names هي: $names");
  print("أول عنصر names[0] هو: ${names[0]}"); // العنصر رقم 0
  print("تاني عنصر names[1] هو: ${names[1]}"); // العنصر رقم 1
  print("تالت عنصر names[2] هو: ${names[2]}"); // العنصر رقم 2

  // 🔹 الجزء الخاص بالعمليات المتقدمة على الـ List

  //! 🟢 البحث (Finding)
  // نعرف طول الليست
  int length = names.length;
  print("طول الـ names هو: $length");
  // نعرف أول عنصر
  String firstElement = names.first;
  print("أول عنصر في names هو: $firstElement");
  // نعرف آخر عنصر
  String lastElement = names.last;
  print("آخر عنصر في names هو: $lastElement");
  // نجيب رقم (موقع) عنصر معين
  int index = names.indexOf("Omar");
  print("موقع Omar في names هو: $index");

  //! 🟢 الإضافة (Adding)
  // نضيف عنصر واحد
  names.add("Ali");
  print("names بعد إضافة Ali: $names");
  // نضيف أكتر من عنصر
  names.addAll(["Ali", "Hassan"]);
  print("names بعد إضافة Ali و Hassan: $names");

  //! 🟢 الإدراج (Inserting)
  // نضيف عنصر في مكان معين
  names.insert(1, "Ali");
  print("names بعد إدخال Ali في المكان 1: $names");
  // نضيف أكتر من عنصر في مكان معين
  names.insertAll(1, ["Ali", "Hassan"]);
  print("names بعد إدخال Ali و Hassan في المكان 1: $names");

  //! 🟢 الحذف (Removing)
  // نحذف عنصر معين
  names.remove("Ali");
  print("names بعد حذف Ali: $names");
  // نحذف عنصر حسب موقعه
  names.removeAt(1);
  print("names بعد حذف العنصر في المكان 1: $names");
  // نحذف عناصر حسب شرط
  names.removeWhere((name) => name == "Ali");
  print("names بعد حذف كل العناصر اللي اسمهم Ali: $names");
  // نحذف كل العناصر
  names.clear();
  print("names بعد حذف كل العناصر: $names");

  //! 🟢 الاستبدال (Replacing)
  // نغير عنصر معين في مكان محدد
  names.replaceRange(1, 2, ["Ali"]);
  print("names بعد تغيير العنصر في المكان 1 بـ Ali: $names");
  // نغير أكتر من عنصر في مكان معين
  names.replaceRange(1, 3, ["Ali", "Hassan"]);
  print("names بعد تغيير العناصر في الأماكن 1 لحد 3 بـ Ali و Hassan: $names");

  //! 🟢 العكس (Reversing)
  // نعكس ترتيب الليست
  List<String> reversedNames = names.reversed.toList();
  print("names بعد العكس: $reversedNames");

  //! 🟢 الترتيب (Sorting)
  // نرتب الليست تصاعدي
  List<String> sortedNames = names..sort();
  print("names بعد الترتيب الأبجدي: $sortedNames");
  // نرتب الليست تنازلي
  List<String> sortedNamesDescending = names..sort((a, b) => b.compareTo(a));
  print("names بعد الترتيب من الكبير للصغير: $sortedNamesDescending");
  // نرتب الليست تصاعدي تاني
  List<String> sortedNamesAscending = names..sort((a, b) => a.compareTo(b));
  print("names بعد الترتيب من الصغير للكبير: $sortedNamesAscending");
  // ترتيب مخصص حسب طول الاسم
  List<String> sortedNamesCustom =
      names..sort((a, b) => a.length.compareTo(b.length));
  print("names بعد الترتيب حسب طول الاسم: $sortedNamesCustom");
}
