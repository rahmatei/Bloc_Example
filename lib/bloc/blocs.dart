import 'package:bloc/bloc.dart';
import 'package:example_bloc/Repository/repository.dart';
import 'package:example_bloc/bloc/app_event.dart';
import 'package:example_bloc/bloc/app_state.dart';

class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {
  late final Repository _repository;
  ArticleBloc(this._repository) : super(ArticleLoadingState()) {
    on<LoadArticleEvent>((event, emit) async {
        emit(ArticleLoadingState());
        try {
          final articles = await _repository.getArticles();
          emit(ArticleLoadedState(articles));
        } catch (e) {
          emit( ArticleErrorState(e.toString()));
        }
      },
    );
  }
}
