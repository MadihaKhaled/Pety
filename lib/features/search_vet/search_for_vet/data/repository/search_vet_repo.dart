
import 'package:pety/features/search_vet/search_for_vet/data/models/search_vets_response.dart';
import 'package:pety/shared/network/remote/api_result.dart';
import 'package:pety/shared/network/remote/api_service.dart';
import 'package:pety/shared/network/remote/error_handler.dart';

class SearchVetRepository{
  final ApiService _apiService;
  SearchVetRepository(
     this._apiService,
  );

  Future<ApiResult<SearchVetsResponse>> getVets({
    required String role,
    required String sort,
    required int minPrice,
    required int maxPrice,
    required String availability,
    required int page,
    String? petyName,
    String? offer,
    String? animals,
  }) async{
    try{
      final response = await _apiService.searchVets(
        role: role,
        sort: sort,
        minPrice: minPrice,
        maxPrice: maxPrice,
        availability: availability,
        page: page,
        petyName: petyName,
        offer: offer,
        animals: animals,
        limit: 15,
      );
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

}