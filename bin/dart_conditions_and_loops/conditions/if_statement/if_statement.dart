void main() {
  //TODO (if statement)
  //! جملة if -   شرح if - else if - else  -  Shorthand if  - if nested Statement - في Dart:
  // 1. if: تستخدم لتنفيذ كود معين إذا تحقق شرط معين.
  // 2. else if: تستخدم لتحديد شرط آخر إذا لم يتحقق الشرط الأول.
  // 3. else: تستخدم لتنفيذ كود معين إذا لم يتحقق أي من الشروط السابقة.
  // 4. الـ Ternary Operator أو "المشغّل الثلاثي" في Dart (وكتير لغات برمجة) هو طريقة مختصرة لكتابة شرط if-else في سطر واحد.
  // 5. الـ Nested if: تعني وجود جملة if داخل جملة if أخرى، وتستخدم لتنفيذ شروط متعددة تعتمد على بعضها البعض.
  //----------------------------
  print('#0 if statement');
  int a0 = 1, b0 = 2;
  if (a0 == b0) {
    print('a0 = b0'); // ...لو الشرط اتحقق هينفذ الدالة
  }
  //SECTION : - if --> else statement
  print('#1 if statement');
  int a = 1, b = 2;
  if (a == b) {
    print('a == b'); // لو الشرط اتحقق هينفذ الدالة
  } else {
    print('a != b'); // لو الشرط ماتحققش ينفذ الدالة بدون شروط
  }
  print('#1 if statement');
  int ahmedAge = 24, dinaAge = 23;
  bool isAhmedOlder = ahmedAge > dinaAge;
  if (isAhmedOlder) {
    print('ahmed is older than dina'); //true
  } else {
    print('dina is older than ahmed'); //false
  }
  // SECTION : - if --> else-if -->  else statement
  print('#2 if --> else-if -->  else statementt');
  int a3 = 10, b3 = 20, c3 = 30;
  if (a3 > b3 && a3 > c3) {
    print('a3 is the largest number'); //false
  } else if (b3 > a3 && b3 > c3) {
    print('b3 is the largest number'); //false
  } else {
    print('c3 is the largest number'); //true
  }
  // SECTION : - TERNARY OPERATOR
  print('#3 Shorthand if statement');
  int a4 = 10, b4 = 20;
  // condition ? doIfTrue() : doIfFalse();
  a4 > b4 ? print('a4>b4') : print('a4<b4'); // true
  // condition ? doIfTrue() : condition2 ? doIfTrue2() : doIfFalse();
  a4 < b4
      ? print('a4<b4')
      : a4 == b4
      ? print('a4==b4')
      : print('a4>b4'); // true
  // condition ? doIfTrue() : condition2 ? doIfTrue2() : condition3 ? doIfTrue3() : doIfFalse();
  a4 < b4
      ? print('a4<b4')
      : a4 == b4
      ? print('a4==b4')
      : a4 > b4
      ? print('a4>b4')
      : print('a4<b4'); // true

  //? مقارنة
  //! باستخدام if-else العادي:
  String message1;
  int ageahmed = 24;
  if (ageahmed >= 18) {
    message1 = 'بالغ';
  } else {
    message1 = 'قاصر';
  }
  print(message1);
  //! باستخدام Ternary:
  String message2 = (ageahmed >= 18) ? 'بالغ' : 'قاصر';
  print(
    message2,
  ); //فوف مش خزن النتيجة في متغير اتحقق الشرط هينفذ الدالة ..هنا اتحقق الشرط هيرجع بقيمة خزنتها في متغير استخدمه بعدين

  // SECTHION : - if nested
  //! جملة if -  nested :
  print('#5 if nested statement');
  /*
✅ إيه هي nested if؟
هي if جوّا if
يعني شرط جوا شرط… لازم الشرط الأول يتحقق عشان التاني يتنفذ.

❌ ليه ما ينفعش بـ if وحدها؟
لأن كل شرط بيعتمد على اللي قبله. ما ينفعش تفحص كلمة السر لو اسم المستخدم فاضي، عشان كده محتاج كل if تكون جوه التانية.
 */

  /*
🔐 مثال 1: تسجيل دخول
- لازم الأول تتأكد إن المستخدم كتب اسم المستخدم
- بعد كده تتأكد إنه كتب كلمة السر
- بعدين تتأكد إن كلمة السر صح
*/
  String username = 'darrrwish';
  String password = '1234';

  if (username.isNotEmpty) {
    if (password.isNotEmpty) {
      if (password == '1234') {
        print('✔ تسجيل الدخول ناجح');
      } else {
        print('❌ كلمة السر غير صحيحة');
      }
    } else {
      print('❌ كلمة السر فاضية');
    }
  } else {
    print('❌ اسم المستخدم فاضي');
  }

  /*
🛒 مثال 2: شراء منتج
- لو المستخدم سجل دخول
  - ولو عنده رصيد كافي
    - ولو المنتج متاح في المخزن
      → يتم تنفيذ عملية الشراء
*/

  bool isLoggedIn = true;
  bool isProductAvailable = true;
  double userBalance = 3906;
  double productPrice = 278;

  if (isLoggedIn) {
    if (userBalance >= productPrice) {
      if (isProductAvailable) {
        print('✔ تم الشراء بنجاح');
        // ignore: dead_code
      } else {
        print('❌ المنتج غير متاح');
      }
    } else {
      print('❌ الرصيد غير كافي');
    }
    // ignore: dead_code
  } else {
    print('❌ يجب تسجيل الدخول أولاً');
  }

  /*
🎯 فايدة الـ Nested if:
- ترتيب الشروط حسب الأهمية
- تقليل استهلاك المعالج (ما ينفذش كل الشروط لو الأول غلط)
- تسلسل منطقي للمواقف الحياتية
*/

  //----------------------------مثال ثالث
  int a5 = 10, b5 = 20, c5 = 30;
  if (a5 > b5) {
    if (a5 > c5) {
      print('a5 is the largest number'); //false
    } else {
      print('c5 is the largest number'); //true
    }
  } else if (b5 > c5) {
    print('b5 is the largest number'); //false
  } else {
    print('c5 is the largest number'); //true
  }
}
