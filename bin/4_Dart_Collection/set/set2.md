# 🎯 **إيه هو الـ Set؟**
الـ Set ده **مجموعة بتخزن بيانات فريدة من نوعها**، يعني:
- مفيش تكرار في العناصر
- الترتيب مش ثابت (مش زي الـ List اللي بتحافظ على الترتيب)
- سريع في البحث عن العناصر

### **مثال بسيط:**
```dart
Set<String> weekDays = {"حد", "اثنين", "تلات", "حد"};
print(weekDays); // {حد, اثنين, تلات} ← شوف "حد" متكرتش!
```
> ℹ️ **Note:** Set doesn’t print duplicate items.


## **ليه نستخدم الـ Set؟**
1. لو عايز تضمن إن العناصر **متبقاش مكررة**
2. لو محتاج **تبحث بسرعة** عن عنصر معين
3. لو مش فارق معاك ترتيب العناصر

## **إزاي تعمل Set؟**
### **1. الطريقة المباشرة**
```dart
Set<int> numbers = {1, 2, 3, 2}; // {1, 2, 3}
```

### **2. تحويل List لـ Set**
```dart
List<int> myList = [1, 2, 2, 3];
Set<int> mySet = myList.toSet(); // {1, 2, 3}
```

## **أهم العمليات على الـ Set**
| العملية | الكود | النتيجة |
|---------|-------|---------|
| **إضافة عنصر** | `mySet.add(4)` | `{1, 2, 3, 4}` |
| **حذف عنصر** | `mySet.remove(2)` | `{1, 3}` |
| **البحث** | `mySet.contains(3)` | `true` |
| **عدد العناصر** | `mySet.length` | `3` |
| **هل فارغ؟** | `mySet.isEmpty` | `false` |

## **مقارنة سريعة مع الـ List**
| الميزة | Set | List |
|--------|-----|------|
| التكرار | ❌ ممنوع | ✅ مسموح |
| الترتيب | ❌ مش ثابت | ✅ ثابت |
| البحث | ⚡ سريع | 🐢 أبطأ |

## **مثال عملي:**
```dart
Set<String> colors = {"أحمر", "أخضر", "أزرق"};
colors.add("أصفر"); // إضافة لون جديد
colors.remove("أخضر"); // حذف لون

if (colors.contains("أحمر")) {
  print("موجود اللون الأحمر!");
}

print("عدد الألوان: ${colors.length}");
```

## **متى تستخدم Set؟**
1. لو عندك **قائمة أسماء طلاب** وعايز تضمن إن كل اسم متكررش
2. لو عندك **أكواد خصم** وعايز تضمن إن كل كود يستخدم مرة واحدة
3. أي حاجة عايزها **فريدة ومش مترتبة**

**➡️ الـ Set ده سلاحك السري لما تحتاج بيانات بدون تكرار!** 🚀