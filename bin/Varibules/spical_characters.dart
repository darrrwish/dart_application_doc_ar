void main() {
  //TODO (Spical characters)
  print('Spical characters');
  //! الحروف الخاصة
  print('Ahmed Khaled (Darwish)\n is nurse'); // بتنزل سطر جديد
  print('Ahmed Khaled (Darwish)\t is nurse'); // بضيف 4 مسافات
  print('Ahmed Khaled (Darwish)\r is nurse'); // بتمسح كل اللي قبلها
  print('Ahmed Khaled (Darwish)\b is nurse'); // بتمسح حرف واحد قبلها
  print(
    'Ahmed Khaled (Darwish) \x4e : is nurse',
  ); // يمثل حرف باستخدام الكود الهيكس (Hex)
  print('Ahmed Khaled (Darwish) \u{1F600}'); //  كتابة ايموشن باليوني كود
  print('''Ahmed Khaled (Darwish)
    1 line 
    2 line ...
    '''); // الكتابة علي عدة سطر
  print(
    r'Url: C:\Users\ahmed\O',
  ); //  بلغي تاثير الاسبيشال كاركتير بكتابة الار  يعني بقول للكومبيلر ان ده نص خام (Raw String)
  print(
    'Url: C:\\Users\\ahmed\\O',
  ); //  بلغي تاثير الاسبيشال كاركتير بكتابة باك سلاش زيادة قبل الباك الاصلية
}
