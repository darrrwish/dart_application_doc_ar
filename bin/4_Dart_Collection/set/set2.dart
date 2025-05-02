void main() {
  //لا ينبغي أن يكون عنصران في المجموعة متساويين. غيّر أو احذف العنصر المكرر.dartequal_elements_in_set
  Set<String> weekdaySet = {
    "Sun",
    "Sun",
    "Mon",
    "Tue",
    "Wed",
    "Thu",
    "Fri",
    "Sat",
  };
  print(weekdaySet);
  print(weekdaySet.elementAt(6)); // طريقة للوصول للعنصر في المجموعة
  print(
    weekdaySet.toList()[6],
  ); // طريقة للوصول للعنصر في المجموعة بغد تحويلها لمصفوفة
  print(
    weekdaySet.elementAt(6) == weekdaySet.toList()[6],
  ); // تذكر المقارنة بين العناصر

  //حولتها  الي مصفوفة
  List<String> weekdayList = weekdaySet.toList();
  print(weekdayList[6]);
}
