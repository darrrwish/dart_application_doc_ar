enum WeekDay { sunday, monday, tuesday, wednesday, thursday, friday, saturday }
/*
• لا يمكن تعريف enum داخل class في Dart؛ يجب أن يكون في المستوى الأعلى من الملف أو داخل مكتبة.
• تصميم اللغة يفصل بين تعريف أنواع البيانات (types) وتنفيذ المنطق، مما يمنع التعشيش داخل class.
• الكومبيلور بتاع Dart يحتاج لمعرفة جميع أنواع البيانات قبل تحليل الكود التنفيذي.
*/

//المترجم (compiler) يحتاج أن يعرف جميع أنواع البيانات قبل أن يبدأ في تحليل الكود الذي يستخدمها. وجود enum داخل class سيعقد هذه العملية ويخلق حالات خاصة غير مدعومة حالياً.

/*
طب منا بكتب استرنج تحت عادي?
لأن ف فرق بين:
تعريف نوع جديد (مثل enum)
إعلان متغير (مثل String)

فالـ enum هو تعريف Type جديد، ولذا يجب أن يكون في المستوى الأعلى من الملف.
أما الـ String اللي بتكتبه تحت في الكود هو إعلان متغير أو قيمة من نوع موجود أصلاً (String)، والإعلانات مسموح بها داخل الـ class أو الدوال.
*/

void main() {
  //!(if statement)
  var dayOfWeek = 5;
  if (dayOfWeek == 1) {
    print("Day is Sunday.");
  } else if (dayOfWeek == 2) {
    print("Day is Monday.");
  } else if (dayOfWeek == 3) {
    print("Day is Tuesday.");
  } else if (dayOfWeek == 4) {
    print("Day is Wednesday.");
  } else if (dayOfWeek == 5) {
    print("Day is Thursday.");
  } else if (dayOfWeek == 6) {
    print("Day is Friday.");
  } else if (dayOfWeek == 7) {
    print("Day is Saturday.");
  } else {
    print("Invalid Weekday.");
  }

  print("-----------------------");

  //!(switch case)
  switch (dayOfWeek) {
    case 1:
      print("Day is Sunday.");
      break; // اقف هنا لو الشرط اتحقق ماتكملش باقي الشروط
    case 2:
      print("Day is Monday.");
      break;
    case 3:
      print("Day is Tuesday.");
      break;
    case 4:
      print("Day is Wednesday.");
      break;
    case 5:
      print("Day is Thursday.");
      break;
    case 6:
      print("Day is Friday.");
      break;
    case 7:
      print("Day is Saturday.");
      break;
    default:
      // زيها زي else بتتنفذ لو مفيش ولا شرط اتحقق
      //لو حذفتها هيظهر خطأ لو مفيش شرط اتحقق
      // ممكن احذفها لو متاكد ان فيه شرط هيتحقق
      print("Invalid Weekday.");
  }

  print("-----------------------");

  //!(switch case) enum
  WeekDay? day;
  if (dayOfWeek >= 1 && dayOfWeek <= 7) {
    day = WeekDay.values[dayOfWeek - 1]; // تحويل الرقم إلى enum
  }
  switch (day) {
    case WeekDay.sunday:
      print("Day is Sunday.");
      break;
    case WeekDay.monday:
      print("Day is Monday.");
      break;
    case WeekDay.tuesday:
      print("Day is Tuesday.");
      break;
    case WeekDay.wednesday:
      print("Day is Wednesday.");
      break;
    case WeekDay.thursday:
      print("Day is Thursday.");
      break;
    case WeekDay.friday:
      print("Day is Friday.");
      break;
    case WeekDay.saturday:
      print("Day is Saturday.");
      break;
    default:
      // هذا الفرع يلتقط القيمة null أو أي قيمة أخرى غير متوقعة
      print("Invalid Weekday.");

      //-------------------------------

      // حل اخر باستخدام switch case
      switch (day) {
        case WeekDay.sunday:
          print("Day is Sunday.");
          break;
        case WeekDay.monday:
          print("Day is Monday.");
          break;
        case WeekDay.tuesday:
          print("Day is Tuesday.");
          break;
        case WeekDay.wednesday:
          print("Day is Wednesday.");
          break;
        case WeekDay.thursday:
          print("Day is Thursday.");
          break;
        case WeekDay.friday:
          print("Day is Friday.");
          break;
        case WeekDay.saturday:
          print("Day is Saturday.");
          break;
        case null:
          // هذه الحالة تغطي day == null
          print("Invalid Weekday.");
          break;
      }

      //-------------------------------

      // حل اخر شرط و السويتش
      if (day == null) {
        print("Invalid Weekday.");
      } else {
        switch (day) {
          case WeekDay.sunday:
            print("Day is Sunday.");
            break;
          case WeekDay.monday:
            print("Day is Monday.");
            break;
          case WeekDay.tuesday:
            print("Day is Tuesday.");
            break;
          case WeekDay.wednesday:
            print("Day is Wednesday.");
            break;
          case WeekDay.thursday:
            print("Day is Thursday.");
            break;
          case WeekDay.friday:
            print("Day is Friday.");
            break;
          case WeekDay.saturday:
            print("Day is Saturday.");
            break;
        }
      }
  }
}
