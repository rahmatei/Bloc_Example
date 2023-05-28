import 'package:equatable/equatable.dart';
import 'package:example_bloc/models/article.dart';

abstract class ArticleState extends Equatable {
  const ArticleState();
}

class ArticleLoadingState extends ArticleState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class ArticleLoadedState extends ArticleState {
  final List<Article> articles;

  const ArticleLoadedState(this.articles);

  @override
  // TODO: implement props
  List<Object?> get props => [articles];
}

class ArticleErrorState extends ArticleState {
  final String errorMessage;
  const ArticleErrorState(this.errorMessage);

  @override
  // TODO: implement props
  List<Object?> get props => [errorMessage];
}
