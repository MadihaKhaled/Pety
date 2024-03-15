
import 'package:dio/dio.dart';
import 'package:pety/features/login/data/models/login_request_body.dart';
import 'package:pety/features/login/data/models/login_response.dart';
import 'package:pety/features/register/data/models/register_request_body.dart';
import 'package:pety/features/register/data/models/register_response.dart';
import 'package:pety/features/search_vet/book_vet_screen/data/models/book_vet_body.dart';
import 'package:pety/features/search_vet/book_vet_screen/data/models/book_vet_response.dart';
import 'package:pety/features/search_vet/data/models/search_vets_response.dart';
import 'package:pety/shared/network/remote/api_constants.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
      @Body() LoginRequestBody loginRequestBody
  );

  @POST(ApiConstants.register)
  Future<RegisterResponse> register(
      @Body() RegisterRequestBody registerRequestBody
  );

  @GET(ApiConstants.searchVet)
  Future<SearchVetsResponse> searchVets({
      @Query("role") required String role,
      @Query("page") required int page,
      @Query("sort") required String sort,
      @Query("minPrice") required int minPrice,
      @Query("maxPrice") required int maxPrice,
      @Query("availability") required String availability,
      @Query("petyName") String? petyName,
      @Query("offer") String? offer,
      @Query("animals") String? animals,
      @Query("limit") int? limit,
  });

  @POST(ApiConstants.bookVet)
  Future<BookVetResponse> bookVet(
    @Body() BookVetBody bookVetBody,
    @Header('Authorization') String token,
  );


}