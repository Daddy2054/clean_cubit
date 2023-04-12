import 'package:http/src/response.dart';
import 'package:todo_app/core/mixin/uri_mixin.dart';
import 'package:http/http.dart' as http;

import 'isign_up_api_service.dart';

class SignUpApiService with UriMixin implements ISignUpApiService {
  final http.Client client;

  SignUpApiService(this.client);

  @override
  Future<Response> signUp(Map<String, dynamic> body) async {
    try {
      final url = getUri('/api/v1/register');
      return await client.post(url, body: body);
    } catch (e) {
      rethrow;
    }
  }
}
