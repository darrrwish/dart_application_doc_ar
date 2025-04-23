void main() {
  String yourName =
      "DAR alfouad hosp."; //لازم استدعي المكتبة الموجود فيها الكود
  print('Hello $yourName');
  print('Hello ${yourName.toUpperCase()}'); // تحويل الاسم لحروف كبيرة
  print('Hello ${yourName.toLowerCase()}'); // تحويل الاسم لحروف صغيرة
  print('Hello ${yourName.trim()}'); // حذف المسافات من الاسم
  print('Hello ${yourName.trimLeft()}'); // حذف المسافات من اليمين
  print('Hello ${yourName.trimRight()}'); // حذف المسافات من الشمال
  print('Hello ${yourName.replaceAll('a', 'A')}'); // استبدال حرف بحرف
  print('Hello ${yourName.replaceFirst('a', 'A')}'); // استبدال حرف بحرف
  print('Hello ${yourName.replaceRange(0, 3, 'A')}'); // استبدال جزء من الاسم
  print(
    'Hello ${yourName.replaceAllMapped(RegExp(r'[aeiou]'), (match) => 'A')}',
  ); // استبدال كل الحروف المتحركة بحرف A
  print('Hello ${yourName.isEmpty}'); // هل الاسم فاضي
  print('Hello ${yourName.isNotEmpty}'); // هل الاسم مش فاضي
  print('Hello ${yourName.contains('a')}'); // هل الاسم يحتوي علي حرف معين
  print('Hello ${yourName.indexOf('a')}'); // مكان الحرف في الاسم
  print('Hello ${yourName.lastIndexOf('a')}'); // مكان الحرف من الاخر
  print('Hello ${yourName.substring(0, 3)}'); // جزء من الاسم
  print('Hello ${yourName.substring(0, yourName.length)}'); // جزء من الاسم
  print('Hello ${yourName.length}'); // طول الاسم
  print('Hello ${yourName[0]}'); // اول حرف من الاسم
  print('Hello ${yourName[1]}'); // ثاني حرف من الاسم
  print('Hello ${yourName[yourName.length - 1]}'); // اخر حرف من الاسم
  print('Hello ${yourName[yourName.length - 2]}'); // قبل الاخر حرف من الاسم
  print('Hello ${yourName.split(' ')}'); // تقسيم الاسم
}
