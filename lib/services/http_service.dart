import 'package:dio/dio.dart';

class HTTPService{
  static final HTTPService _singleton = HTTPService._internal();

  // final HTTPService _httpService = HTTPService();

  factory HTTPService(){
    return _singleton;
  }

  final _dio = Dio();

  HTTPService._internal(){
    setup();
  }

  Future<void>setup({String? bearerToken})async{

  }

  Future <Response?>get(String path) async{
    try {
      final  responce = await _dio.get(path);
      return responce;
    } catch (e) {
      print(e);
    }
    return null;
  }
}