import 'package:http/http.dart' as http;

abstract class IToDoApiService {
  Future<http.Response> getToDos(int id);
  Future<http.Response> getToDo(int id);
  Future<http.Response> addToDo(Map<String, dynamic> body);
  Future<http.Response> updateToDo(Map<String, dynamic> queries);
  Future<http.Response> deleteToDo(Map<String, dynamic> queries);
}
