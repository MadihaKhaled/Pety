import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'search_vet_state.dart';

class SearchVetCubit extends Cubit<SearchVetState> {
  SearchVetCubit() : super(SearchVetInitial());
}
