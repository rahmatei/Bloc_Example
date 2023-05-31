import 'package:equatable/equatable.dart';
import 'package:example_bloc/models/article.dart';

abstract class ArticleState extends Equatable {
  const ArticleState();
}

class ArticleLoadingState extends ArticleState {
  @override
  List<Object?> get props => [];
}

class ArticleLoadedState extends ArticleState {
  final List<Article> articles;

  const ArticleLoadedState(this.articles);

  @override
  List<Object?> get props => [articles];
}

class ArticleErrorState extends ArticleState {
  final String errorMessage;
  const ArticleErrorState(this.errorMessage);

  @override
  List<Object?> get props => [errorMessage];
}
