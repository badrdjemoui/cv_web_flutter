import 'package:flutter/material.dart';

// واجهة تعرض الخبرات المهنية والمهارات التقنية للمستخدم
class ExperienceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      // إضافة مسافة حول المحتوى لتحسين العرض
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        // قائمة تحتوي على عناصر متعددة تعرض في واجهة التطبيق
        children: [
          // بطاقة تعرض تفاصيل الخبرة العملية الحالية
          Card(
            elevation: 5, // إضافة ظل لزيادة جمالية البطاقة
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)), // جعل زوايا البطاقة دائرية
            child: ListTile(
              leading: Icon(Icons.work,
                  color: Colors.blueAccent), // أيقونة تعبر عن العمل
              title: Text('Assemblée Populaire Wilayal, Annaba, Algérie'),
              subtitle: Text(
                // وصف تفصيلي للخبرة العملية
                '2010 - A Ce Jour\n'
                '• responsable de tout le systeme informatique au niveau d\'administration de l\'APC EULMA Annaba\n'
                '• la mise en oeuvre des applications qui comuniquent avec les serveurs des bases donnees(sql server et oracle)\n'
                '• developpement les applications desktop en cas de necessite en utilisant visual studio c# \n'
                '•faire un store et backup des base de donnes s\'il est necessaire\n'
                '•assure la connectivite des resaeux locaux et nationaux et la reparation s\'il est y a des pannes \n',
              ),
            ),
          ),
          Divider(), // خط فاصل بين البطاقات
          // بطاقة تعرض المهارات التقنية المكتسبة
          Card(
            elevation: 5, // إضافة ظل حول البطاقة لتحسين التصميم
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)), // تصميم الزوايا الدائرية
            child: ListTile(
              leading: Icon(Icons.code,
                  color: Colors.blueAccent), // أيقونة تعبر عن البرمجة
              title: Text('Développement'),
              subtitle: Text(
                // تفاصيل المهارات التقنية
                '• Maîtrise des langages de programmation (Java, C++, Python, etc.)\n'
                '• Connaissance des bases de données (SQL, NoSQL)\n'
                '• Expérience avec le framework de développement (Flutter.)\n'
                '• Compétences en gestion de projet et méthodologies agiles (Scrum)\n'
                '• Capacité à résoudre des problèmes complexes et à travailler sous pression\n'
                '• Bonnes compétences en communication et en travail en équipe\n'
                '• Connaissance des meilleures pratiques en matière de sécurité informatique',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
