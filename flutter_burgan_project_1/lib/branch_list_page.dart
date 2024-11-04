import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Branch {
  final String name;
  final String imgPath;

  Branch({required this.name, required this.imgPath});
}

class BranchListPage extends StatelessWidget {
  final List<Branch> branches = [
    Branch(name: 'Bhawally', imgPath: 'assets/images/Bhawally.jpg'),
    Branch(name: 'Bfarwaniya', imgPath: 'assets/images/Bfarwaniya.jpg'),
    Branch(name: 'Bavenues', imgPath: 'assets/images/Bavenues.jpg'),
    Branch(name: 'Bsalmiya', imgPath: 'assets/images/Bsalmiya.jpg'),
    Branch(name: 'Bjabriya', imgPath: 'assets/images/Bjabriya.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Branches'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: branches.length,
        itemBuilder: (context, index) {
          final branch = branches[index];
          return GestureDetector(
            onTap: () {
              // Navigate to Branch Detail Page with branch name as parameter
              context.go('/branches/${branch.name}');
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    branch.imgPath,
                    width: double.infinity,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      branch.name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
