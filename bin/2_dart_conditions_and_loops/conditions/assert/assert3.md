# ✅ Check-list: هل أستخدم `assert` هنا؟

| السؤال | لو الإجابة "أيوه" → استخدم `assert` |
|--------|----------------------------|
| هل فيه شرط لازم يتحقق قبل ما الكود يشتغل؟ | ✅ |
| هل فيه قيمة مينفعش تبقى null أو فاضية؟ | ✅ |
| هل فيه رقم لازم يكون في مدى معيّن (زي عمر، خصم، رصيد)؟ | ✅ |
| هل الدالة بتعتمد على input من المستخدم؟ | ✅ |
| هل ده كود تجريبي ولسه بتطوره؟ | ✅ |

---

# ❌ إمتى ما تستخدمش `assert`؟

| الحالة | السبب |
|--------|--------|
| الكود بسيط جدًا ومفيش شروط | مش هيفيد |
| لو في شرط بسيط ممكن تعالجه بـ `if` | `if` بتتعامل مع المستخدم، لكن `assert` بس للتجريب |
| في النسخة النهائية من التطبيق (release) | `assert` مش شغالة فيها أصلاً |

---

## 🧠 مثال تطبيقي سريع على الـ Check-list:

أنت بتكتب دالة اسمها `loginUser` بتستقبل username و password.  
تعال نطبّق الأسئلة:

1. هل فيه شرط لازم يتحقق؟ ✅ آه، الاسم والباسورد لازم مايكونوش فاضيين.
2. هل الدالة بتاخد input من المستخدم؟ ✅

إذن: تستخدم `assert`.

```dart
void loginUser(String username, String password) {
  assert(username.isNotEmpty, 'اسم المستخدم فاضي');
  assert(password.isNotEmpty, 'كلمة السر فاضية');
  print('جاري تسجيل الدخول...');
}
```

---

بالضبط! 👇

---

## ✅ الخلاصة ببساطة:

| | `assert` | `if` |
|--|----------|------|
| **بتستخدمها إنت كمبرمج؟** | ✅ أيوه | ✅ أيوه |
| **بتظهر للمستخدم؟** | ❌ لأ | ✅ أيوه |
| **تشتغل في وقت التطوير؟** | ✅ أيوه | ✅ أيوه |
| **تشتغل في النسخة النهائية (release)؟** | ❌ لأ | ✅ أيوه |
| **تستخدمها علشان تتأكد من شرط مهم أثناء البرمجة؟** | ✅ أيوه | ❌ مش الغرض الأساسي |

---

## 🎯 يعني إيه الكلام ده؟

- `assert` بتستخدمها **لنفسك كمطوّر** علشان تتأكد من إن الكود ماشي صح، **لكن المستخدم مش هيشوفها**.
- `if` بتستخدمها **للتعامل مع المستخدم**: تعرض رسالة، تمنع تنفيذ، تغير سلوك التطبيق... إلخ.

---

## 🔍 مثال يوضح الفرق:

```dart
void login(String username, String password) {
  // دي ليك إنت بس كمطوّر: تأكد إن البيانات مش فاضية
  assert(username.isNotEmpty);
  assert(password.isNotEmpty);

  // دي للمستخدم: لو البيانات فاضية، بلّغه
  if (username.isEmpty || password.isEmpty) {
    print('من فضلك اكتب الاسم وكلمة السر');
    return;
  }

  print('تم تسجيل الدخول');
}
```

---

## ✨ خلاصة الخلاصة:

> `assert` = ليك إنت بس وقت ما بتطوّر.  
> `if` = للمستخدم، علشان تتصرف لو في مشكلة.

تحب أعملك مثال كامل فيه login وsignup ونوضح فيه الفرق بينهم بشكل عملي؟