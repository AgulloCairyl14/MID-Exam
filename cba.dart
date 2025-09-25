import 'package:flutter/material.dart';

class AboutPageCBA extends StatelessWidget {
const AboutPageCBA({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text('About CBA'),
backgroundColor: Colors.orangeAccent, // CBA color theme
),
body: SingleChildScrollView(
child: Container(
padding: const EdgeInsets.all(20),
color: Colors.grey[50],
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
// Header Image
Container(
width: double.infinity,
height: 200,
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(20),
image: const DecorationImage(
image: NetworkImage(
'https://your-image-link.com/cba-building.jpg'),
fit: BoxFit.cover,
),
),
),
const SizedBox(height: 20),

// College Name
const Text(
'College of Business Administration',
style: TextStyle(
fontSize: 28,
fontWeight: FontWeight.bold,
color: Colors.orangeAccent,
),
),
const SizedBox(height: 10),

// About Description
const Text(
'The College of Business Administration (CBA) at Global Reciprocal College '
'focuses on developing future leaders in business through practical learning, '
'entrepreneurship programs, and industry partnerships. We aim to equip our students '
'with both knowledge and real-world skills.',
style: TextStyle(
fontSize: 16,
height: 1.5,
color: Colors.black87,
),
),
const SizedBox(height: 20),

// Mission Section
Container(
padding: const EdgeInsets.all(15),
decoration: BoxDecoration(
color: Colors.orange[50],
borderRadius: BorderRadius.circular(15),
),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: const [
Text(
'Our Mission',
style: TextStyle(
fontSize: 20,
fontWeight: FontWeight.bold,
color: Colors.orangeAccent,
),
),
SizedBox(height: 8),
Text(
'To produce competent business professionals with strong ethical values, '
'entrepreneurial mindset, and leadership skills that contribute to economic growth.',
style: TextStyle(
fontSize: 15,
color: Colors.black87,
),
),
],
),
),
const SizedBox(height: 20),

// Vision Section
Container(
padding: const EdgeInsets.all(15),
decoration: BoxDecoration(
color: Colors.orange[50],
borderRadius: BorderRadius.circular(15),
),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: const [
Text(
'Our Vision',
style: TextStyle(
fontSize: 20,
fontWeight: FontWeight.bold,
color: Colors.orangeAccent,
),
),
SizedBox(height: 8),
Text(
'To be a leading business school recognized for excellence in education, '
'research, and community engagement in the field of business administration.',
style: TextStyle(
fontSize: 15,
color: Colors.black87,
),
),
],
),
),
const SizedBox(height: 20),
],
),
),
),
);
}
}
