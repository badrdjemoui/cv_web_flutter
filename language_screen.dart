import 'package:flutter/material.dart';

// واجهة تعرض معلومات عن اللغات التي يتحدث بها المستخدم
class LanguageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      // إضافة مساحة بادئة حول المحتوى
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: const [
          // النص الذي يعرض عنوان القسم "اللغات"
          Text(
            'Langues',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blueAccent),
          ),
          SizedBox(height: 10), // مسافة بين العناصر
          // النص الذي يعرض اللغات ومستوى الإتقان
          Text(
            '• Français: Niveau avancé\n'
            '• Anglais: Niveau intermédiaire\n'
            '• Arabe: Langue maternelle',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
