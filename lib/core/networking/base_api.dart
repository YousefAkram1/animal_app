import 'package:animal_app/core/errors/exception.dart';
import 'package:animal_app/core/errors/model/error_model.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiBase {
  final String _baseUrl = 'https://api.thecatapi.com/v1/';

  final Map<String, String> headers = {
    'x-api-key':
        'live_xTs2zEGW7hGMsrwcLX47k3MbWi03f3AweankZnQuFhnjleBs4CJ6glg7weCkdnNP',
    'Content-Type': 'application/json',
  };

  final Dio dio = Dio();

  ApiBase() {
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
        compact: true,
      ),
    );
  }

  Future<dynamic> get({
    required String path,
    Map<String, dynamic>? queryParameters,
  }) async {
    dio.options.headers = headers;
    final response = await dio.get(
      '$_baseUrl$path',
      queryParameters: queryParameters,
    );

    return returnResponse(response).data;
  }

  Future<dynamic> post({
    required String path,
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    dio.options.headers = headers;
    final response = await dio.post(
      '$_baseUrl$path',
      data: data,
      queryParameters: queryParameters,
    );

    return returnResponse(response).data;
  }

  Response returnResponse(Response? response) {
    if (response == null) {
      throw ErrorModel(message: "There is no data");
    }

    switch (response.statusCode) {
      case 200:
      case 201:
        return response;
      case 400:
        throw ServerException(
          message: response.data['message'],
          errorMap: response.data["errors"],
        );
      case 422:
        throw ServerException(
          message: response.data['message'],
          errorMap: response.data["errors"],
        );
      case 401:
        throw ServerException(message: response.data['message']);
      case 500:
        throw ServerException(message: "Server Error");
      default:
        throw ServerException(message: "We will fix it soon");
    }
  }
}
