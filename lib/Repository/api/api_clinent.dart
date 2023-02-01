import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart';

import '../../main.dart';
import 'api_exception.dart';


class ApiClient {


  String token = "Bearer  eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJjbGRsYmRxbWgwMGVwenJzNm1zcDVzdHpqIiwiZW1haWwiOiJzZXZtcGlvb29AZ21haWwuY29tdHljIiwiaWF0IjoxNjc1MjM0NTIyLCJleHAiOjE2NzU4MzkzMjJ9.CbmCi3QqAAuo4hm8qELJ0CdBo8mR7IrFZfwl5xMAb-s";

  Future<Response> invokeAPI(String path, String method, Object? body) async {
    Map<String, String> headerParams = {
    };
    Response response;

    String url = basePath + path;
    print(url);

    final nullableHeaderParams = (headerParams.isEmpty) ? null : headerParams;

    switch (method) {
      case "POST":
        response = await post(Uri.parse(url), headers: {
          'content-Type': 'application/x-www-form-urlencoded',
          'Authorization': token
        }, body: body);
        break;
      case "PUT":
        response = await put(
            Uri.parse(url), headers: {'content-Type': 'application/json',},
            body: body);
        break;
      case "DELETE":
        response = await delete(Uri.parse(url), headers: nullableHeaderParams);
        break;
      case "POST_":
        response = await post(Uri.parse(url), headers: {}, body: body,);
        break;
      case "GET_":
        response = await get(Uri.parse(url), headers: { 'Accept': 'application/json','Content-Type': 'application/json','Authorization': token,},
        );
        break;
      default:
        response = await get(Uri.parse(url), headers: {


        });
    }

    print('status of $path =>' + (response.statusCode).toString());
    print(response.body);
    if (response.statusCode >= 400) {
      log(path +
          ' : ' +
          response.statusCode.toString() +
          ' : ' +
          response.body);

      throw ApiException(
          message: _decodeBodyBytes(response), statusCode: response.statusCode);
    }
    return response;
  }

  String _decodeBodyBytes(Response response) {
    var contentType = response.headers['content-type'];
    if (contentType != null && contentType.contains("application/json")) {
      return jsonDecode(response.body)['message'];
    } else {
      return response.body;
    }
  }
}