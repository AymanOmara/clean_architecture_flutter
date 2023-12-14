import 'package:dio/dio.dart';
import 'package:domain/network_exception/network_exception.dart';
import 'package:domain/result.dart';
import 'package:domain/network_exception/json_parsing_exception.dart';
import 'package:domain/network_exception/no_connection.dart';

import 'decodable.dart';
import 'i_remote_target.dart';

class BaseApi {

  final String baseUrl = "https://www.themealdb.com/api/json/v1/1";
  final Dio _dio = Dio();

  Future<Result<T, NetworkException>> fetchData<T>(ITargetType targetType, Decodable data,) async {
    try {
      try {
        var response = await _dio.fetch(await _createRequestOptions(targetType));
        return Success(data.fromJson(response.data));
      } catch (error) {
        print(error);
        return Failure(JsonParsingException());
      }
    } on DioException catch (e) {
      print(e);
      return Failure(NoConnection());
    }
  }

  Future<RequestOptions> _createRequestOptions(ITargetType targetType) async{
    targetType.headers = targetType.headers;
    targetType.headers.addAll(await _headers());
    return RequestOptions(
      method: targetType.method.value,
      headers: targetType.headers,
      path: targetType.path!,
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      validateStatus: (code) => true,
      data: targetType.requestParameters,
    );
  }

  Future<Map<String, dynamic>> _headers() async{
    return {};
  }
}