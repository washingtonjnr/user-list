import 'package:dio/dio.dart';

class DioClient {
  final Dio _dio;

  DioClient() : _dio = Dio() {
    _initializeDio();
  }

  void _initializeDio() {
    _dio.options.baseUrl = 'https://randomuser.me/api';
    _dio.options.connectTimeout = const Duration(seconds: 5);
    _dio.options.receiveTimeout = const Duration(seconds: 3);

    _dio.interceptors.add(ApiInterceptors());
  }

  Future<Response> get(String path, {Map<String, dynamic>? queryParameters}) async {
    return await _dio.get(path, queryParameters: queryParameters);
  }

  Future<Response> post(String path, {dynamic data}) async {
    return await _dio.post(path, data: data);
  }
}
class ApiInterceptors extends InterceptorsWrapper {
  @override
  Future<dynamic> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    try {
      options.headers.addAll({
        'Content-Type': 'application/json; charset=UTF-8',
      });
      return handler.next(options);
    } catch (e) {
      return handler.reject(DioException(requestOptions: RequestOptions()));
    }
  }

  @override
  onError(DioException err, ErrorInterceptorHandler handler) {
    return handler.next(err);
  }

  @override
  onResponse(Response response, ResponseInterceptorHandler handler) {
    return handler.next(response);
  }
}