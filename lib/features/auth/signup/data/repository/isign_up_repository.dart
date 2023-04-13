import 'package:todo_app/features/auth/signup/data/dto/sign_up_response.dart';

abstract class ISignUpRepository {
  Future<SignUpResponse> signup(Map<String, dynamic> body);
}
