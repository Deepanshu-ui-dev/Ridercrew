import 'package:dio/dio.dart';

class AuthApi {
  final Dio dio;

  AuthApi(this.dio);

  Future<Map<String, dynamic>> register({
    required String name,
    required String email,
    required String password,
  }) async {
    final response = await dio.post(
      '/auth/register',
      data: {'name': name, 'email': email, 'password': password},
    );
    return response.data;
  }


  Future<Map<String, dynamic>> login({
    required String email,
    required String password,
  }) async {
    final response = await dio.post(
      '/auth/singup',
      data: {'email': email, 'password': password},
    );
    return response.data;
  } 



}
