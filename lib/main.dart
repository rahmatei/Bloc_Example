import 'package:example_bloc/Repository/repository.dart';
import 'package:example_bloc/article_screen.dart';
import 'package:example_bloc/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: 
    RepositoryProvider(create: (context)=>Repository(),
    child: const ArticleScreen(),
    )
    );
  }
}
