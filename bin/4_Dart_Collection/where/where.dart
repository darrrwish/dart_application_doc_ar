void main() {
  List<String> governorates = [
    "القاهرة",
    "الجيزة",
    "الإسكندرية",
    "أسوان",
    "الأقصر",
    "سوهاج",
    "المنيا",
    "بورسعيد",
  ];

  // هنا بنفلتر المحافظات اللي اسمها بيبدأ بـ "ال"
  List<String> filtered =
      governorates.where((g) => g.startsWith("ال")).toList();

  print(filtered); // [القاهرة, الجيزة, الإسكندرية, الأقصر, المنيا]
}
