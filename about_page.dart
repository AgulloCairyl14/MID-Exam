import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
final List<String> aboutImages = [
'https://images.unsplash.com/photo-1581092334363-1f25a1b1f5c2?auto=format&fit=crop&w=800&q=60', // campus
'https://images.unsplash.com/photo-1596496055020-8e88f676b9c2?auto=format&fit=crop&w=800&q=60', // students
'https://images.unsplash.com/photo-1581092795360-1f0a1b1f5c2?auto=format&fit=crop&w=800&q=60', // classroom
];

final List<String> values = [
'Excellence in Education',
'Integrity and Respect',
'Global Perspective',
'Innovation and Research',
];

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('About GRC'),
backgroundColor: Colors.teal,
),
body: SingleChildScrollView(
child: Column(
children: [
// Image slider
Container(
height: 200,
child: PageView.builder(
itemCount: aboutImages.length,
itemBuilder: (context, index) {
return Image.network(
aboutImages[index],
fit: BoxFit.cover,
);
},
),
),
SizedBox(height: 20),
Padding(
padding: EdgeInsets.symmetric(horizontal: 16),
child: Text(
'About Global Reciprocal College',
style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.teal),
),
),
SizedBox(height: 10),
Padding(
padding: EdgeInsets.symmetric(horizontal: 16),
child: Text(
'Global Reciprocal College (GRC) is dedicated to providing quality education with a global perspective. '
'We focus on nurturing students to become innovative, ethical, and competent leaders for the future.',
style: TextStyle(fontSize: 16, color: Colors.grey[800]),
),
),
SizedBox(height: 20),
Padding(
padding: EdgeInsets.symmetric(horizontal: 16),
child: Text(
'Our Core Values:',
style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.teal),
),
),
SizedBox(height: 10),
...values.map((value) => ListTile(
leading: Icon(Icons.star, color: Colors.orangeAccent),
title: Text(value, style: TextStyle(fontSize: 16)),
)),
SizedBox(height: 20),
Center(
child: ElevatedButton(
onPressed: () => Navigator.pop(context),
style: ElevatedButton.styleFrom(
backgroundColor: Colors.orangeAccent,
padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
),
child: Text('Back to Home', style: TextStyle(fontSize: 16)),
),
),
SizedBox(height: 20),
],
),
),
);
}
}
