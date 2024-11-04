import 'package:flutter/material.dart';
import 'package:flutter_burgan_project_1/home_page.dart';
import 'package:go_router/go_router.dart';
import 'branch_list_page.dart';
import 'branch_detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GoRouter _router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => HomePage(),
        ),
        GoRoute(
          path: '/branches',
          builder: (context, state) => BranchListPage(),
        ),
        GoRoute(
          path: '/branches/:branchName',
          builder: (context, state) {
            final branchName = state.pathParameters['branchName']!;
            return BranchDetailPage(branchName: branchName);
          },
        ),
      ],
    );

    return MaterialApp.router(
      routerDelegate: _router.routerDelegate,
      routeInformationParser: _router.routeInformationParser,
      title: 'Burgan Bank',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
