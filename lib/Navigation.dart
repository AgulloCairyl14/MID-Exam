import 'package:flutter/material.dart';
import 'about_page.dart';
import 'contact_page.dart';

void main() {
runApp(GRCApp());
}

class GRCApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Global Reciprocal College',
debugShowCheckedModeBanner: false,
theme: ThemeData(
primaryColor: Colors.teal,
accentColor: Colors.orangeAccent,
scaffoldBackgroundColor: Colors.white,
textTheme: TextTheme(
headline1: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.teal),
bodyText1: TextStyle(fontSize: 16, color: Colors.grey[800]),
),
),
home: HomePage(),
);
}
}

class HomePage extends StatelessWidget {
final List<String> images = [
'https://images.unsplash.com/photo-1581092334363-1f25a1b1f5c2?auto=format&fit=crop&w=800&q=60',
'https://images.unsplash.com/photo-1596496055020-8e88f676b9c2?auto=format&fit=crop&w=800&q=60',
'https://images.unsplash.com/photo-1581092795360-1f0a1b1f5c2?auto=format&fit=crop&w=800&q=60',
];

final List<String> features = [
'Modern classrooms and labs',
'Experienced faculty',
'Wide range of courses',
'Student support and activities',
];

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('Global Reciprocal College'),
centerTitle: true,
backgroundColor: Colors.teal,
),
body: SingleChildScrollView(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
SizedBox(height: 10),
Container(
height: 200,
child: PageView.builder(
itemCount: images.length,
itemBuilder: (context, index) {
return Image.network(images[index], fit: BoxFit.cover);
},
),
),
SizedBox(height: 20),
Padding(
padding: EdgeInsets.symmetric(horizontal: 16),
child: Text('Welcome to Global Reciprocal College', style: Theme.of(context).textTheme.headline1),
),
SizedBox(height: 10),
Padding(
padding: EdgeInsets.symmetric(horizontal: 16),
child: Text(
'Global Reciprocal College (GRC) provides quality education with a focus on modern learning techniques, student growth, and global opportunities.',
style: Theme.of(context).textTheme.bodyText1,
),
),
SizedBox(height: 20),
Padding(
padding: EdgeInsets.symmetric(horizontal: 16),
child: Text('Features:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.teal)),
),
SizedBox(height: 10),
...features.map((feature) => ListTile(
leading: Icon(Icons.check, color: Colors.orangeAccent),
title: Text(feature),
)),
SizedBox(height: 20),
Center(
child: Column(
children: [
ElevatedButton(
onPressed: () {
Navigator.push(
context,
MaterialPageRoute(builder: (context) => AboutPage()),
);
},
style: ElevatedButton.styleFrom(
backgroundColor: Colors.orangeAccent,
padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
),
child: Text('About GRC', style: TextStyle(fontSize: 16)),
),
SizedBox(height: 10),
ElevatedButton(
onPressed: () {
Navigator.push(
context,
MaterialPageRoute(builder: (context) => ContactPage()),
);
},
style: ElevatedButton.styleFrom(
backgroundColor: Colors.orangeAccent,
padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
),
child: Text('Contact GRC', style: TextStyle(fontSize: 16)),
),
],
),
),
SizedBox(height: 20),
],
),
),
);
}
}
