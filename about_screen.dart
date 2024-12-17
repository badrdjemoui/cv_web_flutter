import 'package:flutter/material.dart';

// شاشة "حول" تعرض التفاصيل حول الهدف والمهارات
class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      // إضافة مسافة حول المحتوى
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: SingleChildScrollView(
          // تصميم الصفحة ليتم التمرير عند الحاجة
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              // العنوان: الهدف
              Text(
                'Objectif',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent),
              ),
              SizedBox(height: 10), // إضافة مسافة بين النصوص
              // النص: وصف الهدف
              Text(
                'Ingénieur informatique avec une expérience dans le développement d’applications mobiles et web.',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20), // مسافة أكبر قبل القسم التالي
              // العنوان: المهارات
              Text(
                'Compétences',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent),
              ),
              SizedBox(height: 10), // مسافة بين العنوان والقائمة
              // النص: قائمة المهارات
              Text(
                '• Langages de programmation: Dart, C#, Python, Java\n'
                '• Bases de données: SQL Server, Oracle, SQLite, Firebase\n'
                '• Gestion de projets: Agile, Scrum',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
