void signup(String username, String password) {
  // ✅ دي Assert ليك إنت كمبرمج، علشان تتأكد إن القيم مش null
  assert(username != null);
  assert(password != null);

  // ✅ دي if للمستخدم، علشان يوصله رسالة واضحة
  if (username.isEmpty || password.isEmpty) {
    print('❌ لازم تكتب اسم المستخدم وكلمة السر');
    return;
  }

  print('✅ تم إنشاء الحساب بنجاح!');
}

void login(String username, String password) {
  // ✅ برضو Assert ليك كمطوّر
  assert(username != null);
  assert(password != null);

  // ✅ if للمستخدم
  if (username.isEmpty || password.isEmpty) {
    print('❌ البيانات ناقصة، اكتب الاسم والباسورد');
    return;
  }

  // مثال بسيط: هنتعامل كأن فيه حساب محفوظ باسم "admin" وباسورد "1234"
  if (username == 'admin' && password == '1234') {
    print('✅ تم تسجيل الدخول بنجاح!');
  } else {
    print('❌ اسم المستخدم أو كلمة السر غلط!');
  }
}

void main() {
  // تجربة signup
  signup('ali', 'pass123'); // هينجح
  signup('', ''); // هيرجع رسالة للمستخدم

  // تجربة login
  login('admin', '1234'); // تسجيل ناجح
  login('admin', '0000'); // باسورد غلط
}
