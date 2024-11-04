import 'package:flutter/material.dart';

class BranchDetailPage extends StatelessWidget {
  final String branchName;

  BranchDetailPage({required this.branchName});

  @override
  Widget build(BuildContext context) {
    // Dummy data for branch details with corresponding images
    final branchDetails = {
      'Bhawally': {
        'location': 'Address of Bhawally Branch',
        'openingHours': '9 AM - 5 PM',
        'contact': '+965 1234 5678',
        'services': 'Personal Banking, Loans, Investment',
        'imagePath': 'assets/images/Bhawally.jpg',
      },
      'Bfarwaniya': {
        'location': 'Address of Farwaniya Branch',
        'openingHours': '9 AM - 5 PM',
        'contact': '+965 2345 6789',
        'services': 'Personal Banking, Investment',
        'imagePath': 'assets/images/Bfarwaniya.jpg',
      },
      'Bavenues': {
        'location': 'Address of Avenues Branch',
        'openingHours': '9 AM - 5 PM',
        'contact': '+965 3456 7890',
        'services': 'Loans, Investment',
        'imagePath': 'assets/images/Bavenues.jpg',
      },
      'Bsalmiya': {
        'location': 'Address of Salmiya Branch',
        'openingHours': '9 AM - 5 PM',
        'contact': '+965 4567 8901',
        'services': 'Personal Banking, Loans',
        'imagePath': 'assets/images/Bsalmiya.jpg',
      },
      'Bjabriya': {
        'location': 'Address of Jabriya Branch',
        'openingHours': '9 AM - 5 PM',
        'contact': '+965 5678 9012',
        'services': 'Loans, Investment',
        'imagePath': 'assets/images/Bjabriya.jpg',
      },
    };

    final details = branchDetails[branchName];

    // Check if details exist
    if (details == null) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Branch Not Found'),
        ),
        body: Center(
          child: Text('The requested branch does not exist.'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(branchName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display the branch image
            Image.asset(
              details['imagePath']!,
              height: 150,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
