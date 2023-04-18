// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:http/http.dart' as http;
import 'package:http/src/response.dart';

import 'package:todo_app/core/mixin/uri_mixin.dart';
import 'package:todo_app/features/auth/login/data/api/ilogin_api_service.dart';

class LoginApiService with UriMixin implements ILoginApiService {
  final http.Client client;
  LoginApiService(
    this.client,
  );

  @override
  Future<Response> login(Map<String, dynamic> body) async {
    try {
      final url = getUri('/api/v1/login');
      return await client.post(url, body: body);
    } catch (e) {
      rethrow;
    }
  }
}
