import 'package:example_bloc/Repository/repository.dart';
import 'package:example_bloc/bloc/app_event.dart';
import 'package:example_bloc/bloc/app_state.dart';
import 'package:example_bloc/bloc/blocs.dart';
import 'package:example_bloc/models/article.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:developer' as dev;

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Repository repo=RepositoryProvider.of<Repository>(context);
    return BlocProvider(create: (context)=>ArticleBloc(repo)..add(LoadArticleEvent())
    ,
    child: Scaffold(body: 
      BlocBuilder<ArticleBloc,ArticleState>(builder: (context, state) {
      
      if(state is ArticleLoadingState){
        dev.log("ArticleLoadingState");
        return const Center(child: CircularProgressIndicator()) ;
      }
      if(state is ArticleLoadedState){
        dev.log("ArticleLoadedState");
        List<Article> articles =  state.articles;
        return ListView.builder(
          itemCount: articles.length,
          itemBuilder: (context, index) {
          return Padding(padding: const EdgeInsets.all(24),child: Text(articles[index].title!),);
        },
        );
      }
      if(state is ArticleErrorState)
      {
        dev.log("ArticleErrorState");
         return Center(child: Text(state.errorMessage));
      }
      return const Center(child: Text("No Data"));
    },),
    )
    );
  }
}