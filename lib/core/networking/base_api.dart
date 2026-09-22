import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class Api {
  final String _baseUrl = 'https://api.thecatapi.com/v1/';

  final Map<String, String> headers = {
    'x-api-key':
        'live_xTs2zEGW7hGMsrwcLX47k3MbWi03f3AweankZnQuFhnjleBs4CJ6glg7weCkdnNP',
    'Content-Type': 'application/json',
  };

  Map<String, dynamic> queryParameters({required int page}) {
    return {
      'size': 'med',
      'mime_types': 'jpg',
      'format': 'json',
      'has_breeds': true,
      'order': 'RANDOM',
      'page': page,
      'limit': 10,
    };
  }

  final Dio dio = Dio();

  Api() {
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

  Future<dynamic> get({required String path, required int page}) async {
    final Response response = await dio.get(
      '$_baseUrl$path',
      options: Options(headers: headers),
      queryParameters: queryParameters(page: page),
    );

    return response.data;
  }
}
