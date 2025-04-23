void main() {
  //TODO (properties_datatype)
  //!خصائص أخرى للتحقق من أنواع البيانات
  var a = 1;
  print(a is String); // false (لأن `a` ليس String)
  print(a is int); // true (لأن `a` هو int)
  print(a is double); // false (لأن `a` ليس double)
  print(a is num); // true (لأن `a` هو num، وهو نوع عام يشمل int و double)
  print(a is bool); // false (لأن `a` ليس bool)
  print(a is Object); // true (لأن `a` هو Object، وهو نوع عام يشمل جميع الأنواع)
  print(a is Function); // false (لأن `a` ليس Function)
  print(a is StringBuffer); // false (لأن `a` ليس StringBuffer)
  print(a is StringSink); // false (لأن `a` ليس StringSink)
  print(a is List); // false (لأن `a` ليس List)
  print(a is Map); // false (لأن `a` ليس Map)
  print(a is Set); // false (لأن `a` ليس Set)
  print(a == null); // false (لأن `a` ليس null)
  print(a == true); // false (لأن `a` ليس true)
  print(a == false); // false (لأن `a` ليس false)

  // إذا كانت `a` من النوع List أو غيره، يمكن التحقق إذا كانت فارغة أو لا
  var a1 = [1, 2, 3]; // `a` هو قائمة من الأعداد
  print(a1 is List); // true (لأن `a` هو List)
  print(a1.isEmpty); // false (لأن `a` يحتوي على عناصر)
  print(a1.isNotEmpty); // true (لأن `a` يحتوي على عناصر)
  //----------------------------------------------
  // التحقق مما إذا كانت القائمة فارغة أم لا
  var a2 = [1, 2, 3]; // `a1` هو قائمة من الأعداد
  print(a2.isEmpty); // false (لأن `a1` يحتوي على عناصر)
  print(a2.isNotEmpty); // true (لأن `a1` يحتوي على عناصر)

  // إذا كان المتغير null:
  var a3;
  print(a3 == null); // true (لأن `a2` هو null)

  // مثال على سلسلة نصية فارغة
  var a4 = "";
  print(a4.isEmpty); // true (لأن السلسلة النصية فارغة)
  print(a4.isNotEmpty); // false (لأن السلسلة النصية فارغة)
}
