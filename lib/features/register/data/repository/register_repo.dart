
import 'package:pety/features/register/data/models/register_request_body.dart';
import 'package:pety/features/register/data/models/register_response.dart';
import 'package:pety/shared/network/remote/api_result.dart';
import 'package:pety/shared/network/remote/api_service.dart';
import 'package:pety/shared/network/remote/error_handler.dart';

class RegisterRepository {

  final ApiService apiService;

  RegisterRepository(this.apiService);

  Future<ApiResult<RegisterResponse>> register(RegisterRequestBody registerRequestBody) async{
    try{
      final response = await apiService.register(registerRequestBody);
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }

  }
}