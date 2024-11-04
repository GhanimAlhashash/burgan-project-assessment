import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Burgan Bank'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
                'assets/628_burgan_bank_logo.jpg'), // Update this with your logo's path
            SizedBox(height: 20),
            Text(
              'Your trusted banking partner.',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.go('/branches');
              },
              child: Text('Explore Branches'),
            ),
          ],
        ),
      ),
    );
  }
}
