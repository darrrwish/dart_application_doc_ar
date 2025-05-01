# 📘 دليل استخدام Enum في Dart
[![شاهد الفيديو](https://img.youtube.com/vi/DVsOmCAT8wE/0.jpg)](https://www.youtube.com/watch?v=DVsOmCAT8wE)

## ما هو Enum؟
`enum` هو نوع بيانات خاص يُستخدم لتعريف مجموعة من القيم الثابتة والمعروفة مسبقًا.

---

## ✅ 1. تعريف Enum
```dart
enum WeekDay { Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday }
```

---

## ✅ 2. استخدام Enum في شرط `if`
```dart
WeekDay today = WeekDay.Monday;

if (today == WeekDay.Monday) {
  print('☕ بداية الأسبوع!');
}
```

---

## ✅ 3. التحويل من رقم إلى Enum
```dart
int dayOfWeek = 3;
WeekDay? day;

if (dayOfWeek >= 1 && dayOfWeek <= 7) {
  day = WeekDay.values[dayOfWeek - 1];
  print('اليوم هو: ${day.name}'); // تطبع: اليوم هو: Wednesday
} else {
  print('❌ رقم غير صالح!');
}
```

---

## ✅ 4. الطباعة بدون اسم الـ Enum
```dart
WeekDay day = WeekDay.Sunday;
print(day.name); // Sunday
```

---

## ✅ 5. استخدام `switch` مع Enum
```dart
switch (day) {
  case WeekDay.Friday:
    print('📿 يوم الجمعة');
    break;
  case WeekDay.Saturday:
  case WeekDay.Sunday:
    print('🎉 عطلة نهاية الأسبوع');
    break;
  default:
    print('📅 يوم عادي');
}
```

---

## ✅ 6. تحويل Enum إلى نص (String)
```dart
String dayName = WeekDay.Thursday.name;
print(dayName); // Thursday
```

---

## ✅ 7. استخدام enum في Map أو واجهات
```dart
Map<WeekDay, String> messages = {
  WeekDay.Monday: 'ابدأ بقوة 💪',
  WeekDay.Friday: 'جمعة مباركة 🙏',
};

print(messages[WeekDay.Friday]); // جمعة مباركة 🙏
```

---

## 📝 ملاحظات : 
- `enum` لا يمكن أن تحتوي على متغيرات متغيرة أو دوال إلا باستخدام **enhanced enums** (متوفرة من Dart 2.17).
- استخدم `.name` لطباعة اسم العنصر فقط بدون `Enum.`.

---


لو حابب ممكن تمثل أيام الأسبوع كـ `String` عادي، لكن هنا الفرق والفائدة من استخدام `enum`:

---
## 👌  لو حابب ممكن تمثل أيام الأسبوع كـ String عادي، لكن هنا الفرق والفائدة من استخدام enum:



### 1. **الأمان النوعي (Type Safety)**
- **باستخدام `String`** أي حد ممكن يكتب:
  ```dart
  String day = 'Funday';  // لا توجد حماية من خطأ الكتابة
  ```
- **باستخدام `enum`** فقط القيم المعرّفة مقبولة:
  ```dart
  WeekDay day = WeekDay.Monday;  // آمن، وما ينفعش Day غير معرّف
  ```

---

### 2. **تكامل المحرر (IDE Autocomplete)**
- مع `enum` المحرر هيعرض لك كل القيم المتاحة:
  ```dart
  WeekDay.  // الاقتراحات: Monday, Tuesday, Wednesday...
  ```
- مع `String` لازم تحفظ كل القيم في بالك، والمحرك مش هيساعدك.

---

### 3. **سهولة الصيانة والتعديل**
- لو غيرت اسم يوم أو أضفت يوم جديد:
  - **في `enum`** تعديله في مكان واحد بس.
  - **في `String`** لازم تراجع كل مكان استخدمته فيه.

---

### 4. **استخدام مع `switch`/`case` بوضوح**
```dart
switch (day) {
  case WeekDay.Friday:
    print('جمعة مباركة');
    break;
  // ...
}
```
لو كان String، لازم:
```dart
switch (day) {
  case 'Friday':
    print('جمعة مباركة');
    break;
  // ...
}
```
وفيه احتمال خطأ في الكتابة أو حرف كبير/صغير.

---

### 5. **القيم الثابتة والواضحة في الكود**
- `enum` تجعل الكود أسهل قراءة وفهم لأي مبرمج يشتغل عليه بعدك.

---

## مقارنة قصيرة:

```dart
// باستخدام String
String day = 'Monday';
if (day == 'Monday') { ... }

// باستخدام enum
WeekDay day = WeekDay.Monday;
if (day == WeekDay.Monday) { ... }
```

**الخلاصة:**  
لو عندك مجموعة قيم محددة ومعروفة (زي أيام الأسبوع)، `enum` توفر لك حماية أكثر، تكامل أفضل مع المحرر، وصيانة أسهل من مجرد استخدام `String`.