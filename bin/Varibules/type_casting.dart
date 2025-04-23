
void main() {
  String name = 'Ahmed Khaled (Darwish)';
  int age = 25;
  int height = 177, weight = 110;
  print(
    "$name, $age years old, my weight is $weight kg and my height is $height cm",
  );
  
  //TODO (type casting)
  print('#type casting');
  //!تحويل من متغير لمتغير
  int salary = 3800;
  double egtax = 0.14;
  String infactionTax = '160.26';
  double totalSalary =
      salary.toDouble() -
      egtax +
      double.parse(infactionTax); // تحويل الرقم الصحيح و النص الي رقم عشري

  print(
    'الراتب: $totalSalary  مع اضافة بدل مكافحة عدوى  $infactionTax جنيه مصري و خصم القيمة المضافة $egtax جنيه مصري',
  );


}
