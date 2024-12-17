import 'package:flutter/material.dart';

// واجهة تعرض المعلومات الشخصية للمستخدم مثل الاسم، المهنة، والتفاصيل الأخرى
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      // محاذاة المحتوى في المنتصف
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // محاذاة العناصر في الوسط
        children: [
          // صورة الملف الشخصي بشكل دائري
          const CircleAvatar(
            radius: 80, // تحديد نصف قطر الصورة
            backgroundImage: AssetImage('assets/profile.jpg'), // تحميل الصورة من الأصول
          ),
          const SizedBox(height: 20), // مسافة بين العناصر
          // النص الذي يعرض الاسم
          const Text(
            'DJEMOUI BADR',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blueAccent),
          ),
          // النص الذي يعرض المهنة
          const Text(
            'Ingénieur Informatique',
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),
          const SizedBox(height: 10), // مسافة إضافية بين النصوص
          // النص الذي يعرض رقم الهاتف
          const Text(
            '(213) 668704231',
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          // النص الذي يعرض البريد الإلكتروني
          const Text(
            'badrdjemoui@gmail.com',
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          const SizedBox(height: 20), // مسافة إضافية بين العناصر
          // النص الذي يعرض العنوان
          const Text(
            'Commune El Eulma, 23031, Annaba, Algérie',
            textAlign: TextAlign.center, // محاذاة النص في الوسط
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
