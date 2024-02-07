
import 'package:pety/features/login/data/models/login_request_body.dart';
import 'package:pety/features/login/data/models/login_response.dart';
import 'package:pety/shared/network/remote/api_result.dart';
import 'package:pety/shared/network/remote/api_service.dart';

class LoginRepository {
  final ApiService apiService ;

  LoginRepository(this.apiService);

  Future<ApiResult<LoginResponse>> login(LoginRequestBody loginRequestBody) async{
    try{
      final response = await apiService.login(loginRequestBody);
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(error.toString());
    }
  }

}