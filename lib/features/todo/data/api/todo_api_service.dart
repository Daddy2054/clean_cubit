// ignore_for_file: public_member_api_docs, sort_constructors_first
//import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:todo_app/core/mixin/uri_mixin.dart';
import 'package:todo_app/features/todo/data/api/itodo_api_service.dart';
class TodoApiService with UriMixin implements IToDoApiService {
  final http.Client client;
  TodoApiService(
    this.client,
  );
  @override
  Future<http.Response> addToDo(Map<String, dynamic> body) async {
    try {
      final url = getUri('/api/v1/todo/addToDo');

      return await http.post(url, body: body);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<http.Response> deleteToDo(Map<String, dynamic> queries) async {
    try {
      final url = getUri('/api/v1/todo/deleteToDo', null, queries);

      return await http.delete(url);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<http.Response> getToDos(int userId) async {
    try {
      final url = getUri('/api/v1/todo/getToDos/$userId');

      return await http.get(
        url,
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<http.Response> updateToDo(Map<String, dynamic> queries) async {
    try {
      final url = getUri(
        '/api/v1/todo/updateToDo',
        null,
        queries,
      );

      return await http.put(
        url,
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<http.Response> getToDo(int id) async {
    try {
      final url = getUri('/api/v1/todo/getToDo/$id');

      return await http.get(
        url,
      );
    } catch (e) {
      rethrow;
    }
  }
   @override
  Future<http.Response> getToDoList(Map<String, dynamic> queries) async {

    try {
      final url = getUri(
        '/api/v1/todo/getToDoList',
        null,
        queries
      );

      return await http.get(url);

    } catch (e) {
      rethrow;
    }
  }
}
