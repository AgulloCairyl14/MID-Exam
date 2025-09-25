import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
const AboutPage({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text('About GRC'),
backgroundColor: Colors.deepPurple, // Primary color theme
),
body: SingleChildScrollView(
child: Container(
padding: const EdgeInsets.all(20),
color: Colors.grey[100], // Background color
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
'https://grc.edu.ph/college-of-computer-studies/#'),
fit: BoxFit.cover,
),
),
),
const SizedBox(height: 20),

// College Name
const Text(
'Global Reciprocal College',
style: TextStyle(
fontSize: 28,
fontWeight: FontWeight.bold,
color: Colors.deepPurple,
),
),
const SizedBox(height: 10),

// About Description
const Text(
'Global Reciprocal College (GRC) is a premier institution '
'dedicated to fostering academic excellence and global competence. '
'Our mission is to provide students with world-class education, '
'promoting innovation, leadership, and a strong sense of community.',
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
color: Colors.deepPurple[50],
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
color: Colors.deepPurple,
),
),
SizedBox(height: 8),
Text(
'To cultivate globally competitive graduates through a rigorous '
'curriculum, research opportunities, and community engagement.',
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
color: Colors.deepPurple[50],
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
color: Colors.deepPurple,
),
),
SizedBox(height: 8),
Text(
'To be recognized internationally as a leading institution that '
'shapes the future through quality education, research, and service.',
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