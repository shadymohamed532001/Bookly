import 'package:bloc/bloc.dart';
import 'package:bookly/Features/Home/domain/entites/bookEntite.dart';
import 'package:bookly/Features/Home/domain/useCases/featchNewsBookUseCase.dart';
import 'package:meta/meta.dart';

part 'news_books_state.dart';

class NewsBooksCubit extends Cubit<NewsBooksState> {
  NewsBooksCubit(this.featchNewsBooksUseCase) : super(NewsBooksInitial());
  final FeatchNewsBooksUseCase featchNewsBooksUseCase;

  Future<void> FeatchNewsBooks() async {
    emit(NewsBooksLoading());
    var result = await featchNewsBooksUseCase.call();

    result.fold((Failuer) {
      emit(NewsBooksFailuers(
        error: Failuer.massage,
      ));
    }, (books) {
      emit(NewsBooksSucess(NewsBooks: books));
    });
  }
}
