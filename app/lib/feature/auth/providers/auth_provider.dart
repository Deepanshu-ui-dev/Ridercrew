import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/api_client.dart';
import '../../../core/storage/token_storage.dart';
import '../data/auth_api.dart';


final ApiClientProvider=Provider<ApiClient>((ref){
  return ApiClient();
})

final authApiProvider=Provider<AuthApi>((ref){
  return AuthApi(ref.read(ApiClientProvider).dio);
})

final tokenStorageProvider=Provider<TokenStorage>((ref){
  return TokenStorage();
})

class AuthState{
  final bool isLoading;
  final String? error;
  final bool isAuthenticated;


  const AuthState({
    this.isLoading=false,
    this.error,
    this.isAuthenticated=false,
  });


  
}