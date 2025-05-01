enum WeekDay { sunday, monday, tuesday, wednesday, thursday, friday, saturday }

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
