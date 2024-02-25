import 'package:freezed_annotation/freezed_annotation.dart';
part 'search_vet_states.freezed.dart';

@Freezed()
class SearchVetStates<T> with _$SearchVetStates<T> {
  const factory SearchVetStates.initial() = _Initial;
  const factory SearchVetStates.loading() = Loading;
  const factory SearchVetStates.success(T data) = Success<T>;
  const factory SearchVetStates.error({required String error}) = Error;
}
