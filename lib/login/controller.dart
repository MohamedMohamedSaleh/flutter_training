import 'package:dio/dio.dart';

class LoginController {
  bool isTrue = false;
  Future<String> loginUser({String? phone, String? password}) async {
    try {
      await Dio().post(
        "https://thimar.amr.aait-d.com/api/login",
        data: {
          "phone": phone,
          "password": password,
          "type": "android",
          "device_token": "test",
          "user_type": "client",
        },
      );
      return "Login Successfull";
    } on DioException catch (ex) {
      print(ex.response!.data["message"]);
      return ex.response!.data["message"];
    }
  }
}
